<?php

namespace App\Http\Requests;

use Illuminate\Contracts\Validation\Validator;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Exceptions\HttpResponseException;

class UserRequest extends FormRequest
{

    public function authorize(): bool
    {
        return true;
    }
    protected function failedValidation(Validator $validator)
    {
        throw new HttpResponseException(response()->json([
            'status' => false,
            'error' => $validator->errors(),
        ], 422));
    }


    public function rules(): array
    {
        $userid =  $this->route('user');
        return [
            'name' => 'required',
            'email' => 'required|email|unique:users,email,' . ($userid ? $userid->id : null),
            // 'password' => 'required|min:6',
            // 'passwordconfirm' => 'required|min:6'
        ];
    }

    public function messages(): array
    {
        return
            [
                'name.required' => 'Campo nome é obrigadtorio!',
                'email.required' => 'Campo email é obrigadtorio!',
                'email.email' => 'Necessario enviar um e-mail valido!',
                'email.unique' => 'O email ja esta cadastrado!',
                // 'password.required' => 'Campo senha é obrigatório!',
                // 'password.min' => 'Senha com o mínimo de :min caracteres!',
                // 'passwordconfirm.required' => 'Campo senha é obrigatório!',
                // 'passwordconfirm.min' => 'Senha com o mínimo de :min caracteres!',
            ];
    }
}

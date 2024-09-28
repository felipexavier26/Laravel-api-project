<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\UserRequest;
use App\Models\User;
use Exception;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\DB;

class UserController
{
    public function index(): JsonResponse
    {
        $users = User::orderBy('id', 'DESC')->paginate(15);
        return response()->json([
            'status' => true,
            'users' => $users,
        ], 200);
    }

    public function show(User $user): JsonResponse
    {
        return response()->json([
            'status' => true,
            'user' => $user,
        ], 200);
    }

    public function store(UserRequest $request): JsonResponse
    {
        DB::beginTransaction();

        try {
            $user =  User::create([
                'name' => $request->name,
                'email' => $request->email,
                'password' => $request->password,
                'passwordconfirm'=> $request->passwordconfirm
            ]);
            DB::commit();
            return response()->json([
                'status' => true,
                'user' => $user,
                'message' => 'Usuarios cadastrado com sucesso',
            ], 201);
        } catch (Exception $e) {
            DB::rollBack();
            return response()->json([
                'status' => false,
                'message' => 'Usuarios não cadastrado',
            ], 400);
        }
    }

    public function update(UserRequest $request, User $user): JsonResponse
    {
        DB::beginTransaction();

        try {
            $user->update([
                'name' => $request->name,
                'email' => $request->email
                // 'password' => $request->password
            ]);
            DB::commit();
            return response()->json([
                'status' => true,
                'user' => $user,
                'message' => 'Usuarios editado com sucesso',
            ], 200);
        } catch (Exception $e) {
            DB::rollBack();
            return response()->json([
                'status' => false,
                'message' => 'Usuarios não editado',
            ], 400);
        };

        return response()->json([
            'status' => true,
            'user' => $request,
            'message' => 'Usuarios editado com sucesso',
        ], 200);
    }

    public function destroy(User $user): JsonResponse
    {
        try {
            // Tente deletar o usuário
            $user->delete();

            return response()->json([
                'status' => true,
                'user' => $user,
                'message' => 'Usuário apagado com sucesso!',
            ], 200);
        } catch (\Exception $e) {  // Certifique-se de usar \Exception
            return response()->json([
                'status' => false,
                'message' => 'Usuário não foi apagado.',
            ], 400);
        }
    }
}

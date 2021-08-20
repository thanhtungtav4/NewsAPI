<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\AuthRequest;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Response;
use App\Models\User;
use Auth;
use Cookie;

class AuthController extends Controller
{
    public function register(AuthRequest $request)
    {
        $user = User::create([
            'name' => $request->input('name'),
            'email' => $request->input('email'),
            'password' => Hash::make($request->input('password')),
        ]);
        return response()->json(['success' =>  __('register.user.success')], 200);
    }

    public function login(Request $request)
    {
        if(!Auth::attempt($request->only('email', 'password'))){
            return response([
                'message' => __('invalid.credentials')
            ], 401);
        }
        $user = Auth::user();
        $token = $user->createToken('token')->plainTextToken;
        $cookie = cookie('jwt', $token, 60 * 48);  //1 day
        return response([
            'message' => __('user.login.success')
        ], 200)->withCookie($cookie);
    }

    public function logout()
    {
        $cookie = Cookie::forget('jwt');
        return response([
            'message' => __('user.logout.success')
        ], 200)->withCookie($cookie);
    }

    public function user()
    {
        $user = Auth::user('id', 'name', 'email');
        return $user;
    }

}

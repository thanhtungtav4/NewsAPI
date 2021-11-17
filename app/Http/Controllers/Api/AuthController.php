<?php
namespace App\Http\Controllers\Api;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\AuthRequest;
use App\Http\Requests\AuthLoginRequest;
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
            'username' => $request->input('username'),
            'password' => Hash::make($request->input('password')),
        ]);
        return response()->json(['success' =>  __('register.user.success')], 200);
    }

    public function login(AuthLoginRequest $request)
    {
        if(Auth::attempt($request->only('email', 'password'))){
            $user = Auth::user();
            $token = $user->createToken('token')->plainTextToken;
        //     $cookie = cookie('jwt', $token, 60 * 48);  //1 day
        //     return response([
        //         'message' => 'Login Success'
        //     ], 200)->withCookie($cookie);
        //    // return $token;
        return response()
            ->json([
                'success' => 'Đăng nhập thành công',
                'message' => 'Hi '.$user->name.', welcome to comback',
                'access_token' => $token, 
                'token_type' => 'Bearer', 
            ]);
        }
        else{
            return response([
                'message' => 'Email or Password incorrect'
            ], 401);
        }
        
       
    }

    public function logout(Request $request)
    {
        auth()->user()->tokens()->delete();
        return response([
            'message' => __('user.logout.success')
        ], 200);
    }

    public function user()
    {
        $user = Auth::user('id', 'name', 'email', 'username');
        return $user;
    }

}

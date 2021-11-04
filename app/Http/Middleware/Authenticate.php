<?php

namespace App\Http\Middleware;
use Closure;
use Illuminate\Auth\Middleware\Authenticate as Middleware;

class Authenticate extends Middleware
{
    /**
     * SPA app and all requests come only frontend 
     *
     * @param  \Illuminate\Http\Request  $request
     * @return string|null
     */

    // public function handle($request, Closure $next, ...$guards)
    // {
    //     if($jwt = $request->cookie('jwt') ){
    //         $request->headers->set('Authorization', 'Bearer ' .$jwt);
    //     }
    //     else{
    //         return response()->json(['error' => 'Unauthenticated.'], 401);   
    //     }
    //     $this->authenticate($request, $guards);

    //     return $next($request);
    // }
}

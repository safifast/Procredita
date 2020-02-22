<?php

namespace App\Http\Middleware;

use Illuminate\Auth\Middleware\Authenticate as Middleware;

class Authenticate extends Middleware
{
    /**
     * Get the path the user should be redirected to when they are not authenticated.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return string|null
     */
    protected function redirectTo($request)
    {
        // dd($request->user());
        // back end checking
        if (! $request->expectsJson() && preg_match('/(admin)/', $request->path())) {
            return url('/admin/login');
        }
        // front end checking
        if (! $request->expectsJson() && ! preg_match('/(admin)/', $request->path())) {
            return route('login');
        }
    }
}

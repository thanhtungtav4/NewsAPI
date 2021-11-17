<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Contracts\Validation\Validator; 
use Illuminate\Http\Exceptions\HttpResponseException;

class AuthRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name' => 'required|max:150',
            'email' => 'required|email|unique:users',
            'password' => 'required|min:6',
            'username' => 'required|unique:users',
        ];
    }
    /**
     * Customize message
     *
     * @return array
     */
    public function messages()
    {
        return [
            'name.required'    => __('name.required'),
            'email.required'         => __('email.required'),
            'email.email'         => __('email.email'),
            'email.unique'         => __('email.unique'),
            'username.required'         => __('Vui lòng nhập Username'),
            'username.unique'         => __('Username đã được sử dụng'),
            'password.required' => __('password.required'),
            'password.min' => __('password.min'),
        ];
    }

    /**
     *  Filters to be applied to the input.
     *
     * @return array
     */
    public function filters()
    {
        return [
            'name' => 'strip_tags|trim',
        ];
    }
    protected function failedValidation(Validator $validator) : void
    {
        throw new HttpResponseException(response()->json($validator->errors(), 422));
    }
}

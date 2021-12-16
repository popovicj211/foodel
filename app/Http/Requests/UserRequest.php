<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UserRequest extends FormRequest
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
            "username" => "required|unique:users,username|regex:/^[\w\-\@\+\?\!\.]{3,19}$/",
            "email" => "required|email|unique:users,email",
            "password"=> "required|regex:/^(?=.*[a-z])(?=.*[A-Z])(?=.*[\d]).{7,}$/",
            "address" => "required|regex:/^[A-Z][a-z]{4,30}(\s[A-za-z]{4,30})?(\s[a-z\d]{1,3})$/",
            "tel" => "required|regex:/^(\+381)(\s)6[0-69](\s)[0-9]{3}(\s)[0-9]{3,4}$/",
            "role" => "required"
        ];
    }

    public function messages()
    {
        return [
            "username.regex" => "Username is not valid",
            "username.required" => "Username is required",
            "email.unique" => "Email is exist",
            "email.required" => "Email is not valid",
            "password.regex" => "Password must have at least one uppercase letter, lowercase letter and digit, 7 characters long ",
            "password.required" => "Password is required",
            "address.regex" => "Address is not valid",
            "address.required" => "Address is required",
            "tel.regex" => "Phone is not valid",
            "tel.required" => "Phone number is required",
            "role.required" => "Role is required"
        ];
    }
}

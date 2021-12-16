<?php

namespace App\Services;

use App\Contacts\UserContract;
use App\DTO\UserDTO;
use App\Http\Requests\UserRequest;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class UserService implements UserContract
{


    public function getUsers(): array
    {

        $users =  User::with('role')->get();
        $usersArr = [];
       foreach ($users as $user)
        {
            $userDTO = new UserDTO();

            $userDTO->id = $user->id;
            $userDTO->username = $user->username;
            $userDTO->email = $user->email;
            $userDTO->address = $user->address;
            $userDTO->tel = $user->tel;
            $userDTO->role = array(
                "id" => $user->role->id,
                "name" => $user->role->name
            );

            $usersArr[] = $userDTO;
        }

       return array( 'data' => $usersArr );
       // return $users;
    }

    public function findUser(int $id): UserDTO
    {
        $user = User::with('role')->findOrFail($id);
        if($user != null) {
            $userDTO = new UserDTO();
            $userDTO->id = $user->id;
            $userDTO->name = $user->name;
            $userDTO->username = $user->username;
            $userDTO->email = $user->email;
            $userDTO->address = $user->address;
            $userDTO->tel = $user->tel;
            $userDTO->role = array(
                "id" => $user->role->id,
                "name" => $user->role->name
            );
            return $userDTO;
        }
    }


    public function addUser(UserRequest $request)
    {
        $username = $request->get('username');
        $email = $request->get('email');
        $password = $request->get('password');
        $address = $request->get('address');
        $tel = $request->get('tel');
        $role = $request->get('role');

        $user = User::create([
            'username' => $username,
            'email' => $email,
            'password' => Hash::make($password),
            'address' => $address,
             'tel' => $tel,
            'role_id' => $role,
            'email_verified_at' => Carbon::now()->toDateTime(),
            'verify_token' => md5(rand(100000,999999)),
            'created_at' => Carbon::now()->toDateTime()
        ]);

        $user->save();
    }

    public function modifyUser(Request $request, int $id)
    {
        $name = $request->get('name');
        $username = $request->get('username');
        $email = $request->get('email');
        $password = $request->get('password');
        $address = $request->get('address');
        $tel = $request->get('tel');
        $role = $request->get('role');

        $user = User::findOrFail($id);


        if (isset($password)) {
            $messages = [
                'name.required'    => 'Name is required',
                'name.regex'    => 'Name is not valid',
                'username.required'    => 'Username is required',
                'username.regex'    => 'Username is not valid',
                'email.required'    => 'Email is required',
                'email.email'    => 'Email is not valid',
                'password.regex'    => 'Password must have at least one uppercase letter, lowercase letter and digit, 7 characters long',
                'address.regex' => 'Address is not valid',
                'address.required' => 'Address is required',
                'tel.regex' => 'Phone is not valid',
                'tel.required' => 'Phone number is required',
                'role.required'    => 'Role is required',
            ];

            $validate = Validator::make($request->all(), [
                'username' => 'required|unique:users,username|regex:/^[\w\-\@\+\?\!\.]{3,19}$/',
            'email' => 'required|email|unique:users,email',
            'password'=> 'required|regex:/^(?=.*[a-z])(?=.*[A-Z])(?=.*[\d]).{7,}$/',
            'address' => 'required|regex:/^[A-Z][a-z]{4,30}(\s[A-za-z]{4,30})?(\s[a-z\d]{1,3})$/',
            'tel' => 'required|regex:/^(\+381)(\s)6[0-69](\s)[0-9]{3}(\s)[0-9]{3,4}$/',
            'role' => 'required'
            ] , $messages);
            if(!$validate->fails()) {
                $user->update([
                    'name' => $name,
                    'username' => $username,
                    'email' => $email,
                    'password' => Hash::make($password),
                    'address' => $address,
                    'tel' => $tel,
                    'role_id' => $role,
                    'updated_at' => Carbon::now()->toDateTime()
                ]);
            }else{
                return response()->json($validate->errors());
            }
        } else {
            $messages = [
                'name.required'    => 'Name is required',
                'name.regex'    => 'Name is not valid',
                'username.required'    => 'Username is required',
                'username.regex'    => 'Username is not valid',
                'email.required'    => 'Email is required',
                'email.email'    => 'Email is not valid',
                'address.regex' => 'Address is not valid',
                'address.required' => 'Address is required',
                'tel.regex' => 'Phone is not valid',
                'tel.required' => 'Phone number is required',
                'role.required'    => 'Role is required',
            ];
            $validate = Validator::make($request->all(), [
                'username' => 'required|unique:users,username|regex:/^[\w\-\@\+\?\!\.]{3,19}$/',
                'email' => 'required|email|unique:users,email',
                'address' => 'required|regex:/^[A-Z][a-z]{4,30}(\s[A-za-z]{4,30})?(\s[a-z\d]{1,3})$/',
                'tel' => 'required|regex:/^(\+381)(\s)6[0-69](\s)[0-9]{3}(\s)[0-9]{3,4}$/',
                'role' => 'required'
            ], $messages);
            if(!$validate->fails()) {
                $user->update([
                    'name' => $name,
                    'username' => $username,
                    'email' => $email,
                    'role_id' => $role,
                    'updated_at' => Carbon::now()->toDateTime()
                ]);
            }else{
                return response()->json($validate->errors());
            }
        }
    }

    public function deleteUser(int $id)
    {
        $user = User::findOrFail($id);

        if ($user != null ) {
            $user->delete();
        }
    }
}

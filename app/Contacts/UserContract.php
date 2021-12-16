<?php

namespace App\Contacts;

use App\DTO\UserDTO;
use App\Http\Requests\UserRequest;
use Illuminate\Http\Request;
interface UserContract
{

    public function getUsers():array;
    public function findUser(int $id): UserDTO;
    public  function addUser(UserRequest $request);
    public  function modifyUser(Request $request ,int $id);
    public function deleteUser(int $id);

}

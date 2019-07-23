@extends('layouts.app')

@section('content')
<div class="panel panel-default">
<div class=" panel-heading">
Users
</div>
<div class=" panel-body">

<table class="table table-hover">
    <thead>
        <th>
        Image 
        </th>
        
        <th>
        Name
        </th>
        
        <th>
        Permission
        </th>
        
        <th>
        Delete
        </th>

    </thead>
    <tbody>
    @if($users->count()>0)
    @foreach($users as $user)
        <tr>
        <td>
        <img src="{{ asset($user->profile->avatar) }}" alt="" width="60px" height="60px" style="border-radius:50%">
        </td>
        <td>
        {{$user->name}}
        </td>
        <td>
        @if($user->admin)
        <a href="/admin/user/notadmin/{{$user->id}}" class="btn btn-danger btn-sm">Remove Permission</a>

        @else
            <a href="/admin/user/admin/{{$user->id}}" class="btn btn-success btn-sm">Make Admin</a>

        @endif    
        </td>
        <td>
            @if(Auth::id()!==$user->id)
        <a href="/admin/user/delete/{{$user->id}}" class="btn btn-danger btn-sm">Delete</a></td>
        @endif    
    </tr>
    @endforeach
    @else
    <tr>
    <td colspan="5" class="text-center">
    No User Yet
    </td></tr>
    @endif
    </tbody>
</table>

@stop
</div>
</div>
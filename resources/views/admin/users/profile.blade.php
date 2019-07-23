@extends('layouts.app');
@section('content')
    @if(count($errors)>0)
        <ul class="list-group">
            @foreach($errors->all() as $error)
                <li class="list-group-item text-danger">{{$error}}</li>
            @endforeach
        </ul>
    @endif
<div class="panel panel-default">
<div class="panel panel-heading">
Edit Your Profile
</div>
<div class="panel panel-body">
    <form action="/admin/user/profile/update" method="post" enctype="multipart/form-data">
        {{csrf_field()}}
        <div class="form-group">
        <label for="tag">Name</label>
        <input  type="text" class="form-control" name="name" value="{{$user->name}}"  >         </div>
        <div class="form-group">
        <label for="tag">Email</label>
        <input type="email" class="form-control" name="email" value="{{$user->email}}" >
        </div>
        <div class="form-group">
        <label for="tag">New Password</label>
        <input type="password" class="form-control" name="new_password" id="name" disabled><button style="margin-top:5px;" id="nameEdit" onclick="edit(this)" type="button" class="btn btn-info"><i style="color:#fff;" class="fa fa-edit"></i></button>

        </div>
        <div class="form-group">
        <label for="tag">Avatar</label>
        <input type="file" class="form-control" name="avatar">
        </div>
        <div class="form-group">
        <label for="about">About</label>
        <textarea type="text" class="form-control" name="about" value="">{{$user->profile->about}}</textarea>
        </div>
        <div class="form-group">
        <label for="tag">Facebook Profile</label>
        <input type="text" class="form-control" name="facebook" value="{{$user->profile->facebook}}">
        </div>
        <div class="form-group">
        <label for="youtube">Youtube Profile</label>
        <input type="text" class="form-control" name="youtube" value="{{$user->profile->youtube}}">
        </div>
        <div class="text-center">
        <button class="btn btn-success" type="submit">Update Profile</button>
        </div>
        </div>

    </form>
</div>
</div>


<script>

function edit(e){


   $("#name").removeAttr("disabled");


}

</script>

@stop

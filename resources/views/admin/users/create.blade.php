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
<div class="panel-heading">
Create A New User
</div>
<div class="panel-body">
    <form action="/admin/user/store" method="post">
        {{csrf_field()}}
        <div class="form-group">
        <label for="tag">Name</label>
        <input type="text" class="form-control" name="name">
        </div>
        <div class="form-group">
        <label for="tag">Email</label>
        <input type="email" class="form-control" name="email">
        </div>
        <div class="text-center">
        <button class="btn btn-success" type="submit">Store User</button>
        </div>
        </div>

    </form>
</div>
</div>

@stop

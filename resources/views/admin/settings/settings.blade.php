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
Edit blog settings
</div>
<div class="panel-body">
    <form action="/admin/settings/update" method="post">
        {{csrf_field()}}
        <div class="form-group">
        <label for="tag">Site Name</label>
        <input type="text" class="form-control" name="site_name" value="{{$settings->site_name}}">
        </div>
        <div class="form-group">
        <label for="tag">Address</label>
        <input type="text" class="form-control" name="address" value="{{$settings->address}}">
        </div>
        <div class="form-group">
        <label for="tag">Contact Number</label>
        <input type="text" class="form-control" name="contact_number" value="{{$settings->contact_number}}">
        </div>
        <div class="form-group">
        <label for="tag">Contact Email</label>
        <input type="email" class="form-control" name="contact_email" value="{{$settings->contact_email}}">
        </div>
        <div class="text-center">
        <button class="btn btn-success" type="submit">Update site Settings</button>
        </div>
        </div>

    </form>
</div>
</div>

@stop

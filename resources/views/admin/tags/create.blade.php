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
Create A New Tag
</div>
<div class="panel-body">
    <form action="/admin/tag/store" method="post">
        {{csrf_field()}}
        <div class="form-group">
        <label for="tag">Tag</label>
        <input type="text" class="form-control" name="tag">
        </div>
        <div class="text-center">
        <button class="btn btn-success" type="submit">Store Tag</button>
        </div>
        </div>

    </form>
</div>
</div>

@stop

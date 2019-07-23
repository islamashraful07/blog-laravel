<style>

.navbar-nav{
    float:right!important;
}

.dropdown-toggle::after{
    content: none!important;
}
</style>
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
Create A New Post
</div>
<div class="panel-body">
    <form action="/admin/post/store" enctype="multipart/form-data" method="post">
        {{csrf_field()}}
        <div class="form-group">
        <label for="title">Title</label>
        <input type="text" class="form-control" name="title">
        </div>
        <div class="form-group">
        <label for="Featured">Featured Image</label>
        <input type="file" class="form-control" name="featured">
        </div>
        <div class="form-group">
        <label for="category">Select a Category</label>
        <select name="category_id" id="category" class="form-control">
        @foreach($categories as $category)
            <option value="{{ $category->id }}">{{ $category->name }}</option>
        @endforeach
        </select>
        </div>
        <div class="form-group">
            <label for="">Select Tags</label>
            @foreach($tags as $tag)
            <div class="checkbox">

                <label ><input type="checkbox" name="tags[]" value="{{$tag->id}}">{{$tag->tag}}</label>
            </div>
            @endforeach
        </div>
        <div class="form-group">
        <label for="content">Content</label>
        <textarea name="content" id="editor" cols="5" rows="5" class="form-control"></textarea>
        </div>
        <div class="form-group">
        <div class="text-center">
        <button class="btn btn-success" type="submit">Store Post</button>
        </div>
        </div>

    </form>
</div>
</div>

@stop
@section('styles')<!-- Include CSS for icons. -->
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote.css" rel="stylesheet">
@stop

@section('scripts')
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.js" defer></script>
 
<script>
    $(document).ready(function() {
        $('#editor').summernote();
    });
  </script>
    
@stop

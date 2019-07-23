@extends('layouts.app')

@section('content')

<table class="table table-hover">
    <thead>
        <th>
        Image 
        </th>
        
        <th>
        Title
        </th>
        
        
        <th>
        Restore
        </th>
        <th>
        Delete
        </th>

    </thead>
    <tbody>
    @if($posts->count()>0)
    @foreach($posts as $post)
        <tr>
            <td>
            <img src="
            {{ $post->featured }}" alt="" width="90px" height="50px">    
            </td>
            
            <td>
                {{ $post->title }}
            </td>
            
            <td>
            <a href="/admin/post/restore/{{$post->id}}" class="btn btn-sm btn-success">Restore</a>
            </td>
            
            <td>
            <a href="/admin/post/kill/{{$post->id}}" class="btn btn-sm btn-danger">Delete</a>
            </td>
        </tr>
    @endforeach
    @else
        <tr>
            <th colspan="5" class="text-center">No trash Post</th>
        </tr>

    @endif
    </tbody>
</table>

@stop
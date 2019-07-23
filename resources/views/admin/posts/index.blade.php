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
        Edit
        </th>
        
        <th>
        Trashs
        </th>

    </thead>
    <tbody>
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
            <a href="/admin/post/edit/{{$post->id}}" class="btn btn-sm btn-info">
            Edit
            </a>
            </td>
            <td>
            <a href="/admin/post/delete/{{$post->id}}" class="btn btn-sm btn-danger">Trash</a>
            </td>
        </tr>
    @endforeach
    </tbody>
</table>

@stop
@extends('layouts.app')

@section('content')

<table class="table table-hover">
    <thead>
        <th>
        Tag Name 
        </th>
        
        <th>
        Editing
        </th>
        
        <th>
        Deleting
        </th>

    </thead>
    <tbody>
    @foreach($tags as $tag)
        <tr>
            <td>
                {{ $tag->tag }}
            </td>
            <td>
            <a href="/admin/tag/edit/{{$tag->id}}" class="btn btn-info">
            Edit
            </a>
            </td>
            <td>
            <a href="/admin/tag/delete/{{$tag->id}}" class="btn btn-danger">x</a>
            </td>
        </tr>
    @endforeach
    </tbody>
</table>

@stop
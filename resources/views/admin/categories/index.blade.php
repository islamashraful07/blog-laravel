@extends('layouts.app')

@section('content')

<table class="table table-hover">
    <thead>
        <th>
        Category Name 
        </th>
        
        <th>
        Editing
        </th>
        
        <th>
        Deleting
        </th>

    </thead>
    <tbody>
    @foreach($category as $category)
        <tr>
            <td>
                {{ $category->name }}
            </td>
            <td>
            <a href="/admin/category/edit/{{$category->id}}" class="btn btn-info">
            Edit
            </a>
            </td>
            <td>
            <a href="/admin/category/delete/{{$category->id}}" class="btn btn-danger">x</a>
            </td>
        </tr>
    @endforeach
    </tbody>
</table>

@stop
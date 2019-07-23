@extends('layouts.app')

@section('content')
            <div class="card">
                <div class="card-header">Dashboard</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                    <div class="card text-white bg-success mb-3" style="width: 160px;float:left;margin-right:15px">
                      <div class="card-header text-center">POST</div>
                        <div class="card-body">
                          <h5 class="card-title text-center">{{$posts_count}}</h5>
                        </div>
                    </div>
                
                <div class="card text-white bg-danger mb-3" style="width: 160px;float:left;margin-right:15px">
                      <div class="card-header text-center">TRASHED POST</div>
                        <div class="card-body">
                          <h5 class="card-title text-center">{{$trashed_count}}</h5>
                        </div>
                    </div>
                <div class="card text-white bg-dark mb-3" style="width: 160px;float:left;margin-right:15px">
                      <div class="card-header text-center">USER</div>
                        <div class="card-body text-center">
                          <h5 class="card-title text-center">{{$users_count}}</h5>
                        </div>
                    </div>
                    
                <div class="card text-white bg-primary mb-3" style="width: 160px;">
                      <div class="card-header text-center">CATEGORY</div>
                        <div class="card-body">
                          <h5 class="card-title text-center">{{$categories_count}}</h5>
                        </div>
                    </div>
                </div>
            
        
                </div>
                
</div>
@endsection

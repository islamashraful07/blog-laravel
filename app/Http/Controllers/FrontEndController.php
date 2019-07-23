<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Settings;
use App\Category;
use App\Post;
use App\Tag;
Use DB;

class FrontEndController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       
        
    //    $query=DB::table('posts')
    //    ->select('category_id',(DB::raw('count(category_id) as total')))
       
    //    ->groupBy('category_id')
    //    ->pluck('category_id')
    //    ->get()
    //    ->first();
        $collection = Post::groupBy('category_id')
       ->selectRaw('count(*) as total, category_id')
       ->orderBy('total','desc')
       ->get()
       ->first();
       $collection2 = Post::groupBy('category_id')
       ->selectRaw('count(*) as total, category_id')
       ->orderBy('total','desc')
       ->skip(1)
       ->take(1)
       ->get()

       ->first();
       $collection3 = Post::groupBy('category_id')
       ->selectRaw('count(*) as total, category_id')
       ->orderBy('total','desc')
       ->skip(2)
       ->take(1)
       ->get()

       ->first();

       $maxPostsCategoryid=$collection->category_id;
       $id1=$collection->category_id;
       $max_posts=DB::table('posts')->where('category_id',$maxPostsCategoryid)->take(3)->get();
       
       $second_max_posts_Category_id=$collection2->category_id;
       $id2=$collection2->category_id;
       $second_max_posts=DB::table('posts')->where('category_id',$second_max_posts_Category_id)->take(3)->get();
       
       
       $third_max_posts_Category_id=$collection3->category_id;
       $id3=$collection3->category_id;
       $third_max_posts=DB::table('posts')->where('category_id',$third_max_posts_Category_id)->take(3)->get();
       
       //dd($second_max_posts);
       

        return view('welcome')
        ->with('site_details',Settings::first())
        ->with('categories',Category::take(5)->get())
        ->with('first_post',Post::orderBy('Created_at','desc')->first())
        ->with('second_post',Post::orderBy('Created_at','desc')->skip(1)->take(1)->get()->first())
        ->with('third_post',Post::orderBy('Created_at','desc')->skip(2)->take(1)->get()->first())

        ->with('max_category_posts',$max_posts)
        ->with('max_category_name',Category::find($id1))
        
        ->with('second_max_category_posts',$second_max_posts)
        ->with('second_max_category_name',Category::find($id2))

        ->with('third_max_category_posts',$third_max_posts)
        ->with('third_max_category_name',Category::find($id3));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
    public function singlePost($slug){
        $post=Post::where('slug',$slug)->first();
        $next_id=Post::where('id','>',$post->id)->min('id');
        $previous_id=Post::where('id','<',$post->id)->max('id');
        return view('single')->with('post',$post)
                            ->with('site_details',Settings::first())
                            ->with('categories',Category::take(5)->get())
                            
                            ->with('title',$post->title )
                            ->with('next',Post::find($next_id))
                            ->with('previous',Post::find($previous_id))
                            ->with('tags',Tag::All());
    }
    public function Category($id)
    {
        $category=Category::find($id);
        return view('category')->with('category',$category)
        ->with('title',$category->name )
        ->with('site_details',Settings::first())
        ->with('categories',Category::take(5)->get())
        ->with('tags',Tag::All());
    }
    public function tag($id)
    {
        $tag=Tag::find($id);
        return view('tag')->with('tag',$tag)
                          ->with('title',$tag->tag)
                          ->with('tags',Tag::All())
                          
                          ->with('site_details',Settings::first())
                          ->with('categories',Category::take(5)->get());

    }
}

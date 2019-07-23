<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
       $user=App\User::create([
            'name'=>'Ashraful',
            'email'=>'ashrafulaiubian@gmail.com',
            'password'=>bcrypt('password'),
            'admin'=>1
       ]); 
       App\Profile::create([ 
           'user_id'=>$user->id,
           'avatar'=>'uploads/avatars/1.jpg',
           'about'=>'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Maxime numquam culpa atque perferendis. Aperiam ducimus adipisci nihil? Et fugiat rerum explicabo nemo laboriosam corporis at omnis labore optio minus? Voluptates.',
            'facebook'=>'facebook.com',
            'youtube'=>'youtube.com'

       ]);
    }
}

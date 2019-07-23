<?php

use Illuminate\Database\Seeder;

class SettingsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \App\Settings::create([
            'site_name'=>"Seekersoft's Blog",
            'address'=>'Ashkona,Dhaka-1230',
            'contact_number'=>'01791360367',
            'contact_email'=>'ashraful@seizebug.com'

        ]);
    }
}

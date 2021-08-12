<?php

use App\Models\User;
namespace Database\Seeders;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            'name'     => 'Demo Admin',
            'email'    => 'admin@example.com',
            'password' => bcrypt('admin'),
        ]);
    }
}

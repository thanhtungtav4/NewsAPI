<?php

namespace App\Models;
use Carbon\Carbon;
use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Model;

class Crawler extends Model
{

    /*
    |--------------------------------------------------------------------------
    | GLOBAL VARIABLES
    |--------------------------------------------------------------------------
    */

    protected $table = 'articles';
    protected $primaryKey = 'id';
    public $timestamps = true;
    // protected $guarded = ['id'];
    protected $fillable = ['slug', 'user_id', 'title', 'content', 'image', 'status', 'category_id', 'featured', 'date', 'description','meta_index', 'meta_description', 'meta_image', 'meta_schema'];
    // protected $hidden = [];
    /**
     * Check slug isset
     * 
    */
    public function CheckIsset($slug){
        $Checkdata = Article::where('slug', $slug)->exists();
        return $Checkdata;
    }

    /**
     * Crawler Save Data
     * 
    */
    public function Store($data){
        //dd($data);
        $Checkisset = $this->CheckIsset($data['slug']);
        if($Checkisset === false){
            $mSave = Article::create([
                'title' => $data['title'],
                'slug' => $data['slug'],
                'content' => $data['content'],
                'description' => $data['description'],
                'image' => $data['featured_image'],
                'category_id' => $data['category_id'],
                'user_id' => $data['user_id'],
                'status' => $data['status'],
                'date' => $data['date'],
             ]);
            return $mSave;
        }
        if($Checkisset == true){
            return 'Bài viết Tồn Tại';
        }
       
    }
}

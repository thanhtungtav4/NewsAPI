<?php

namespace App\Models;

use Backpack\CRUD\app\Models\Traits\CrudTrait;
use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    use CrudTrait;

    /*
    |--------------------------------------------------------------------------
    | GLOBAL VARIABLES
    |--------------------------------------------------------------------------
    */

    protected $table = 'comments';
    // protected $primaryKey = 'id';
    // public $timestamps = false;
    protected $guarded = ['id'];
    // protected $fillable = [];
    // protected $hidden = [];
    // protected $dates = [];
    public function setArticleIdAttribute($value){
        dd($value);
        // $userId = Auth::guard('backpack')->user()['id'];
        // $this->attributes['user_create'] = $userId;
        // is get user id is login 
    }
    /*
    |--------------------------------------------------------------------------
    | FUNCTIONS
    |--------------------------------------------------------------------------
    */
    public function articles()
    {
        return $this->belongsToMany('\App\Models\Article', 'article_comment');
    }
    public function articlesName()
    {
        return $this->belongsToMany('\App\Models\Article', 'article_comment');
    }
    public function articlesNameEdit()
    {
        return $this->belongsTo('\App\Models\Article', 'article_comment');
    }
    public function parent()
    {
        return $this->belongsTo('\App\Models\Comment', 'parent_id');
    }

    public function children()
    {
        return $this->hasMany('\App\Models\Comment', 'parent_id');
    }
    public function user()
    {
        return $this->belongsTo('\App\Models\User', 'user_id');
    }
    /*
    |--------------------------------------------------------------------------
    | RELATIONS
    |--------------------------------------------------------------------------
    */

    /*
    |--------------------------------------------------------------------------
    | SCOPES
    |--------------------------------------------------------------------------
    */

    /*
    |--------------------------------------------------------------------------
    | ACCESSORS
    |--------------------------------------------------------------------------
    */
    /**
     * get comment by post id 
     */
    public function getCommentByPostId($id){
        $mComment = Comment::where('article_id', $id)->get();
        return $mComment;
    }

    /*
    |--------------------------------------------------------------------------
    | MUTATORS
    |--------------------------------------------------------------------------
    */
}

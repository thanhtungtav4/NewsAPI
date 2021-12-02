<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Like extends Model
{
    protected $table = 'like';
    protected $primaryKey = 'id';

    protected $fillable = [
        'user_id',
        'article_id'
    ];

    public function articles()
    {
        return $this->belongsTo('\App\Models\Article', 'article_id');
    }

    public function users()
    {
        return $this->belongsTo('\App\Models\User', 'user_id');
    }

    public function getbyUserID($id){
        $mlike = Like::orderBy('created_at', 'DESC')
        ->where('user_id', $id)
        ->with(['articles'])
        ->paginate();
        return $mlike;
    }
}

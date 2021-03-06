<?php

namespace App\Models;

use Backpack\CRUD\app\Models\Traits\CrudTrait;
use Carbon\Carbon;
use Illuminate\Support\Str;
use Cviebrock\EloquentSluggable\Sluggable;
use Cviebrock\EloquentSluggable\SluggableScopeHelpers;
use Illuminate\Database\Eloquent\Model;
use Intervention\Image\ImageManagerStatic as Image;

class Article extends Model
{
    use CrudTrait;
    use Sluggable, SluggableScopeHelpers;

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
    // protected $dates = [];
    protected $casts = [
        'featured'  => 'boolean',
        'date'      => 'date',
        'created_at' => 'datetime:d-m-Y',
    ];

    /**
     * Return the sluggable configuration array for this model.
     *
     * @return array
     */
    public function sluggable(): array
    {
        return [
            'slug' => [
                'source' => 'slug_or_title',
            ],
        ];
    }

    /*
    |--------------------------------------------------------------------------
    | FUNCTIONS
    |--------------------------------------------------------------------------
    */
    // public function setImageAttribute($value)
    // {
    //     $attribute_name = "image";
    //     // or use your own disk, defined in config/filesystems.php
    //     $disk = config('backpack.base.root_disk_name'); 
    //     // destination path relative to the disk above
    //     $destination_path = "public/uploads/news"; 

    //     // if the image was erased
    //     if ($value==null) {
    //         // delete the image from disk
    //         \Storage::disk($disk)->delete($this->{$attribute_name});

    //         // set null in the database column
    //         $this->attributes[$attribute_name] = null;
    //     }

    //     // if a base64 was sent, store it in the db
    //     if (Str::startsWith($value, 'data:image'))
    //     {
    //         // 0. Make the image
    //         $image = \Image::make($value)->encode('jpg', 90);

    //         // 1. Generate a filename.
    //         $filename = md5($value.time()).'.jpg';

    //         // 2. Store the image on disk.
    //         \Storage::disk($disk)->put($destination_path.'/'.$filename, $image->stream());

    //         // 3. Delete the previous image, if there was one.
    //         \Storage::disk($disk)->delete($this->{$attribute_name});

    //         // 4. Save the public path to the database
    //         // but first, remove "public/" from the path, since we're pointing to it 
    //         // from the root folder; that way, what gets saved in the db
    //         // is the public URL (everything that comes after the domain name)
    //         $public_destination_path = Str::replaceFirst('public/', '', $destination_path);
    //         $this->attributes[$attribute_name] = $public_destination_path.'/'.$filename;
    //     }
    // }

    // public function setMetaImageAttribute($value)
    // {
    //     $attribute_name = "meta_image";
    //     // or use your own disk, defined in config/filesystems.php
    //     $disk = config('backpack.base.root_disk_name'); 
    //     // destination path relative to the disk above
    //     $destination_path = "public/uploads/news"; 

    //     // if the image was erased
    //     if ($value==null) {
    //         // delete the image from disk
    //         \Storage::disk($disk)->delete($this->{$attribute_name});

    //         // set null in the database column
    //         $this->attributes[$attribute_name] = null;
    //     }

    //     // if a base64 was sent, store it in the db
    //     if (Str::startsWith($value, 'data:image'))
    //     {
    //         // 0. Make the image
    //         $image = \Image::make($value)->encode('jpg', 90);

    //         // 1. Generate a filename.
    //         $filename = md5($value.time()).'.jpg';

    //         // 2. Store the image on disk.
    //         \Storage::disk($disk)->put($destination_path.'/'.$filename, $image->stream());

    //         // 3. Delete the previous image, if there was one.
    //         \Storage::disk($disk)->delete($this->{$attribute_name});

    //         // 4. Save the public path to the database
    //         // but first, remove "public/" from the path, since we're pointing to it 
    //         // from the root folder; that way, what gets saved in the db
    //         // is the public URL (everything that comes after the domain name)
    //         $public_destination_path = Str::replaceFirst('public/', '', $destination_path);
    //         $this->attributes[$attribute_name] = $public_destination_path.'/'.$filename;
    //     }
    // }
    public static function boot()
    {
        parent::boot();
        static::deleting(function($obj) {
            \Storage::disk('uploads')->delete($obj->image);
        });
    }

    

    /*
    |--------------------------------------------------------------------------
    | RELATIONS
    |--------------------------------------------------------------------------
    */

    public function category()
    {
        return $this->belongsTo('\App\Models\Category', 'category_id');
    }

    public function users()
    {
        return $this->belongsTo('\App\Models\User', 'user_id');
    }

    public function tags()
    {
        return $this->belongsToMany('\App\Models\Tag', 'article_tag');
    }

    public function comments()
    {
        return $this->belongsToMany('\App\Models\Comment', 'article_comment');
    }

    
    // public function commentsx()
    // {
    //     return $this->belongsToMany('\App\Models\Comment', 'article_comment');
    // }
    /*
    |--------------------------------------------------------------------------
    | SCOPES
    |--------------------------------------------------------------------------
    */

    public function scopePublished($query)
    {
        return $query->where('status', 'PUBLISHED')
            ->where('date', '<=', date('Y-m-d'))
            ->orderBy('date', 'DESC');
    }

    /*
    |--------------------------------------------------------------------------
    | ACCESORS
    |--------------------------------------------------------------------------
    */

    // The slug is created automatically from the "title" field if no slug exists.
    public function getSlugOrTitleAttribute()
    {
        if ($this->slug != '') {
            return $this->slug;
        }

        return $this->title;
    }

    /*
    |--------------------------------------------------------------------------
    | MUTATORS
    |--------------------------------------------------------------------------
    */
    

    /*
    |--------------------------------------------------------------------------
    | Model Api 
    |--------------------------------------------------------------------------
    */
    public function getNews(array $filter = []){
        $news = Article::orderBy('created_at', 'DESC')
            ->with(['category', 'users']);
        $news->select('title', 'user_id', 'slug', 'category_id', 'description', 'status', 'created_at', 'image' )
            ->where('status', 'PUBLISHED');       
        // filter post by category_id      
        if (isset($filter['category_id']) && $filter['category_id'] > 0) {
            $news->where('category_id', $filter['category_id']);
        }
        // filter post by title
        if (isset($filter['seach']) && $filter['seach'] != null) {
            $news->where("title", 'like', '%' . $filter['seach'] . '%');
            $news->orWhere("description", 'like', '%' . $filter['seach'] . '%');
        }
        // filter subMonth
        if (isset($filter['Month']) && $filter['Month'] != null) {
            $news->whereDate('created_at', '>', $filter['Month']);
        }
        //filter by slug Username
        if (isset($filter['postByUserId']) && $filter['postByUserId'] != null) {
            $news->where('user_id', $filter['postByUserId']);
        }
        if (isset($filter['featured']) == 1) {
            $news->where('featured', $filter['featured']);
        }
        //filter limit get post
        if (isset($filter['limit']) && $filter['limit'] != null) {
           return $news->limit($filter['limit'])->get();
        //break
        }else{
            // if $filter['cursorPaginate'] == 1 ph??n trang theo con tr???
            if (isset($filter['cursorPaginate']) && $filter['cursorPaginate'] == 1) {
                return $news->cursorPaginate($filter['numPaginate']);
            }
            return $news->paginate($filter['numPaginate']);
        }
    }
    /*
    |--------------------------------------------------------------------------
    | Get Detail post by slug
    |--------------------------------------------------------------------------
    */
    /**
     * Get List Post By UserName
     * 
     */
    public function getPostByUserName($slug){
        $data = [''];
        $oUser = User::where('username', $slug)->first();
        if(isset($oUser)){
         $mPost = Article::where('user_id', $oUser->id)
            ->select('title', 'user_id', 'slug', 'category_id', 'description', 'status', 'created_at', 'image' )
            ->where('status', 'PUBLISHED')
            ->with(['category', 'users'])
            ->paginate(10);
         $oData['user'] = $oUser;
         $oData['post'] = $mPost;
         return $oData;
        }
        else{
            return null;
        }
    }
    
    /**
     * Get List Post By Slug
     * 
     */

    public function getPostBySlug($slug){
        //dd($slug);
        $newDetail = Article::where('slug', $slug)
            ->where('status', 'PUBLISHED')
            ->with(['category', 'tags', 'users'])
            ->first();
        $newDetail['related_post'] = Article::select('title', 'category_id', 'user_id', 'slug', 'description', 'image' )
            ->with(['users','category'])
            ->where('category_id', $newDetail->category_id)
            ->where('status', 'PUBLISHED')
            ->limit(3)
            ->get();
        return $newDetail;
    }

}

<?php

namespace App\Http\Controllers\Admin;


use Backpack\CRUD\app\Http\Controllers\CrudController;
use App\Http\Requests\ArticleRequest;

class ArticleCrudController extends CrudController
{
    use \Backpack\CRUD\app\Http\Controllers\Operations\ListOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\CreateOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\UpdateOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\CloneOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\BulkCloneOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\DeleteOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\BulkDeleteOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\ShowOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\FetchOperation;

    public function setup()
    {
        /*
        |--------------------------------------------------------------------------
        | BASIC CRUD INFORMATION
        |--------------------------------------------------------------------------
        */
        $this->crud->setModel(\App\Models\Article::class);
        $this->crud->setRoute(config('backpack.base.route_prefix', 'admin').'/article');
        $this->crud->setEntityNameStrings('article', 'articles');

        /*
        |--------------------------------------------------------------------------
        | LIST OPERATION
        |--------------------------------------------------------------------------
        */
        $this->crud->operation('list', function () {
            $this->crud->addColumn('title');
            $this->crud->addColumn([
                'name' => 'date',
                'label' => 'Date',
                'type' => 'date',
            ]);
            $this->crud->addColumn('status');
            $this->crud->addColumn([
                'name' => 'featured',
                'label' => 'Featured',
                'type' => 'check',
            ]);
            $this->crud->addColumn([
                'label' => 'Category',
                'type' => 'select',
                'name' => 'category_id',
                'entity' => 'category',
                'attribute' => 'name',
                'wrapper'   => [
                    'href' => function ($crud, $column, $entry, $related_key) {
                        return backpack_url('category/'.$related_key.'/show');
                    },
                ],
            ]);
            $this->crud->addColumn('tags');

            $this->crud->addFilter([ // select2 filter
                'name' => 'category_id',
                'type' => 'select2',
                'label'=> 'Category',
            ], function () {
                return \App\Models\Category::all()->keyBy('id')->pluck('name', 'id')->toArray();
            }, function ($value) { // if the filter is active
                $this->crud->addClause('where', 'category_id', $value);
            });

            $this->crud->addFilter([ // select2_multiple filter
                'name' => 'tags',
                'type' => 'select2_multiple',
                'label'=> 'Tags',
            ], function () {
                return \App\Models\Tag::all()->keyBy('id')->pluck('name', 'id')->toArray();
            }, function ($values) { // if the filter is active
                $this->crud->query = $this->crud->query->whereHas('tags', function ($q) use ($values) {
                    foreach (json_decode($values) as $key => $value) {
                        if ($key == 0) {
                            $q->where('tags.id', $value);
                        } else {
                            $q->orWhere('tags.id', $value);
                        }
                    }
                });
            });
        });

        /*
        |--------------------------------------------------------------------------
        | CREATE & UPDATE OPERATIONS
        |--------------------------------------------------------------------------
        */

        $this->crud->operation(['create', 'update'], function () {
            $this->crud->setValidation(ArticleRequest::class);

            $this->crud->addField([
                'name' => 'title',
                'label' => 'Title',
                'type' => 'text',
                'placeholder' => 'Your title here',
            ]);
            $this->crud->addField([
                'name' => 'content',
                'label' => 'Content',
                'type' => 'ckeditor',
                'placeholder' => 'Your textarea text here',
            ]);
            $this->crud->addField([
                'label' => 'Category',
                'type' => 'relationship',
                'name' => 'category_id',
                'entity' => 'category',
                'attribute' => 'name',
                'inline_create' => true,
            ]);
            $this->crud->addField([
                'label' => 'Post By User',
                'type' => 'relationship',
                'name' => 'user_id',
                'entity' => 'users',
                'attribute' => 'name',
                
            ]);
            $this->crud->addField([
                'label' => 'Tags',
                'type' => 'relationship',
                'name' => 'tags', // the method that defines the relationship in your Model
                'entity' => 'tags', // the method that defines the relationship in your Model
                'attribute' => 'name', // foreign key attribute that is shown to user
                'pivot' => true, // on create&update, do you need to add/delete pivot table entries?
                'inline_create' => ['entity' => 'tag'],
            ]);
            $this->crud->addField([
                'name' => 'status',
                'label' => 'Status',
                'type' => 'enum',
            ]);
          
            // NEWS EXTRA INFO
            $this->crud->addField([
                'name' => 'slug',
                'label' => 'Slug Custome (URL)',
                'type' => 'text',
                'hint' => 'Will be automatically generated from your title, if left empty.',
                'tab'               => 'NEWS EXTRA INFO',
                // 'disabled' => 'disabled'
            ]);
            $this->crud->addField([
                'name' => 'image',
                'label' => 'Featured Image',
                'type' => 'browse',
                'tab'               => 'NEWS EXTRA INFO',
            ]);
            
            $this->crud->addField([
                'name'              => 'description',
                'label'             => 'Description',
                'type'              => 'textarea',
                'tab'               => 'NEWS EXTRA INFO',
             ]);
             $this->crud->addField([
                'name' => 'date',
                'label' => 'Date',
                'type' => 'date',
                'default' => date('d-m-Y'),
                'tab'               => 'NEWS EXTRA INFO',
            ]);
            $this->crud->addField([
                'name' => 'featured',
                'label' => 'Featured item',
                'type' => 'checkbox',
                'tab'               => 'NEWS EXTRA INFO',
            ]);
             // meta seo
            $this->crud->addField([
                'name'        => 'meta_index',
                'label'       => "Meta index",
                'type'        => 'select2_from_array',
                'options'     => ['index, follow' => 'Index - Follow', 'noindex, nofollow' => 'Noindex - Nofollow' , 'noindex, follow' => 'Noindex - Follow'],
                'allows_null' => false,
                'default'     => 'index, follow',
                'tab'               => 'META SEO',
            ]);
            $this->crud->addField([
                'name'              => 'meta_description',
                'label'             => 'Meta Description',
                'type'              => 'textarea',
                'tab'               => 'META SEO',
            ]);
            $this->crud->addField([
                'name'              => 'meta_schema',
                'label'             => 'Meta Schema',
                'type'              => 'textarea',
                'tab'               => 'META SEO',
            ]);
            $this->crud->addField([
                'name' => 'meta_image',
                'label' => 'Meta Image',
                'type' => 'browse',
                'tab'  => 'META SEO',
            ]);
            
        });
    }
    protected function addCustomCrudFilters()
    {
        $this->crud->addFilter(
            [ // add a "simple" filter called Draft
                'type'  => 'simple',
                'name'  => 'checkbox',
                'label' => 'Simple',
            ],
            false, // the simple filter has no values, just the "Draft" label specified above
        function () { // if the filter is active (the GET parameter "draft" exits)
            $this->crud->addClause('where', 'checkbox', '1');
        }
        );
    }

    /**
     * Respond to AJAX calls from the select2 with entries from the Category model.
     * @return JSON
     */
    public function fetchCategory()
    {
        return $this->fetch(\App\Models\Category::class);
    }

    /**
     * Respond to AJAX calls from the select2 with entries from the Tag model.
     * @return JSON
     */
    public function fetchTags()
    {
        return $this->fetch(\App\Models\Tag::class);
    }


}

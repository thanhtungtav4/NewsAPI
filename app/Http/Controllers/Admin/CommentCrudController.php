<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\CommentRequest;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;

/**
 * Class CommentCrudController
 * @package App\Http\Controllers\Admin
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class CommentCrudController extends CrudController
{
    use \Backpack\CRUD\app\Http\Controllers\Operations\ListOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\UpdateOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\DeleteOperation;
 

    /**
     * Configure the CrudPanel object. Apply settings to all operations.
     * 
     * @return void
     */
    public function setup()
    {
        CRUD::setModel(\App\Models\Comment::class);
        CRUD::setRoute(config('backpack.base.route_prefix') . '/comment');
        CRUD::setEntityNameStrings('comment', 'comments');
    }

    /**
     * Define what happens when the List operation is loaded.
     * 
     * @see  https://backpackforlaravel.com/docs/crud-operation-list-entries
     * @return void
     */
    protected function setupListOperation()
    {
        $this->crud->addColumn([
            'label' => 'Thuộc bài viết',
            'name' => 'articlesName',
        ]);

        $this->crud->addColumn([
            'name' => 'body',
            'label' => 'Nội Dung ',
            'type'  => 'textarea',
        ]);

        $this->crud->addColumn([
            'name' => 'is_active',
            'label' => 'Trạng thái',
            'type'            => 'select_from_array',
            'options' => ['1' => 'Công khai', '0' => 'Bản nháp', '2' => 'xóa'],
        ]);
        /**
         * Columns can be defined using the fluent syntax or array syntax:
         * - CRUD::column('price')->type('number');
         * - CRUD::addColumn(['name' => 'price', 'type' => 'number']); 
         */
    }

    /**
     * Define what happens when the Create operation is loaded.
     * 
     * @see https://backpackforlaravel.com/docs/crud-operation-create
     * @return void
     */

    /**
     * Define what happens when the Update operation is loaded.
     * 
     * @see https://backpackforlaravel.com/docs/crud-operation-update
     * @return void
     */
    protected function setupUpdateOperation()
    {
        CRUD::setValidation(CommentRequest::class);

        CRUD::addField([
            'label' => 'For News Title',
            'name' => 'articlesName',
            'attributes' => [
               'disabled' => 'disabled',
             ],
        ]);
        CRUD::addField([
            'name' => 'body',
            'label' => 'Content',
            'type'  => 'textarea',
        ]);
        CRUD::addField([
            'label' => 'Parent',
            'type' => 'select',
            'name' => 'parent_id',
            'entity' => 'parent',
            'attribute' => 'body',
        ]);
        CRUD::addField([
            'label' => 'Select user',
            'type' => 'relationship',
             'name' => 'user_id',
             'entity' => 'user',
             'attribute' => 'name',
        ]);
        CRUD::addField([
            'name' => 'is_active',
            'label' => 'Trạng thái',
            'type'            => 'select_from_array',
            'options' => ['1' => 'Công khai', '0' => 'Bản nháp', '2'=> 'Xóa'],
        ]);
    }
}

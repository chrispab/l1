<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Message extends Model
{
    //
   // protected $table = 'messages';
    protected $fillable = ['topic','content','published_at'];
}

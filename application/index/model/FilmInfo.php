<?php

namespace app\index\model;

use think\Model;

class FilmInfo extends Model
{
    protected $pk = 'film_id';

    public function broadcast()
    {
        return $this->hasOne('Broadcast', 'film_id');
    }

    public function byTimes()
    {
        return $this->belongsTo('Times', 'film_id');
    }
}

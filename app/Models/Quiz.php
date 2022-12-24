<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Quiz extends Model
{
    use HasFactory;

    protected $fillable = [
        'id',
        'course',
        'name', 
        'intro',
        'introformat',
        'timeopen', 
        'timeclose', 
        'timelimit', 
        'overduehandling', 
        'graceperiod', 
        'preferredbehaviour', 
        'canredoquestions', 
        'attempts', 
        'attemptonlast', 
        'grademethod', 
        'decimalpoints', 
        'questiondecimalpoints', 
        'reviewattempt', 
        'reviewcorrectness', 
        'reviewmarks', 
        'reviewspecificfeedback', 
        'reviewgeneralfeedback', 
        'reviewrightanswer', 
        'reviewoverallfeedback' 
    ];
}

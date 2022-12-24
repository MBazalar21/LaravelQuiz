<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class QuizController extends Controller
{
    //
    public function store(Request $request)
    {
        $quiz = new Quiz;
        $quiz->id = $request->input('id');
        $quiz->course = $request->input('course');
        $quiz->name = $request->input('name');
        $quiz->intro = $request->input('intro');
        $quiz->introformat = $request->input('introformat');
        $quiz->timeopen = $request->input('timeopen');
        $quiz->timeclose = $request->input('timeclose');
        $quiz->timelimit = $request->input('timelimit');
        $quiz->overduehandling = $request->input('overduehandling');
        $quiz->graceperiod = $request->input('graceperiod');
        $quiz->preferredbehaviour = $request->input('preferredbehaviour');
        $quiz->canredoquestions = $request->input('canredoquestions');
        $quiz->attempts = $request->input('attempts');
        $quiz->attemptonlast = $request->input('attemptonlast');
        $quiz->grademethod = $request->input('grademethod');
        $quiz->decimalpoints = $request->input('decimalpoints');
        $quiz->questiondecimalpoints = $request->input('questiondecimalpoints');
        $quiz->reviewattempt = $request->input('reviewattempt');
        $quiz->reviewcorrectness = $request->input('reviewcorrectness');
        $quiz->reviewmarks = $request->input('reviewmarks');
        $quiz->reviewspecificfeedback = $request->input('reviewspecificfeedback');
        $quiz->reviewgeneralfeedback = $request->input('reviewgeneralfeedback');
        $quiz->reviewrightanswer = $request->input('reviewrightanswer');
        $quiz->reviewoverallfeedback = $request->input('reviewoverallfeedback');
        $quiz->save();

        return redirect()->route('quizs.index')->with('success', 'Quiz creado exitosamente');
    }
}

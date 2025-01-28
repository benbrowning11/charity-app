<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Inertia\Inertia;

class ContactController extends Controller
{
    public function index()
    {
        return Inertia::render('Contact', [

        ]);
    }

    public function teach()
    {
        return Inertia::render('TeacherApplication', [

        ]);
    }

    public function school()
    {
        return Inertia::render('SchoolApplication', [

        ]);
    }
}
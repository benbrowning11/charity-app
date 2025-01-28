<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Inertia\Inertia;

class HomeController extends Controller
{
    public function index()
    {
        return Inertia::render('Home', [
            'assets' => [
                'ropax1' => asset('storage/ropax1.png'),
                'lineThing2' => asset('storage/line-thing2.png'),
                'linkedIn' => asset('storage/linkedin.png'),
                'whatsapp' => asset('storage/whatsapp.png'),
                'instagram' => asset('storage/instagram.png'),
                'youtube' => asset('storage/youtube.png'),
            ]
        ]);
    }
}
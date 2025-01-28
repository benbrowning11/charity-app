<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Foundation\Application;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;

Route::get('/', function () {
    return Inertia::render('Home', [
        'canLogin' => Route::has('login'),
        'canRegister' => Route::has('register'),
        'laravelVersion' => Application::VERSION,
        'phpVersion' => PHP_VERSION,
    ]);
});

Route::get('/home', function () {
    return Inertia::render('Home', [
        'canLogin' => Route::has('login'),
        'canRegister' => Route::has('register'),
        'laravelVersion' => Application::VERSION,
        'phpVersion' => PHP_VERSION,
        'assets' => [
            'ropax1' => asset('storage/ropax1.png'),
            'lineThing2' => asset('storage/lineThing2.png'),
            'linkedIn' => asset('storage/linkedIn.png'),
            'whatsapp' => asset('storage/whatsapp.png'),
            'instagram' => asset('storage/instagram.png'),
            'youtube' => asset('storage/youtube.png'),
        ]
    ]);
});

Route::get('/dashboard', function () {
    return Inertia::render('Dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

Route::get('/about', function () {
    return Inertia::render('About');
});

Route::get('/fundraisers', function () {
    return Inertia::render('Fundraisers');
});

Route::get('/diary', function () {
    return Inertia::render('Diary');
});

Route::get('/news', function () {
    return Inertia::render('News');
});

Route::get('/contact', function () {
    return Inertia::render('Contact');
});

Route::get('/support', function () {
    return Inertia::render('Support');
});

require __DIR__.'/auth.php';

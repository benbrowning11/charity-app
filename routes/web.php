<?php

use App\Http\Controllers\HomeController;
use App\Http\Controllers\AboutController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\DiaryController;
use App\Http\Controllers\FundraiserController;
use App\Http\Controllers\NewsletterController;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;

Route::get('/', [HomeController::class, 'index'])
    ->name('home');

Route::get('/about', [AboutController::class, 'index'])
    ->name('about');

Route::get('/newsletter', [NewsletterController::class, 'index'])
    ->name('newsletter');

Route::middleware(['auth'])->group(function () {
    Route::get('/dashboard', [DashboardController::class, 'index'])
        ->name('dashboard');
});

Route::get('/fundraisers', [FundraiserController::class, 'index'])
    ->name('fundraisers');

Route::get('/contact', [ContactController::class, 'index'])
    ->name('contact');

Route::get('/apply_to_teach', [ContactController::class, 'teach'])
    ->name('apply_to_teach');

Route::get('/register_school', [ContactController::class, 'school'])
    ->name('reg_school');

Route::get('/diary', [DiaryController::class, 'index'])
    ->name('diary');
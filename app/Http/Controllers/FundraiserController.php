<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Inertia\Inertia;

class FundraiserController extends Controller
{
    public function index()
    {
        return Inertia::render('Fundraisers', [
            'generalFund' => [
                'goal' => 5000,
                'raised' => 3000,
                'description' => 'The General Fund supports all aspects of our mission...'
            ],
            'activeCampaigns' => $this->getActiveCampaigns(),
            'completedCampaigns' => $this->getCompletedCampaigns()
        ]);
    }

    private function getActiveCampaigns()
    {
        // In a real app, this would come from your database
        return [
            [
                'id' => 1,
                'title' => 'Books',
                'goal' => 500,
                'raised' => 375,
                'imageUrl' => '/storage/IMG_6905_3.png',
                'description' => 'Access to educational materials is essential...',
                'status' => 'active'
            ],
            // ... more campaigns
        ];
    }

    private function getCompletedCampaigns()
    {
        // In a real app, this would come from your database
        return [
            [
                'id' => 1,
                'title' => 'Books for Bright Minds',
                'goal' => 500,
                'raised' => 500,
                'imageUrl' => '/storage/IMG_6781_1.png',
                'description' => 'Thanks to your incredible support...',
                'status' => 'completed'
            ],
            // ... more campaigns
        ];
    }
}
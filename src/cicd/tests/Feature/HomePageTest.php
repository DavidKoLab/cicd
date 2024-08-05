<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class HomePageTest extends TestCase
{
    /**
     * A basic feature test example.
     */
    public function test_root_get_one_two_three(): void
    {
        $response = $this->get('/');

        $response->assertStatus(200);

        $response->assertSeeText('123');
    }
}

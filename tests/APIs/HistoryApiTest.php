<?php namespace Tests\APIs;

use Illuminate\Foundation\Testing\WithoutMiddleware;
use Illuminate\Foundation\Testing\DatabaseTransactions;
use Tests\TestCase;
use Tests\ApiTestTrait;
use App\Models\Admin\History;

class HistoryApiTest extends TestCase
{
    use ApiTestTrait, WithoutMiddleware, DatabaseTransactions;

    /**
     * @test
     */
    public function test_create_history()
    {
        $history = factory(History::class)->make()->toArray();

        $this->response = $this->json(
            'POST',
            '/api/admin/histories', $history
        );

        $this->assertApiResponse($history);
    }

    /**
     * @test
     */
    public function test_read_history()
    {
        $history = factory(History::class)->create();

        $this->response = $this->json(
            'GET',
            '/api/admin/histories/'.$history->id
        );

        $this->assertApiResponse($history->toArray());
    }

    /**
     * @test
     */
    public function test_update_history()
    {
        $history = factory(History::class)->create();
        $editedHistory = factory(History::class)->make()->toArray();

        $this->response = $this->json(
            'PUT',
            '/api/admin/histories/'.$history->id,
            $editedHistory
        );

        $this->assertApiResponse($editedHistory);
    }

    /**
     * @test
     */
    public function test_delete_history()
    {
        $history = factory(History::class)->create();

        $this->response = $this->json(
            'DELETE',
             '/api/admin/histories/'.$history->id
         );

        $this->assertApiSuccess();
        $this->response = $this->json(
            'GET',
            '/api/admin/histories/'.$history->id
        );

        $this->response->assertStatus(404);
    }
}

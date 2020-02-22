<?php namespace Tests\APIs;

use Illuminate\Foundation\Testing\WithoutMiddleware;
use Illuminate\Foundation\Testing\DatabaseTransactions;
use Tests\TestCase;
use Tests\ApiTestTrait;
use App\Models\Admin\UserDetail;

class UserDetailApiTest extends TestCase
{
    use ApiTestTrait, WithoutMiddleware, DatabaseTransactions;

    /**
     * @test
     */
    public function test_create_user_detail()
    {
        $userDetail = factory(UserDetail::class)->make()->toArray();

        $this->response = $this->json(
            'POST',
            '/api/admin/user_details', $userDetail
        );

        $this->assertApiResponse($userDetail);
    }

    /**
     * @test
     */
    public function test_read_user_detail()
    {
        $userDetail = factory(UserDetail::class)->create();

        $this->response = $this->json(
            'GET',
            '/api/admin/user_details/'.$userDetail->id
        );

        $this->assertApiResponse($userDetail->toArray());
    }

    /**
     * @test
     */
    public function test_update_user_detail()
    {
        $userDetail = factory(UserDetail::class)->create();
        $editedUserDetail = factory(UserDetail::class)->make()->toArray();

        $this->response = $this->json(
            'PUT',
            '/api/admin/user_details/'.$userDetail->id,
            $editedUserDetail
        );

        $this->assertApiResponse($editedUserDetail);
    }

    /**
     * @test
     */
    public function test_delete_user_detail()
    {
        $userDetail = factory(UserDetail::class)->create();

        $this->response = $this->json(
            'DELETE',
             '/api/admin/user_details/'.$userDetail->id
         );

        $this->assertApiSuccess();
        $this->response = $this->json(
            'GET',
            '/api/admin/user_details/'.$userDetail->id
        );

        $this->response->assertStatus(404);
    }
}

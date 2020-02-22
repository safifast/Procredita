<?php namespace Tests\Repositories;

use App\Models\Admin\History;
use App\Repositories\Admin\HistoryRepository;
use Illuminate\Foundation\Testing\DatabaseTransactions;
use Tests\TestCase;
use Tests\ApiTestTrait;

class HistoryRepositoryTest extends TestCase
{
    use ApiTestTrait, DatabaseTransactions;

    /**
     * @var HistoryRepository
     */
    protected $historyRepo;

    public function setUp() : void
    {
        parent::setUp();
        $this->historyRepo = \App::make(HistoryRepository::class);
    }

    /**
     * @test create
     */
    public function test_create_history()
    {
        $history = factory(History::class)->make()->toArray();

        $createdHistory = $this->historyRepo->create($history);

        $createdHistory = $createdHistory->toArray();
        $this->assertArrayHasKey('id', $createdHistory);
        $this->assertNotNull($createdHistory['id'], 'Created History must have id specified');
        $this->assertNotNull(History::find($createdHistory['id']), 'History with given id must be in DB');
        $this->assertModelData($history, $createdHistory);
    }

    /**
     * @test read
     */
    public function test_read_history()
    {
        $history = factory(History::class)->create();

        $dbHistory = $this->historyRepo->find($history->id);

        $dbHistory = $dbHistory->toArray();
        $this->assertModelData($history->toArray(), $dbHistory);
    }

    /**
     * @test update
     */
    public function test_update_history()
    {
        $history = factory(History::class)->create();
        $fakeHistory = factory(History::class)->make()->toArray();

        $updatedHistory = $this->historyRepo->update($fakeHistory, $history->id);

        $this->assertModelData($fakeHistory, $updatedHistory->toArray());
        $dbHistory = $this->historyRepo->find($history->id);
        $this->assertModelData($fakeHistory, $dbHistory->toArray());
    }

    /**
     * @test delete
     */
    public function test_delete_history()
    {
        $history = factory(History::class)->create();

        $resp = $this->historyRepo->delete($history->id);

        $this->assertTrue($resp);
        $this->assertNull(History::find($history->id), 'History should not exist in DB');
    }
}

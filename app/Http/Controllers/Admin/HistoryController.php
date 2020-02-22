<?php

namespace App\Http\Controllers\Admin;

use Flash;
use App\User;
use Response;
use Illuminate\Http\Request;
use App\Http\Controllers\AppBaseController;
use App\Repositories\Admin\HistoryRepository;
use App\Http\Requests\Admin\CreateHistoryRequest;
use App\Http\Requests\Admin\UpdateHistoryRequest;

class HistoryController extends AppBaseController
{
    /** @var  HistoryRepository */
    private $historyRepository;

    public function __construct(HistoryRepository $historyRepo)
    {
        $this->historyRepository = $historyRepo;
    }

    /**
     * Display a listing of the History.
     *
     * @param Request $request
     *
     * @return Response
     */
    public function index(Request $request)
    {
        $histories = $this->historyRepository->all();

        return view('admin.histories.index')
            ->with('histories', $histories);
    }

    /**
     * Show the form for creating a new History.
     *
     * @return Response
     */
    public function create()
    {   $users = User::all('id','name');
        $newArr = [];
        foreach ($users as $user) {
            $newArr[$user->id] = $user->name;
        }
        // dd($newArr);
        return view('admin.histories.create')->with('newArr', $newArr);
    }

    /**
     * Store a newly created History in storage.
     *
     * @param CreateHistoryRequest $request
     *
     * @return Response
     */
    public function store(CreateHistoryRequest $request)
    {
        $input = $request->all();

        $history = $this->historyRepository->create($input);

        Flash::success('History saved successfully.');

        return redirect(route('admin.histories.index'));
    }

    /**
     * Display the specified History.
     *
     * @param int $id
     *
     * @return Response
     */
    public function show($id)
    {
        $history = $this->historyRepository->find($id);

        if (empty($history)) {
            Flash::error('History not found');

            return redirect(route('admin.histories.index'));
        }

        return view('admin.histories.show')->with('history', $history);
    }

    /**
     * Show the form for editing the specified History.
     *
     * @param int $id
     *
     * @return Response
     */
    public function edit($id)
    {
        $history = $this->historyRepository->find($id);

        if (empty($history)) {
            Flash::error('History not found');

            return redirect(route('admin.histories.index'));
        }

        return view('admin.histories.edit')->with('history', $history);
    }

    /**
     * Update the specified History in storage.
     *
     * @param int $id
     * @param UpdateHistoryRequest $request
     *
     * @return Response
     */
    public function update($id, UpdateHistoryRequest $request)
    {
        $history = $this->historyRepository->find($id);

        if (empty($history)) {
            Flash::error('History not found');

            return redirect(route('admin.histories.index'));
        }

        $history = $this->historyRepository->update($request->all(), $id);

        Flash::success('History updated successfully.');

        return redirect(route('admin.histories.index'));
    }

    /**
     * Remove the specified History from storage.
     *
     * @param int $id
     *
     * @throws \Exception
     *
     * @return Response
     */
    public function destroy($id)
    {
        $history = $this->historyRepository->find($id);

        if (empty($history)) {
            Flash::error('History not found');

            return redirect(route('admin.histories.index'));
        }

        $this->historyRepository->delete($id);

        Flash::success('History deleted successfully.');

        return redirect(route('admin.histories.index'));
    }
}

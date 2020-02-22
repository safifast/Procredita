<?php

namespace App\Http\Controllers\API\Admin;

use App\Http\Requests\API\Admin\CreateUserDetailAPIRequest;
use App\Http\Requests\API\Admin\UpdateUserDetailAPIRequest;
use App\Models\Admin\UserDetail;
use App\Repositories\Admin\UserDetailRepository;
use Illuminate\Http\Request;
use App\Http\Controllers\AppBaseController;
use Response;

/**
 * Class UserDetailController
 * @package App\Http\Controllers\API\Admin
 */

class UserDetailAPIController extends AppBaseController
{
    /** @var  UserDetailRepository */
    private $userDetailRepository;

    public function __construct(UserDetailRepository $userDetailRepo)
    {
        $this->userDetailRepository = $userDetailRepo;
    }

    /**
     * Display a listing of the UserDetail.
     * GET|HEAD /userDetails
     *
     * @param Request $request
     * @return Response
     */
    public function index(Request $request)
    {
        $userDetails = $this->userDetailRepository->all(
            $request->except(['skip', 'limit']),
            $request->get('skip'),
            $request->get('limit')
        );

        return $this->sendResponse($userDetails->toArray(), 'User Details retrieved successfully');
    }

    /**
     * Store a newly created UserDetail in storage.
     * POST /userDetails
     *
     * @param CreateUserDetailAPIRequest $request
     *
     * @return Response
     */
    public function store(CreateUserDetailAPIRequest $request)
    {
        // save files first
        if ($request->hasFile('gov_issue_file_path') && $request->hasFile('utility_bill_file_path') && $request->hasFile('bank_statement_path')) {
            $path1 = $request->gov_issue_file_path->store('uploads');
            $path2 = $request->utility_bill_file_path->store('uploads');
            $path3 = $request->bank_statement_path->store('uploads');

            // $extension1 = $request->gov_issue_file_path->extension();
            // $extension2 = $request->utility_bill_file_path->extension();
            // $extension3 = $request->bank_statement_path->extension();
            $request->merge(['gov_issue_file_path' => $path1]);
            $request->merge(['utility_bill_file_path' => $path2]);
            $request->merge(['bank_statement_path' => $path3]);
            

        }
        
        // return $request->all();
        $input = $request->all();

        $userDetail = $this->userDetailRepository->create($input);

        return $this->sendResponse($userDetail->toArray(), 'User Detail saved successfully');
    }

    /**
     * Display the specified UserDetail.
     * GET|HEAD /userDetails/{id}
     *
     * @param int $id
     *
     * @return Response
     */
    public function show($id)
    {
        /** @var UserDetail $userDetail */
        $userDetail = $this->userDetailRepository->find($id);

        if (empty($userDetail)) {
            return $this->sendError('User Detail not found');
        }

        return $this->sendResponse($userDetail->toArray(), 'User Detail retrieved successfully');
    }

    /**
     * Update the specified UserDetail in storage.
     * PUT/PATCH /userDetails/{id}
     *
     * @param int $id
     * @param UpdateUserDetailAPIRequest $request
     *
     * @return Response
     */
    public function update($id, UpdateUserDetailAPIRequest $request)
    {
        $input = $request->all();

        /** @var UserDetail $userDetail */
        $userDetail = $this->userDetailRepository->find($id);

        if (empty($userDetail)) {
            return $this->sendError('User Detail not found');
        }

        $userDetail = $this->userDetailRepository->update($input, $id);

        return $this->sendResponse($userDetail->toArray(), 'UserDetail updated successfully');
    }

    /**
     * Remove the specified UserDetail from storage.
     * DELETE /userDetails/{id}
     *
     * @param int $id
     *
     * @throws \Exception
     *
     * @return Response
     */
    public function destroy($id)
    {
        /** @var UserDetail $userDetail */
        $userDetail = $this->userDetailRepository->find($id);

        if (empty($userDetail)) {
            return $this->sendError('User Detail not found');
        }

        $userDetail->delete();

        return $this->sendSuccess('User Detail deleted successfully');
    }
}

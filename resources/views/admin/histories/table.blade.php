<div class="table-responsive">
    <table class="table" id="histories-table">
        <thead>
            <tr>
                <th>Loan Amount</th>
        <th>File Size</th>
                <th colspan="3">Action</th>
            </tr>
        </thead>
        <tbody>
        @foreach($histories as $history)
            <tr>
                <td>{{ $history->loan_amount }}</td>
            <td>{{ $history->file_size }}</td>
                <td>
                    {!! Form::open(['route' => ['admin.histories.destroy', $history->id], 'method' => 'delete']) !!}
                    <div class='btn-group'>
                        <a href="{{ route('admin.histories.show', [$history->id]) }}" class='btn btn-default btn-xs'><i class="glyphicon glyphicon-eye-open"></i></a>
                        <a href="{{ route('admin.histories.edit', [$history->id]) }}" class='btn btn-default btn-xs'><i class="glyphicon glyphicon-edit"></i></a>
                        {!! Form::button('<i class="glyphicon glyphicon-trash"></i>', ['type' => 'submit', 'class' => 'btn btn-danger btn-xs', 'onclick' => "return confirm('Are you sure?')"]) !!}
                    </div>
                    {!! Form::close() !!}
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
</div>

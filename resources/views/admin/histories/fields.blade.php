<!-- Loan Amount Field -->
<div class="form-group col-sm-6">
    {!! Form::label('loan_amount', 'Loan Amount:') !!}
    {!! Form::number('loan_amount', null, ['class' => 'form-control']) !!}
    <br>
    {!! Form::label('user_id', 'Select User:') !!}
    {!! Form::select('user_id', $newArr, ['class' => 'form-control']) !!}
    {!! Form::hidden('file_size', 2, ['class' => 'form-control']) !!}
</div>

<!-- Submit Field -->
<div class="form-group col-sm-12">
    {!! Form::submit('Save', ['class' => 'btn btn-primary']) !!}
    <a href="{{ route('admin.histories.index') }}" class="btn btn-default">Cancel</a>
</div>

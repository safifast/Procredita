<!-- Loan Amount Field -->
<div class="form-group">
    {!! Form::label('loan_amount', 'Loan Amount:') !!}
    <p>{{ $history->loan_amount }}</p>
</div>

<!-- User Id Field -->
<div class="form-group">
    {!! Form::label('user_id', 'User Id:') !!}
    <p>{{ $history->user_id }}</p>
</div>

<!-- File Size Field -->
<div class="form-group">
    {!! Form::label('file_size', 'File Size:') !!}
    <p>{{ $history->file_size }}</p>
</div>

<!-- Created At Field -->
<div class="form-group">
    {!! Form::label('created_at', 'Created At:') !!}
    <p>{{ $history->created_at }}</p>
</div>

<!-- Updated At Field -->
<div class="form-group">
    {!! Form::label('updated_at', 'Updated At:') !!}
    <p>{{ $history->updated_at }}</p>
</div>


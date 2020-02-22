<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PageController extends Controller
{
    public function whyCredit()
    {
        return view('why-credit');
    }
    public function LoanTerm()
    {
        return view('loan-term');
    }
    public function userHome()
    {
        return view('user-dashboard');
    }
    public function Faq()
    {
        return view('faq');
    }
}

<?php

namespace App\Http\Controllers;

use Barryvdh\DomPDF\PDF;
use Illuminate\Http\Request;
use App\Http\Requests;

use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Support\Facades\Auth;
use Laracasts\Flash\Flash;
use Carbon\Carbon;
use Illuminate\Routing\Route;

class PdfController extends Controller
{
    public function index(){
    }

    public function create(Request $request)
    {
        if($request->ajax()){
            //$view =  \View::make('pdf.reporte_pedidos', compact('data', 'date', 'invoice'))->render();
            //dd($request);
            $pedidos_reporte = $request->array_pedidos;
            $pdf = \PDF::loadView('pdf.reporte_pedidos',['pedidos_reporte'=>$pedidos_reporte]);
            return $pdf->download('pedidos.pdf');
        }
    }
}



/*
    public function getData()
    {
        $data =  [
            'quantity'      => '1' ,
            'description'   => 'some ramdom text',
            'price'   => '500',
            'total'     => '500'
        ];
        return $data;
    }
*/
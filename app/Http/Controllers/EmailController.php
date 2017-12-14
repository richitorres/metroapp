<?php

namespace App\Http\Controllers;

use App\Cliente;
use App\Mail\ClienteShipped;
use App\Mail\PromocionShipped;
use App\Promocion;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;

class EmailController extends Controller
{
    //

    public function  sendEmailClient($id)
    {
        $cliente= Cliente::find($id);
        //dd($cliente->email);
        //dd(env('MAIL_HOST'));
        Mail::to([$cliente->email])->bcc(['Luigiveari@hotmail.com','ricardo_11_433@hotmail.com'])->send(new ClienteShipped($cliente));
        return redirect()->back();
    }
    public function sendEmailPromocion($id)
    {
        $clientes= DB::table('clientes')->select('email')->get();
        $promocion= Promocion::find($id);
        for ($i=1;$i<100;$i++)
        {
            $prueba[]="ricardo_11_433@hotmail.com";
        }
        //$clientes= $clientes->get('email')->pluck();
        //dd($prueba);

        Mail::to($clientes)->bcc(['ricardo_11_433@hotmail.com','Luigiveari@hotmail.com'])->send(new PromocionShipped($promocion));
        return redirect()->back();

    }
}

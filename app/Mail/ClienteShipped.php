<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;
use App\Cliente;

class ClienteShipped extends Mailable
{
    use Queueable, SerializesModels;
    public $cliente;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct(Cliente $cliente)
    {
        //
        $this->cliente= $cliente;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->from(env('MAIL_USERNAME'))->subject('Codigo de acceso al MetrolitanCZM')->view('email.clientshipped')->with([
            'nombre'=>$this->cliente->nombre,
            'apellidos'=>$this->cliente->apellidos,
            'codigo'=>$this->cliente->codigo_cliente,

        ]);
    }
}

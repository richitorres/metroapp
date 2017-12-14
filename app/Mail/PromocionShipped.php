<?php

namespace App\Mail;

use App\Promocion;
use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class PromocionShipped extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct(Promocion $promocion)
    {
        //
        $this->promocion= $promocion;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->from(env('MAIL_USERNAME'))->subject('Promociones Metropolitan')->view('email.promocionshipped')->with([
            'nombre'=>$this->promocion->nombre,
            'descripcion'=>$this->promocion->descripcion,
            'codigo'=>$this->promocion->codigo_promo,
            'fechainicio'=>$this->promocion->inicio,
            'fechafin'=>$this->promocion->fin,

        ]);
    }
}

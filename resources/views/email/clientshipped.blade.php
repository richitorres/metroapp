
<h2>Hola {{$nombre.' '.$apellidos}} Bienvenido al Metropolitan Social Club Cozumel </h2>
<p>Con tu membresia podras disfrutar de la mejor vida nocturna de cozumel en un ambiente de sana diversion, exclusividad y la seguridad que te mereces.
</p>
<h3>Ya eres metro !!!</h3>
<img src="http://cozuio.com/metros1.png" alt="" style="display:block; margin: auto; border-radius: 5%; background-color: #000">
<h4>Debes presentar este codigo para tu acceso y hacer valida algunas promociones que se te obsequiaron</h4>
<hr>
<img src="{!!$message->embedData(QrCode::format('png')->size(400)->generate($codigo), 'QrCode.png', 'image/png')!!}" alt="">
{{--<img src="data:image/png;base64, {!! base64_encode(QrCode::format('png')->size(400)->generate($codigo)) !!}" alt="">--}}
<p><b>Si usted tiene alguna duda acerca del acceso no olvide mandar un correo a: <a href="mailto:metropolitanczmmx@gmail.com">
            metropolitanczmmx@gmail.com
        </a> o comunicarse con el gerente al telefono: <a href="tel: +529871196823">987-119-6823</a></b></p>
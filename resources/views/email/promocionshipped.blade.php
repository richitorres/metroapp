<h1>Metropolitan Social Club Cozumel</h1>
<p>Para nosotros es un gusto que estes dentro de nuestro ambiente de fiesta por eso en este correo te dejamos tu codigo de promocion
    al mejor lugar de Cozumel donde podrás divertirte al maximo.
</p>
<img src="http://cozuio.com/metros1.png" alt="" style="display:block; margin: auto; border-radius: 5%; background-color: #000">
<h2>Promocion: {{$nombre}}</h2>
<h3>Descripcion: {{$descripcion}}</h3>
<hr>
<h4>Valido de : {{$fechainicio}} al dia {{$fechafin}}</h4>
<hr>
<h4>Debes presentar este codigo para  hacer valida la promocion que se te obsequio</h4>
<hr>
<p><b>{{$codigo}}</b></p>
<img src="{!!$message->embedData(QrCode::format('png')->size(400)->generate($codigo), 'QrCode.png', 'image/png')!!}" alt="">
<hr style="background-color: #0f0f0f">
{{--<img src="data:image/png;base64, {!! base64_encode(QrCode::format('png')->size(400)->generate($codigo)) !!}" alt="">--}}
<p><b>Si usted tiene alguna duda acerca del acceso no olvide mandar un correo a: <a href="mailto:metropolitanczmmx@gmail.com">
            metropolitanczmmx@gmail.com
        </a> o comunicarse con el gerente al telefono: <a href="tel: +529871196823">987-119-6823</a></b></p>

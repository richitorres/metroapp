<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
})->name('home');

Route::resource('clientes','ClientesController');
Route::get('clientes/{id}/destroy',[
    'uses'=>'ClientesController@destroy',
    'as'=>'clientes.destroy'
]);
Route::resource('promociones','PromocionesController');
Route::get('promociones/{id}/destroy',[
    'uses'=>'promocionesController@destroy',
    'as'=>'promociones.destroy'
]);
Route::get('validarpromo','PromocionesController@validarPromocion')->name('validarpromo');
Route::resource('accesos','AccesoController');
Route::get('sendmailcliente/{id}','EmailController@sendEmailClient')->name('sendmailclient');
Route::get('sendmailpromocion/{id}','EmailController@sendEmailPromocion')->name('sendmailpromocion');
Route::get('word', function ()
{
    /*$caracteres='0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $size_char= strlen($caracteres);
    $codigo='PROMO';
    for($i=0; $i<10; $i++)
    {
        $codigo.=$caracteres[rand(0,$size_char-1)];
    }
    $date= \Carbon\Carbon::now()->format('d/m/Y');
    $codigo= $codigo.$date;
    return view('template.main')->with('codigo',$codigo);*/
   Mail::to(['octave939@gmail.com'])->cc('ricardo_11_433@hotmail.com')->send(new App\Mail\PromocionShipped());
   dd('Exitooo!!!');
    //dd($codigo);
}
);

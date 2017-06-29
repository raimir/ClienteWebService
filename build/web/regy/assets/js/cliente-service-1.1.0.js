/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var contatosService;

$(document).ready(function(){
    $.ajax({
    type: "GET",
    url: "http://127.0.0.1:8000/webservice/contatos",
    success: function(data){
        contatosService = data;
//        data = JSON.parse(strjson);
//        document.getElementById("div1").innerHTML = data[0];
    }, //END success
    error: function(e){
        alert("Erro: " + e);
    } // END error

    }); // END $.ajax

}); // END Function, END ready


function loadTableContatos() {
    if(contatosService != null) {
        $(document).ready(function() {
            $('#contatos').add(contatosService[0].nome)
        });
    }
}
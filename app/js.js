$("#btn_gravar").on("click", function() {

   var txt_nome = $("#nome").val();
   var txt_mensagem = $("#mensagem").val();
   
   $.ajax({
       url: "http://127.0.0.1/incluir.php",
       type "post",
       data: {nome: txt_nome, mensagem: txt_mensagem}
       beforeSend: function() {
	   $("#resposta").html("Enviando");
   }).done(function(e) {
       $("#resposta").html("Dados salvos");
   })

})

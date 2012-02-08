$(document).ready(function(){

	$(".entry .area").submit(function(event){
		var form = this;
	  event.preventDefault();
	
		$("#wrapper").hide();
		$("#navigation").hide();

		texts="gif_1,gif_2,gif_3,gif_4,gif_5,gif_5".split(",");
		textIndex=0;
		function rotate() {
		    $("#"+texts[textIndex]).hide(1,function(){
		    textIndex++;
		    textIndex%=texts.length;
		    $("#"+texts[textIndex]).show();
		    console.log(textIndex);
		    });
		}


		$(document).ready(function(){
		    $("#"+texts[textIndex]).show();
		    textInterval=setInterval(rotate,1300);

		     $(".sliderLinks").hover(
		          function(){
		              var id = $(this).data("id");
		              if(id!==undefined){
		               $("#" + id).show();
		              }

		              $("#textMessages").show();
		              $("#"+texts[textIndex]).hide();
		              //$("#defaultMessage").hide();
		              clearInterval(textInterval);
		          },function(){
		              $("#textMessages").hide();
		              $("#"+texts[textIndex]).show();
		              textInterval=setInterval(rotate,1300);
		          });
		  });
						
		 
		setTimeout(function() {		
				form.submit();
		  }, 5600);
	
	});

});

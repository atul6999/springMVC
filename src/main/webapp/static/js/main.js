/**
 * 
 */
 $(document).ready(function(){
 	$.ajax({
        type: "GET",
        url: "http://localhost:12001/SpringMVC/activities.json",
        dataType: "json",
        success: function (data) {
        	var html = '<option value="">Please select one</option>';
        	var len = data.length;
        	for(var i=0;i<len;i++)
        		{
					html+= '<option value="'+ data[i].desc+'">'+data[i].desc+'</option>';
        		}
        	$('#activities').html(html);
      	}
	});
 	console.log("hello");
 });
/**
 * 
 */
$(document).ready(function(){
	var formObj=$(form[role='form'])
	
	$("input[type='submit']").on("click",function(e){
		// 고유의 동작을 멈추게 하는 코드
		e.preventDefault();
		
		var str="";
		$(".uploadResult ul li").each(function(i, obj){
			var vobj=$(obj);
			str+="<input type='text' name='attachList["+i+"].filename' value='"+jobj.data("filename")+"'>";
			str+="<input type='text' name='attachList["+i+"].uuid' value='"+jobj.data("uuid")+"'>";
			str+="<input type='text' name='attachList["+i+"].uploadpath' value='"+jobj.data("uploadpath")+"'>";
			str+="<input type='text' name='attachList["+i+"].filetype' value='"+jobj.data("filetype")+"'>";
			
		})
	})	
})
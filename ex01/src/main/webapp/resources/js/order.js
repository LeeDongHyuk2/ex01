/**
 * 
 */
	$(document).ready(function(){
		let uploadResult = $("#uploadResult");
		let product_no = $("input[type=hidden]").val();
		
		$.getJSON("/product/getAttachList", {product_no : product_no}, function(arr){
			if(arr.length === 0){
				let str = "";
				str += "<div id = 'result_card'>";				
				str += "<img src = '/resources/img/productNoImage.png'>";
				str += "</div>";
				
				uploadResult.html(str);
				
				return;
			}
			
			let str = "";
			let obj = arr[0];
			
			let fileCallPath = encodeURIComponent(obj.uploadPath + "/s_" + obj.uuid + "_" + obj.fileName);
			str += "<div id='result_card'";			
			str += "data-path='" + obj.uploadPath + "' data-uuid'" + obj.uuid + "' data-filename'" + obj.fileName + "'";
			str += ">";			
			str += "<img src='/product/display?fileName=" + fileCallPath +"'>";
			str += "</div>";
			
			uploadResult.html(str);
		});
	});
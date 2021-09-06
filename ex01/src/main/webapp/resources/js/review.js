/**

 * 
 */
$(document).ready(function(){
	let regex = new RegExp("(.*?)\.(jpg|png)$");
	let maxSize = 1048576; //1MB
	let registerForm = $("#reviewRegister");

	
	$("input[type='file']").on("change", function(e){
		// 이미지 존재할 시 삭제
		if($(".imgDeleteBtn").length >0){
			deleteFile();
		}
		
		let formData = new FormData();
		let fileInput = $('input[name="uploadFile"]');
		let fileList = fileInput[0].files;
		let fileObj = fileList[0];
		
		formData.append("uploadFile", fileObj);
		//여러 파일을 선택할 수 있다면
		//for(let i = 0; i < fileList.length; i++){
		//	formData.append("uploadFile", fileList[i]);
		//}
		$.ajax({
			url:'/product/uploadAjaxAction', // 서버로 요청을 보낼 url
			processData : false, // 서버로 전송될 데이터를 queryString 형태로 변환할지 여부
			contentType : false, // 서버로 전송되는 데이터의 content-type
			data : formData, // 서버로 전송할 데이터
			type: 'POST', // 서버 요청 타입(GET, POST)
			dataType : 'json', // 서버로부터 반환받을 데이터 타입
			success : function(result){
				console.log(result);
				showUploadImage(result);
			},
			error : function(result){
				alert("이미지 파일이 아닙니다.");
			}
		})
	});	
		
		// 이미지 삭제 버튼 클릭 시
	$("#uploadResult").on("click", ".imgDeleteBtn", function(e){
			deleteFile();
	});	
});


function fileCheck(fileName, fileSize){
	if(fileSize >= maxSize){
		alert("파일 사이즈 초과");
		return false;
	}
	if(!regex.test(fileName)){
		alert("해당 종류의 파일은 업로드 할 수 없습니다.");
		return false;
	}
	return true;
}

// 이미지 출력
function showUploadImage(uploadResultArr){
	if(!uploadResultArr || uploadResultArr.length == 0){return}
	
	let uploadResult = $("#uploadResult");
	
	let obj = uploadResultArr[0];
	
	let str = "";
	
	// 파일이름에 한글이 들어간 경우 UTF-8로 인코딩을 자동으로 해주지 않는 웹브라우저가 있기때문에 encodeURIComponent() 메서드로 인코딩해줌
	let fileCallPath = encodeURIComponent(obj.uploadPath.replace(/\\/g, '/') + "/s_" + obj.uuid + "_" + obj.fileName);
	
	str += "<div id = 'result_card'>";
	str += "<img src='/product/display?fileName=" + fileCallPath + "'>";
	str += "<div class='imgDeleteBtn' data-file = '" + fileCallPath + "'>x<div>";
	str += "<input type = 'hidden' name='imageList[0].fileName' value='" + obj.fileName + "'>";
	str += "<input type = 'hidden' name='imageList[0].uuid' value='" + obj.uuid + "'>";
	str += "<input type = 'hidden' name='imageList[0].uploadPath' value='" + obj.uploadPath + "'>";		
	str += "</div>";
	
	uploadResult.append(str);
}

// 파일 삭제 메서드
function deleteFile(){
	let targetFile = $(".imgDeleteBtn").data("file");
	
	let targetDiv = $("#result_card");
	
	$.ajax({
		url : '/product/deleteFile',
		data : {fileName : targetFile},
		dataType : 'text',
		type : 'POST',
		success : function(result){
			console.log(result);

			targetDiv.remove();
			$("input[type='file']").val("");
		},
		error : function(result){
			console.log(result);
			
			alert("파일을 삭제하지 못하였습니다.");
		}
	})
}

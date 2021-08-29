<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="form_section">
		<div class="form_section_title">
			<label>상품 이미지</label>
		</div>
		<div class="form_section_content">
			<input type="file" id="fileItem" name='uploadFile' style="height:30px;">
			<div id="uploadResult">
				
			</div>
		</div>
	</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script>
	$("input[type='file']").on("change", function(e){
		let formData = new FormData();
		let fileInput = $('input[name="uploadFile"]');
		let fileList = fileInput[0].files;
		let fileObj = fileList[0];
		
		
/* 		if(!fileCheck(fileObj.name, fileObj.size)){
			return false;
		} */
		formData.append("uploadFile", fileObj);
		//여러 파일을 선택할 수 있다면
		//for(let i = 0; i < fileList.length; i++){
		//	formData.append("uploadFile", fileList[i]);
		//}
		$.ajax({
			url:'/uploadAjaxAction', // 서버로 요청을 보낼 url
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
	
	let regex = new RegExp("(.*?)\.(jpg|png)$");
	let maxSize = 1048576; //1MB
	
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
		if(!uploadResulatArr || uploadResultArr.length == 0){return}
		
		let uploadResult = $("#uploadResult");
		
		let obj = uploadResultArr[0];
		
		let str = "";
		
		let fileCallPath = obj.uploadPath + "/s_" + obj.uuid + "_" + obj.fileName;
	}
	</script>	
</body>
</html>
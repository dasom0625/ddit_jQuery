<!--dataTypa.html-->


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel = "stylesheet" href = "../css/public.css">
<link href="https://fonts.googleapis.com/css2?family=Dongle&display=swap" rel="stylesheet">
<script src = "../js/jquery-3.6.0.min.js"></script>

<script>
$(function(){
	
<!------------------------------------------------------------------------------------>	
	xhr = new XMLHttpRequest();
	
	$('#text').on('click',function(){
		//응답
		xhr.onreadystatechange = function(){
			if(this.readyState == 4 && this.status == 200){ //4 : 요청된것이 처리되었다는 뜻.
				res = this.responseText;
				//이다솜/이정후/박다혜/안은실/솜솜/후후/달래/실실=>split를 이용해서 
				arr = res.split('/'); //=>/구분자를 이용해서 잘라서 배렬로 리턴
				
				code = "<ul>";
				$.each(arr,function(i){
					code += "<li>" + arr[i] + "</li>";
				})
				code += "</ul>";
				
				$('#d1').html(code);
			}
		}
		//요청
		xhr.open('get','text.jsp',true);
		xhr.send();
		
	})
<!------------------------------------------------------------------------------------>	
	$('#arr').on('click',function(){
		//요청(get)
		xhr.open("get","arr.jsp",true);
		xhr.send();
		//응답
		xhr.onreadystatechange = function(){ //반드시 소문자로 써야되는것 유의하기.
			if(this.readyState == 4 && this.status == 200){
				res = this.responseText;//res 에 들어있는 값 = ["솜솜","실실","후후","달래","작은병아리","닭"]
				//배열을 json형태로 바꾸기
				res = JSON.parse(res);
				
				code = "<ol>";
				$.each(res,function(i){
					code += "<li>" + res[i] + "</li>";
				})
				code += "</ol>";
				
				$('#d2').html(code);
				
			}
		}
	})
<!------------------------------------------------------------------------------------>	
	$('#jsobj').on('click',function(){
		
		//요청
		xhr.open('get','jsobj.jsp',true);
		xhr.send();
		//응답
		xhr.onreadystatechange = function(){
			if(this.readyState == 4 && this.status == 200){
				res = JSON.parse(this.responseText);
				
				code = "아이디 : " + res.id + "<br>";
				code += "이름 : " + res.name + "<br>";
				code += "주소 : " + res.addr + "<br>";
				code += "전화번호 : " + res.tel + "<br>";
			
				$('#d3').html(code);
			}
		}
	})	
<!------------------------------------------------------------------------------------>	
	$('#objarr').on('click',function(){
		
		//요청-objarr.jsp
		xhr.open('get','objarr.jsp',true);
		xhr.send();
		//응답
		xhr.onreadystatechange = function(){
			if(this.readyState == 4 && this.status == 200){
				res = JSON.parse(this.responseText);
					code ="";
				$.each(res,function(i){
					code += "이      름 : " + res[i].name+"<br>";
					code += "주      소 : " + res[i].addr+"<br>";
					code += "전화번호  : " + res[i].tel+"<br>";
					code += "<hr>";
				})
				
				$('#d4').html(code);
				
			}
		}
		
	})
	
	
	
	
})
</script>

</head>
<body>

<pre></pre>
<input type="button" value="text데이터" id="text">
<input type="button" value="json배열데이터" id="arr">
<input type="button" value="jsonObj데이터" id="jsobj">
<input type="button" value="obj배열데이터" id="objarr">
<br><br>
<div id = "d1"></div>
<div id = "d2"></div>
<div id = "d3"></div>
<div id = "d4"></div>
</body>
</html>


////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
<!--text.jsp-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 요청시 데이터를 받아서 
// CRUD처리하기
// 처리 결과로 응답데이터를 생성한다. =>text

%>
이다솜/이정후/박다혜/안은실/솜솜/후후/달래/실실

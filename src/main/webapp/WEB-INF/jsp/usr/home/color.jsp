<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>

<div class="colorList">
  <button class="white">흰색</d>
  <button class="brown">갈색</d>
</div>


<div class="bgImg">
  <img class ="carImg" src="https://www.hyundai.com/contents/vr360/MX03/exterior/WW2/001.png" alt=""> 
</div>
</body>

<style>
.bgImg {
  background-image: url('https://www.hyundai.com/static/images/model/santafe/23fc/the_all_new_santafe_colors_exterior_bg.jpg');
  
    width:1000px;
  height: 500px;
}
</style>

<script>
$(".white").on("click",function() {
	
	   $(".carImg").attr("src", "https://www.hyundai.com/contents/vr360/MX03/exterior/WW2/001.png");
	})

	$(".brown").on("click",function() {
	   $(".carImg").attr("src", "https://www.hyundai.com/contents/vr360/MX03/exterior/YBM/001.png");
	})
</script>

</html>
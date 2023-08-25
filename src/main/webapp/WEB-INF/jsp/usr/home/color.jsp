<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>

<div class="bgImg">
  <img class ="carImg" src="https://www.hyundai.com/contents/vr360/MX03/exterior/WW2/001.png" alt=""> 
</div>


<div class="colorList">
 <c:forEach items="${carDetail}" var="carDetail">
  <div id="${carDetail.color}" class="${carDetail.color}" >날 눌러라</div>
  
  </c:forEach>
</div>


</body>

<style>
.bgImg {
  background-image: url('https://www.hyundai.com/static/images/model/santafe/23fc/the_all_new_santafe_colors_exterior_bg.jpg');
  
    width:1000px;
  height: 500px;
}
.colorList{
display:flex;
}
.colorList> div{
   width: 50px;
   height:50px;
   border: 1px solid black;
   margin: 0 20px; 
 

}
<c:forEach items="${carDetail}" var="carDetail">

  
 #${carDetail.color}{
 background-color:${carDetail.color}
 }

 </c:forEach>


</style>



<script>
<c:forEach items="${carDetail}" var="carDetail">
      $(".${carDetail.color}").on("click",function() {
	
	   $(".carImg").attr("src", "${carDetail.imgUrl}");
	  })
</c:forEach>






</script>

</html>
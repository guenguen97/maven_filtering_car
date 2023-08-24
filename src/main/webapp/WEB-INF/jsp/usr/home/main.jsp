<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">

<body>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<form action="/" method="post">
		<div>
			<p>차량 크기</p>
			<div>
				<input id="check-box" type="checkbox" name="size" value="경차">
				<label id="choice">경차</label>
			</div>
			<div>
				<input id="check-box" type="checkbox" name="size" value="준중형">
				<label id="choice">준중형</label>
			</div>
			<div>
				<input id="check-box" type="checkbox" name="size" value="중형">
				<label id="choice">중형</label>
			</div>
			<div>
				<input id="check-box" type="checkbox" name="size" value="대형">
				<label id="choice">대형</label>
			</div>
			<div>
				<input id="check-box" type="checkbox" name="size" value="소형SUV">
				<label id="choice">소형SUV</label>
			</div>
			<div>
				<input id="check-box" type="checkbox" name="size" value="중형SUV">
				<label id="choice">중형SUV</label>
			</div>
			<div>
				<input id="check-box" type="checkbox" name="size" value="대형SUV">
				<label id="choice">대형SUV</label>
			</div>
		</div>

		<div>
			<p>엔진</p>
			<div>
				<input id="check-box" type="checkbox" name="engine" value="가솔린">
				<label id="choice">가솔린</label>
			</div>
			<div>
				<input id="check-box" type="checkbox" name="engine" value="LPG">
				<label id="choice">LPG</label>
			</div>
			<div>
				<input id="check-box" type="checkbox" name="engine" value="하이브리드">
				<label id="choice">하이브리드</label>
			</div>
			<div>
				<input id="check-box" type="checkbox" name="engine" value="디젤">
				<label id="choice">디젤</label>
			</div>
			<div>
				<input id="check-box" type="checkbox" name="engine" value="전기차">
				<label id="choice">전기차</label>
			</div>
		</div>

		<div>
			<p>배기량</p>
			<div>
				<input id="check-box" type="checkbox" name="displacement" value="1500">
				<label id="choice">1500cc 이하</label>
			</div>
			<div>
				<input id="check-box" type="checkbox" name="displacement" value="2500">
				<label id="choice">2500cc 이하</label>
			</div>
			<div>
				<input id="check-box" type="checkbox" name="displacement" value="3501">
				<label id="choice">3500cc 이하</label>
			</div>
		</div>

		<div>
			<p>가격</p>
			<div>
				<input id="check-box" type="checkbox" name="maxPrice" value="1500">
				<label id="choice">1500만원 이하</label>
			</div>
			<div>
				<input id="check-box" type="checkbox" name="maxPrice" value="3000">
				<label id="choice">3000만원 이하</label>
			</div>
			<div>
				<input id="check-box" type="checkbox" name="maxPrice" value="4000">
				<label id="choice">4000만원 이하</label>
			</div>
			<div>
				<input id="check-box" type="checkbox" name="maxPrice" value="5000">
				<label id="choice">5000만원 이하</label>
			</div>
			<div>
				<input id="check-box" type="checkbox" name="maxPrice" value="6000">
				<label id="choice">6000만원 이하</label>
			</div>
			<div>
				<input id="check-box" type="checkbox" name="maxPrice" value="1000000">
				<label id="choice">열라비싼거</label>
			</div>
		</div>

		<div>
			<button type="submit"> 검색 </button>
		</div>

	</form>

	<!--    <div>-->
	<!--        <table>-->
	<!--            <thead>-->
	<!--            <tr>-->
	<!--                <th>#</th>-->
	<!--                <th>이름</th>-->
	<!--            </tr>-->
	<!--            </thead>-->
	<!--            <tbody>-->
	<!--            <tr th:each="article : ${articles}">-->
	<!--                <td th:text="${article.img_url}"></td>-->
	<!--            </tr>-->
	<!--            </tbody>-->
	<!--        </table>-->
	<!--    </div>-->
 <br><br>
 <button id="prevBtn">Previous</button>
  <button id="nextBtn">Next</button>
 
	<div id="slider-container">
		<div id="slider" style="transform: translateX(0px);">
            <c:forEach items="${cars}" var="car">
            <tr>
              <div class="slide">
                <img src="${car.imgUrl}">
              </div>
             </tr>
             </c:forEach>
      </div>
	</div>
	

</body>

</html>

<style>
	body>form>div {
		display: inline-block;
		margin: 0 20px;
	}

	#slider-container {
		width: 1000px;
		overflow: hidden;
		position: relative;
    margin-left:auto;
    margin-right:auto;
	}

	#slider {
		display: flex;
		transition: transform 0.3s ease-in-out;
  
	}

	.slide {
		flex: 0 0 300px;
	}

	img {
		width: 1000px;
		height: 500px;
	}

	[id^="check-box"] {
		
	}

	[id^="choice"] {
		font-size: 20px;
	}
</style>



 <script type="text/javascript">
 const slider = document.getElementById("slider");
 const prevBtn = document.getElementById("prevBtn");
 const nextBtn = document.getElementById("nextBtn");
 const slideWidth = 1000; // Adjust to your image width

 let currentSlide = 0;

 prevBtn.addEventListener("click", () => {
 	currentSlide = Math.max(currentSlide - 1, 0);
 	updateSliderPosition();
 });

 nextBtn.addEventListener("click", () => {
	 
	 currentSlide = Math.min(currentSlide + 1, slider.children.length - 1);
 	updateSliderPosition();
 	
 });

 function updateSliderPosition() {
 	const offset = -currentSlide * slideWidth;
    slider.style.transform = 'translateX(' + offset + 'px)';
 	console.log(offset);
 	
 }






$(document).ready(function () {
	// Select all divs with IDs starting with "button"
	var choice = $("label[id^='choice']");

	// Select checkboxes with IDs starting with "box"
	// var checkBox = $("input[type='checkbox'][id^='check-box']");

	// Attach a click event handler to the selected divs
	choice.click(function () {
		// Toggle the color of the text
		var checkBox = $(this).prev("input[type='checkbox']");
		if ($(this).css("color") === "rgb(0, 0, 255)") {
			$(this).css("color", "black");
			checkBox.prop("checked", false);
		} else {
			$(this).css("color", "blue");
			checkBox.prop("checked", true);
		}
	});
});





</script>  
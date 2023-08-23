<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script>

const slider = document.getElementById("slider");
const prevBtn = document.getElementById("prevBtn");
const nextBtn = document.getElementById("nextBtn");
const slideWidth = 300; // Adjust to your image width

let currentSlide = 0;

prevBtn.addEventListener("click", () => {
	currentSlide = Math.max(currentSlide - 1, 0);
	updateSliderPosition();
	alert("SAda");
});

nextBtn.addEventListener("click", () => {
	currentSlide = Math.min(currentSlide + 1, slider.children.length - 1);
	updateSliderPosition();
});

function updateSliderPosition() {
	const offset = -currentSlide * slideWidth;
	slider.style.transform = `translateX(${offset}px)`;
}

</script>

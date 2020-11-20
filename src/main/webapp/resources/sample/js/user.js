<script>
/*	자바스크립트 시작	*/
//네이티브 자바스크립트로 햄버거 메뉴 클릭하기
/* var menu_toggle_btn = document.getElementsByClassName("menu-toggle-btn");
menu_toggle_btn[0].onclick = function() {
	alert('네이티브 js로 햄버거 메뉴를 클릭했습니다.');
} */

//j쿼리 기본형식 사용//
$(document).ready(function() {
	$(".menu-toggle-btn").click(function(){
		/* //alert("제이쿼리로 햄버거 메뉴를 클릭하였습니다.");// */
		$(".gnb").stop().slideToggle("fast");//j쿼리 함수는 뒤에서 앞으로 해석하시면 됩니다.
	});
});
/*	자바스크립트 끝	*/ 
</script>
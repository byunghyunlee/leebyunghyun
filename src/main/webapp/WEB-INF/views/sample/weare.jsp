<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%@ include file="./include/header.jsp" %>
    
    
		<section class="weare-section">
			<!-- division디비전이라는 div 영역표시 태그 대신에 사용 -->

			<section class="weare-header">
				<h1 class="section-title">우리는</h1>
				<p>
					"#PIZZA DOG OPEN[Since 2020]"<br>
					<!-- break중지 return엔터  줄바꿈태그-->
					"저희 피자독은 100% 자연 모짜렐라치즈를 사용하며 당일 쓸신선한 재료를 손질하고
					주방은 항상 청결하게 유지하기 위해 늘 위생에 신경쓰고 있습니다."<br>
					"고객님들께 실망 시켜드리지 않고 더욱 더 맛있는 피자를 드실 수 있도록 최선을 다하는 피자독이 되겠습니다. <span
						class="bow">멍멍</span>!!

				</p>
			</section>
			<!-- 겔러리게시판에서 가져오는 데이터 4개 반복영역(아래) -->
			<section class="weare-body float-clear">
				<ul>
					<li><a href="javascript:;"> <!-- a링크태그의 가상링크# 대신에 javascript:; 입니다. -->
							<img src="/resources/sample/img/big4.jpg" alt="도그쇼챔피언 BIG4">
							<h2>도그쇼 BIG4</h2>
							<p>피자독의 시그니쳐메뉴 네가지맛</p>
					</a></li>
					<li><a href="javascript:;"> <!-- a링크태그의 가상링크# 대신에 javascript:; 입니다. -->
							<img src="/resources/sample/img/goguma.jpg" alt="달콤딥고구마">
							<h2>달콤딥고구마</h2>
							<p>한입가득 퍼지는 달다구리함의 끝판왕</p>
					</a></li>
					<li><a href="javascript:;"> <!-- a링크태그의 가상링크# 대신에 javascript:; 입니다. -->
							<img src="/resources/sample/img/shrimp.jpg" alt="불타는왕새우닭">
							<h2>불타는왕새우닭</h2>
							<p>통통한 왕새우와 핫치킨의 조합 맛있게 매운피자</p>
					</a></li>
					<li><a href="javascript:;"> <!-- a링크태그의 가상링크# 대신에 javascript:; 입니다. -->
							<img src="/resources/sample/img/redhot.jpg" alt="레드핫페퍼로니">
							<h2>레드핫페퍼로니</h2>
							<p>맛있게 매운 페퍼로니와 할라피뇨의 조합</p>
					</a></li>
				</ul>
			</section>

		</section>
    
    
    <%@ include file="./include/footer.jsp" %>
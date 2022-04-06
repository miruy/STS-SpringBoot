<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BiBlet 도서 상세/평가</title>
</head>
<body>


	<c:if test="${!empty book}">
		<table border="1">
			<tr>
				<th>일련번호</th>
				<th>도서 이름</th>
				<th>출판사</th>
				<th>저자</th>
				<th>제작년도</th>
				<th>총 페이지</th>
				<th>카테고리</th>
				<th>연령등급</th>
				<th>줄거리</th>
				<th>표지</th>
			</tr>

			<tr>
				<td>${book.isbn}</td>
				<td>${book.book_name}</td>
				<td>${book.publisher}</td>
				<td>${book.author}</td>
				<td>${book.produc_year}</td>
				<td>${book.book_page}</td>
				<td>${book.book_category}</td>
				<td>${book.age_grade}</td>
				<td>${book.book_sum}</td>
				<td>${book.book_cover}</td>
			</tr>
		</table>
	</c:if>
	
	<br>
	
	<form method="post" commandName="commentCmd">
		<table border="1">
			<tr>
				<th>별점</th>
				<td>
					<div class="star-rating space-x-4 mx-auto">
						<input type="radio" id="5-stars" name="rating" value="5" v-model="ratings"/>
						<label for="5-stars" class="star pr-4">1점(지울 예정)</label>
						<input type="radio" id="4-stars" name="rating" value="4" v-model="ratings"/>
						<label for="4-stars" class="star">2점(지울 예정)</label>
						<input type="radio" id="3-stars" name="rating" value="3" v-model="ratings"/>
						<label for="3-stars" class="star">3점(지울 예정)</label>
						<input type="radio" id="2-stars" name="rating" value="2" v-model="ratings"/>
						<label for="2-stars" class="star">4점(지울 예정)</label>
						<input type="radio" id="1-star" name="rating" value="1" v-model="ratings" />
						<label for="1-star" class="star">5점(지울 예정)</label>
					</div>
				</td>
			</tr>

			<tr>
				<th>평가</th>
				<td><textarea name="book_comment"></textarea></td>
			</tr>

			<tr>
				<th>구독 시작 날짜</th>
				<td><input type="date" name="start_date" /></td>
			</tr>

			<tr>
				<th>구독 완료 날짜</th>
				<td><input type="date" name="end_date" /></td>
			</tr>

			<tr>
				<th>평가 공개 여부</th>
				<td><input type="checkbox" name="co_prv" value="공개" />공개 <input
					type="checkbox" name="co_prv" value="비공개" />비공개</td>
			</tr>
		</table>

		<input type="submit" value="도서 평가 등록">
	</form>

</body>
</html>












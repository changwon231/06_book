<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table, th, td {
		border : 1px soild black;
	}
	
</style>

</head>
<body>

<h3>책 목록 출력</h3>
<table>
	<tr>
		<th>일련번호</th>
		<th>도서제목</th>
		<th>저자</th>
		<th>가격</th>
		<th>&nbsp;</th>
	</tr>
	<c:if test="${empty books}">
		<tr>
			<td colspan="5">조회된 도서 정보가 없습니다.</td>
		</tr>
	</c:if>
	<c:forEach var="book" items="${requestScope.books}">
		<tr>
			<td>${book.bookSeq}</td>
			<td>${book.title}</td>
			<td>${book.author}</td>
			<td>
			<fmt:formatNumber value="${book.price}" type="number"/>
			</td>
			<td>&nbsp;</td>
		</tr>
	
	</c:forEach>
	
</table>

</body>
</html>
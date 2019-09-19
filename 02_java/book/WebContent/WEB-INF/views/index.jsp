<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서관리 메인</title>
<style type="text/css">
	table, th, td{
		border : 1px solid black;
	
	}

</style>
</head>
<body>
<table>
	<tr>
		<td colspan="2">
			<!-- 페이지 해더 영역 -->
			<jsp:include page="/header"/>
		</td>
	</tr>
	<tr>
		<td>
			<!-- 페이지 메뉴 영역 -->
			<jsp:include page="/menu"></jsp:include>
		</td>
		<td>
			<!-- 페이지 컨턴트 영역 
				도서 목록 보기
				도서 정보 입력
				도서 정보 상세보기
				도서 정보 수정하기
				등의 화면들이 동적으로 변경될 위치 
			-->
		<c:choose>
			<c:when test="${empty requestScope.content}">
				초기 화면입니다....
			</c:when>
			<c:otherwise>
				<jsp:include page="${content}"/>
			</c:otherwise>
		</c:choose>
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<!-- 페이지 푸터 영역 -->
			<jsp:include page="/footer"/>
		</td>
	</tr>
</table>
</body>
</html>
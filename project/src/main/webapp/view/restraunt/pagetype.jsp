<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${pageResult.prev eq true}">
	<div class="prev">
		<a href="${param.link}?pageNo=${pageResult.beginPage - 1}">이전</a>
	</div>
	</c:if>
	<c:forEach var="i" begin="${pageResult.beginPage}" end="${pageResult.endPage}">
		<div>
			<a href="${param.link}pageNo=${i}">${i}</a>
		</div>
	</c:forEach>
	<c:if test="${pageResult.next eq true}">
	<div class="next">
		<a href="${param.link}?pageNo=${pageResult.endPage + 1}">다음</a>
	</div>
</c:if>
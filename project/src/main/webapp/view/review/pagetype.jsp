<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${page.prev eq true}">
	<div class="prev">
		<a href="${param.link}?pageNo=${page.beginPage - 1}">이전</a>
	</div>
	</c:if>
	<c:forEach var="i" begin="${page.beginPage}" end="${page.endPage}">
		<div>
			<a href="${param.link}?pageNo=${i}">${i}</a>
		</div>
	</c:forEach>
	<c:if test="${page.next eq true}">
	<div class="next">
		<a href="${param.link}?pageNo=${page.endPage + 1}">다음</a>
	</div>
</c:if>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div>
		<nav aria-label="Page navigation example">
		<ul class="pagination">
			<li class="page-item"><a class="page-link" href="javascript:goPage(${info.prePage==0?1:info.prePage })"
				aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
			</a></li>
			<c:forEach items="${info.navigatepageNums}" var="n">
				<li class="page-item ${n==info.pageNum?"active":""}"><a class="page-link" href="javascript:goPage(${n})">${n}</a></li>
			</c:forEach>

			<li class="page-item"><a class="page-link" href="javascript:goPage(${info.nextPage ==0?info.pages:info.nextPage})"
				aria-label="Next"> <span aria-hidden="true">&raquo;</span>
			</a></li>
		</ul>
	</nav>

</div>

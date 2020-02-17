<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title></title>
<!-- 引入 css -->
<link rel="stylesheet" type="text/css"
	href="/resource/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="/resource/css/index.css">
<!-- 引入js -->
<script type="text/javascript" src="/resource/js/jquery-3.2.1.js"></script>
<!-- 引入js -->
<script type="text/javascript" src="/resource/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">

		<c:forEach items="${info.list}" var="collect">
			<dl>
				<dt><a href="${collect.url}" target="_blank">${collect.text}</a></dt>
				<dd><fmt:formatDate value="${collect.created}" pattern="yyyy-MM-dd HH:mm:ss"/>  &nbsp;
				 <button type="button" class="btn btn-warning btn-sm" onclick="unCollect(${collect.id})">取消收藏</button></dd>
			</dl>
			<hr>
		</c:forEach>
		
	<jsp:include page="/WEB-INF/view/common/pages.jsp"/>
	</div>



</body>
<script type="text/javascript">
//取消收藏
function unCollect(id){
	
	$.post("/unCollect",{id:id},function(flag){
		
		if(flag){
			$("#center").load("/my/collect");
		}
		
	})
}

function goPage(page){
	
	$("#center").load("/my/collect?page="+page)
}


</script>
</html>
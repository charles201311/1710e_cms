<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${article.title }</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no"
<!-- 引入 css -->
<link rel="stylesheet" type="text/css"
	href="/resource/css/bootstrap.css">
<!-- 引入js -->
<script type="text/javascript" src="/resource/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/resource/js/jquery-3.2.1.js"></script>

</head>

<body class="container">
	<div>
		<h2>${article.title }</h2>
		<p>${article.user.username} <fmt:formatDate value="${article.created }" pattern="yyyy-MM-dd HH:mm:ss"/> </p>
	</div>

	<hr>
	<div>${article.content }</div>


	</div>
</body>

</html>
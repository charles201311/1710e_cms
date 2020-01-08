<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<!-- 引入 css -->
<link rel="stylesheet" type="text/css"
	href="/resource/css/bootstrap.css">
<!-- 引入js -->
<script type="text/javascript" src="/resource/js/jquery-3.2.1.js"></script>
<script type="text/javascript">
	function query() {
		$("#center").load("/admin/user/users?" + $("#form1").serialize())
	}
	//翻页
	function goPage(page) {
		$("#center")
				.load("/admin/user/users?page=" + page + "&" + $("#form1").serialize());

	}
	//更新用户状态
	//obj:按钮对象，id： 用户id
	function update(obj,id){
		//0：正常  1： 禁用
		var locked=$(obj).text()=="禁用"?"0":"1";
	//	alert($(obj).text())
		
		$.post("/admin/user/update",{id:id,locked:locked},function(flag){
			if(flag){
				$(obj).text($(obj).text()=="禁用"?"正常":"禁用");//改变按钮的内容
				//alert($(obj).text())
				$(obj).attr("class",$(obj).text()=="禁用"?"btn btn-danger":"btn btn-success");//改变按钮的颜色
			}
		})
		
	}
</script>
</head>

<body class="container">
	<div>
		<form id="form1">
			用户名:<input type="text" name="username" value="${user.username }">
			状态：<select name="locked">
				<option value="" ${user.locked==""?"selected":"" }>全部</option>
				<option value="0" ${user.locked=="0"?"selected":"" }>正常</option>
				<option value="1" ${user.locked=="1"?"selected":"" }>禁用</option>

			</select>
			<button type="button" onclick="query()" class="btn btn-warning">查询</button>

		</form>

	</div>
	<table class="table table-hover table-striped table-bordered" style="text-align: center;">
		<tr>
			<td>序号</td>
			<td>用户名</td>
			<td>性别</td>
			<td>生日</td>
			<td>注册日期</td>
			<td>用户状态</td>
		</tr>

		<c:forEach items="${info.list}" var="u" varStatus="i">
			<tr>
				<td>${i.count}</td>
				<td>${u.username}</td>
				<td>${u.gender=="1"?"男":"女"}</td>
				<td><fmt:formatDate value="${u.birthday}" pattern="yyyy-MM-dd" />
				</td>
				<td><fmt:formatDate value="${u.created}"
						pattern="yyyy-MM-dd HH:mm:ss" /></td>
				<td>
				 <c:if test="${u.locked==0}">
				  <button type="button" class="btn btn-success" onclick="update(this,${u.id})">正常</button>
				 
				 </c:if>
				  <c:if test="${u.locked==1}">
				  <button type="button" class="btn btn-danger" onclick="update(this,${u.id})">禁用</button>
				 
				 </c:if>
				
				</td>
			</tr>

		</c:forEach>
		<tr>
			<td colspan="10" ><jsp:include
					page="/WEB-INF/view/common/pages.jsp"></jsp:include></td>
		</tr>

	</table>





</body>

</html>
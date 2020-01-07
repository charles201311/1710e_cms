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
</head>
<body>
 <div>
  <form action="/users" method="post">
    用户名:<input type="text" name="username" value="${user.username }">
    状态：<select name="locked">
     <option value="" ${user.locked==""?"selected":"" }>全部</option>
     <option value="0"  ${user.locked=="0"?"selected":"" }>正常</option>
     <option value="1" ${user.locked=="1"?"selected":"" }>禁用</option>
    
    </select>
    <button type="submit" class="btn btn-warning">查询</button>
  
  </form>
 
 </div>
<table class="table table-hover table-striped">
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
  <td><fmt:formatDate value="${u.birthday}" pattern="yyyy-MM-dd"/> </td>
  <td><fmt:formatDate value="${u.created}" pattern="yyyy-MM-dd HH:mm:ss"/> </td>
  <td>${u.locked=="1"?"禁用":"正常"}</td>
  </tr>
 
 </c:forEach>
 <tr>
  
 </tr>

</table>





</body>
</html>
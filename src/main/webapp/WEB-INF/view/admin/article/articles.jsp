<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"
<title></title>
<!-- 引入 css -->
<link rel="stylesheet" type="text/css"
	href="/resource/css/bootstrap.css">
<!-- 引入js -->
<script type="text/javascript" src="/resource/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/resource/js/jquery-3.2.1.js"></script>
<script type="text/javascript">
	function query() {
		$("#center").load("/admin/article/articles?" + $("#form1").serialize())
	}
	//翻页
	function goPage(page) {
		$("#center")
				.load("/admin/article/articles?page=" + page + "&" + $("#form1").serialize());

	}
	//更新文章热点状态
	//obj:按钮对象，id： 文章id
	function update(obj,id){
		//0：非热点 1： 热点
		var hot=$(obj).text()=="否"?"1":"0";
		
		$.post("/admin/article/update",{id:id,hot:hot},function(flag){
			if(flag){
				$(obj).text($(obj).text()=="否"?"是":"否");//改变按钮的内容
				//alert($(obj).text())
				$(obj).attr("class",$(obj).text()=="是"?"btn btn-danger":"btn btn-success");//改变按钮的颜色
			}
		})
		
	}
	
	//文章详情，在模态框框中展示文章内容
	var articleId;
	function articleDetail(id){
	  // $("#myModal").load("");	
	    $.get("/admin/article/select",{id:id},function(article){
	    	$("#myModal").empty();
	    	$("#articleTitle").append(article.title);
	    	$("#myModal").append(article.content);
	    	articleId=id;
	    	//清空审核信息
	    	$("#msg").text("");
	    })
	}
	
	//更新文章状态
	function updateStatus(status){
		$.post("/admin/article/update",{id:articleId,status:status},function(flag){
			if(flag){
				$("#msg").text("审核成功")
			}else{
				$("#msg").text("审核失败")
			}
		})
		
	}
	
	
</script>


</head>

<body >
	<div class="container">
		<form id="form1">
			文章标题:<input type="text" name="title" value="${article.title }">
			状态：<select name="status">
				<option value="" ${article.status==""?"selected":"" }>全部</option>
				<option value="0" ${article.status=="0"?"selected":"" }>待审</option>
				<option value="1" ${article.status=="1"?"selected":"" }>已审</option>
				<option value="9" ${article.status=="1"?"selected":"" }>驳回</option>

			</select>
			<button type="button" onclick="query()" class="btn btn-warning">查询</button>

		</form>

	</div>
	<table class="table table-hover table-striped table-bordered" style="text-align: center;">
		<tr>
			<td>序号</td>
			<td width="300px">文章标题</td>
			<td>作者</td>
			<td>发布时间</td>
			<td>文章状态</td>
			<td>所属栏目</td>
			<td>热门文章</td>
			<td>详 情</td>
		</tr>

		<c:forEach items="${info.list}" var="article" varStatus="i">
			<tr>
				<td>${i.count}</td>
				<td>${article.title}</td>
				<td>${article.user.username}</td>
				<td><fmt:formatDate value="${article.created}" pattern="yyyy-MM-dd HH:mm:ss" />
				</td>
			
			   <td>${article.status=="0"?"待审":article.status=="1"?"已审":"驳回" }</td>
			   <td>${article.channel.name }</td>
				<td>
				 <c:if test="${article.hot==0}">
				  <button type="button" class="btn btn-success" onclick="update(this,${article.id})">否</button>
				 
				 </c:if>
				  <c:if test="${article.hot==1}">
						<button type="button" class="btn btn-danger" onclick="update(this,${article.id})">是</button>
				 </c:if>
				</td>
				<td><button type="button" class="btn btn-primary" data-toggle="modal" 
				data-target="#exampleModalLong" onclick="articleDetail(${article.id})"> 详情</button></td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="10" ><jsp:include
					page="/WEB-INF/view/common/pages.jsp"></jsp:include></td>
		</tr>
	</table>
</div>


<!-- Button trigger modal -->


<!-- Modal -->
<div  class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog modal-lg modal-dialog-scrollable" role="document" >
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle"> <span  id="articleTitle"></span></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body" id="myModal">
        
      </div>
      <div class="modal-footer">
        <span id="msg"></span>
       <button type="button" class="btn btn-success" onclick="updateStatus(1)">同意</button>
       <button type="button" class="btn btn-warning" onclick="updateStatus(9)">驳回</button>
      </div>
    </div>
  </div>
</div>
</body>

</html>
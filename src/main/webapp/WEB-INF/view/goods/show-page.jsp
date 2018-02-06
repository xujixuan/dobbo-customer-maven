<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

	<!-- 引入jquery -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery/jquery-1.11.3.min.js"></script>
	<!-- 引入dialog -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/js/artDialog-master/css/ui-dialog.css">
	<script src="<%=request.getContextPath()%>/js/artDialog-master/dist/dialog-plus-min.js"></script>
	

</head>
<body>
	<center>
		<input type="button" value="添加" onclick="toAddPage()">
		<div id="query_goods_div"></div>
	</center>
</body>
<script type="text/javascript">
	function getPage(){
		$.ajax({
			url:"<%=request.getContextPath()%>/goods/selectGoods.do",
			type:"post",
// 			data:$("#list_goods_form").serialize(),//表单序列化提交
			dataType:"text",//规定返回值格式
		  	async:false,
		//  data:{"userId":id},
			success:function (data){//成功回调函数
				$("#query_goods_div").html(data);
			},
			error :function(){//错误回调函数
			alert("系统异常！")
			}
		});
	}
	getPage();
	
	function toAddPage(){
		var addHtml="";
		$.ajax({
			url:"<%=request.getContextPath()%>/goods/toAddPage.do",
			type:"post",
			//data:$("#add_goods_form").serialize(),//表单序列化提交
			dataType:"text",//规定返回值格式
          	async:false,
//          data:{"userId":id},
			success:function (data){//成功回调函数
				data=addHtml;
			},
			error :function(){//错误回调函数
			alert("系统异常！")
			}
		});
		
		var add_from = dialog({
			title: '添加商品',
			content: addHtml,
			okValue: '确 定',
			ok: function () {
				addGoods();
			},
			cancelValue: '取消',
			cancel: function () {
				this.title('已经取消..',1);
			}
		});
		add_from.showModal();
	}
</script>
</html>
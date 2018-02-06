<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<center>
	<table border="1px">
		<tr align="center">
			<td>商品编号</td>
			<td>商品名称</td>
			<td>商品价格</td>
			<td>商品库存</td>
			<td>商品日期</td>
			<td>商品类型</td>
			<td>商品图片</td>
		</tr>
		<c:forEach items="${goods }" var="goods">
			<tr align="center">
				<td>${goods.goodsId }</td>
				<td>${goods.goodsName }</td>
				<td>${goods.goodsPrice }</td>
				<td>${goods.goodsCount }</td>
				<td>${goods.goodsTime }</td>
				<td>
					<c:if test="${goods.goodsTypeId==1 }">电子数码</c:if>
					<c:if test="${goods.goodsTypeId==2 }">生活用品</c:if>
					<c:if test="${goods.goodsTypeId==3 }">体育用品</c:if>
					<c:if test="${goods.goodsTypeId==4 }">户外运动</c:if>
					<c:if test="${goods.goodsTypeId==5 }">儿童用品</c:if>
				</td>
				<td>${goods.goodsImg }</td>
			</tr>
		</c:forEach>
		
	</table>
</center>

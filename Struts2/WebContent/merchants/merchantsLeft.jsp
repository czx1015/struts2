<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="s" uri="/struts-tags" %>


你好！<s:property value="#session.user.name" /> &nbsp;商家&nbsp;&nbsp;

<a href="/Struts2/index.jsp">注销</a>


<div class="page">
	<section class="demo">
		<ul class="menu">
			<li><a href="<s:url value="user/merchantsIndex"/>"><strong>首页</strong></a>
			<br>
			<li><a href="<s:url value="type/selectMerchantsTypes"/>?id=<s:property value="#session.user.id"/>"><strong>商品管理</strong></a>
			<br>
			<li><a href="<s:url value="order/selectTypeOrders"/>?id=<s:property value="#session.user.id"/>"><strong>我的订单</strong></a>
			<br>
			<li><a href="<s:url value="collect/selectCollect"/>?id=<s:property value="#session.user.id"/>"><strong>我的收藏</strong></a>
			<br>
			<li><a	href="<s:url value="order/storerooms"/>?id=<s:property value="#session.user.id"/>"><strong>出/入库</strong></a>
			<br>
			<li><a	href="<s:url value="order/statistics"/>?id=<s:property value="#session.user.id"/>"><strong>库房统计</strong></a>
			<br>
			<li><a href="<s:url value="/user/selectUser"/>?id=<s:property value="#session.user.id"/>"><strong>修改个人信息</strong></a>
		</ul>
	</section>

</div>

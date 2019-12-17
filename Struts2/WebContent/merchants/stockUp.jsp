<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<title>index.html</title>
<link rel="stylesheet" type="text/css" href="/Struts2/css/main.css">
<script src="/Struts2/js/fun.js" type="text/javascript"></script>
<script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>
<script type="text/javascript">
   //提交检验
	function checkForm(form) {
	var num = parseInt(input_num.value);
	var patrn = /^[1-9][0-9]*$/;
	 if (!patrn.test(num)) {
		alert("请填写商品数量！");
		return false;
	}  
	 else {
		return true;
	}
}
</script>
<style type="text/css">
.box {
	text-align: center;
}

　　　　　　* {
	margin: 0;
	padding: 0;
	border: 0;
	outline: 0
}

ul, li {
	list-style: none;
}

a {
	text-decoration: none;
}

a:hover {
	cursor: pointer;
	text-decoration: none;
}

a:link {
	text-decoration: none;
}

img {
	vertical-align: middle;
}

li .number, .kucun {
	display: inline-block;
	font-size: 12px;
	color: #808080;
	vertical-align: sub;
}

.count .num-jian, .input-num, .num-jia {
	display: inline-block;
	width: 28px;
	height: 28px;
	line-height: 28px;
	text-align: center;
	font-size: 18px;
	color: #999;
	cursor: pointer;
	border: 1px solid #e6e6e6;
}
</style>
</head>
<body>
	<div class="main">
		<div class="main_left" id="frmTitle">
			<jsp:include page="merchantsLeft.jsp" />
		</div>
		<div class="picBox" onclick="switchSysBar()" id="switchPoint"></div>
		<div class="main1">
			<h1>进货页</h1>
			<div class="box">
				商品名称:
				<s:property value="type.name" />
				商品简介:
				<s:property value="type.introduction" />
				<br />
				<br /> 商品图片:<img style="height: 50px"
					src="${pageContext.request.contextPath}/image/<s:property value="type.imageFileName"/>">
				<br>
				<br> 商品价格：
				<s:property value="type.price" />
				<br />
				<br />
				<ul class="count">
					<li><form action="upOrder" method="post" onsubmit="return checkForm(this)">
							<input type="text" hidden="hidden" name="id" value="<s:property value="#session.user.id"/>">
							<input
								type="text" hidden="hidden" name="order.ty_id"
								value="<s:property value="type.id"/>"> <input
								type="text" name="order.us_id" hidden="hidden"
								value="<s:property value="#session.user.id"/>"> <input
								type="text" hidden="hidden" name="order.me_id"
								value="<s:property value="type.us_id"/>"> <input
								type="text" hidden="hidden" name="order.tag" value="1" /> <input
								hidden="hidden" type="text" id="name" name="order.name"
								value="进货" /><br> <input id="phone" hidden="hidden"
								type="text" name="order.phone" value="0" /><br> <input
								type="text" hidden="hidden" id="address" name="order.address"
								value="进货" /><br>
							<br> <input type="text" hidden="hidden" name="type.id"
								value="<s:property value="type.id"/>"> <span
								id="num-jian" class="num-jian">-</span>&nbsp;&nbsp;&nbsp; <input
								class="input-num" id="input-num" name="order.number" value="0"
								style="color: red; width: 50px;" />&nbsp;&nbsp;&nbsp; <span
								id="num-jia" class="num-jia">+</span> <span class="kucun">（库存:<s:property
									value="type.number" />）
							</span><br>
							<br> <input type="submit" onclick="false" value="立即进货" />
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
								type="reset" value="重填" />
						</form></li>
				</ul>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
  var num_jia = document.getElementById("num-jia");
  var num_jian = document.getElementById("num-jian");
  var input_num = document.getElementById("input-num");

  num_jia.onclick = function() {

      input_num.value = parseInt(input_num.value) + 1;
  }

  num_jian.onclick = function() {

      if(input_num.value <= 0) {
          input_num.value = 0;
      } else {

          input_num.value = parseInt(input_num.value) - 1;
      }

  }
    </script>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/tags/fmt.tld" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Withiter 成果</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="js/jquery.lightbox-0.5.min.js"></script>

<link rel="stylesheet" type="text/css" href="css/jquery.lightbox-0.5.css" media="screen" />
<style type="text/css">
</style>

<script type="text/javascript">
	$(document.ready = function(){
		$('a[rel*=lightbox]').lightBox();
	});
</script>
</head>
<body>
<fmt:setBundle basename="/form" var="formBundle" />
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
	     <li><a href="index.jsp"><fmt:message key="home" bundle="${formBundle}" /></a></li>
		<li  class="active"><a href="achievement.jsp"><fmt:message key="achievement" bundle="${formBundle}" /></a></li>
		<li><a href="contact.jsp"><fmt:message key="contactus" bundle="${formBundle}" /></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="logo" style="margin-left: 40px;padding-top: 20px;"><font color="#76A0B0"
	size="10"><fmt:message key="with" bundle="${formBundle}" /></font><font
	size="20px;"><fmt:message key="iter" bundle="${formBundle}" /></font>&nbsp;&nbsp;<font
	color="#76A0B0" size="20px;"><fmt:message key="group"
	bundle="${formBundle}" /></font></div>
      <div class="clr"></div>
    </div>
  </div>

  <div class="content">
    <div class="content_resize">
      <div class="mainbar" style="width: 100%">
        <div class="article" style="height: 326px;">
          <div>
				<a rel="lightbox" title="乐道餐厅订餐系统" href="images/cantin2.png"><img src="images/cantin2.png" style="width:160px;height:160px;margin-left:10px; "/></a>
				<a rel="lightbox" title="乐道餐厅订餐系统" href="images/cantin1.JPG"><img src="images/cantin1.JPG" style="width:160px;height:160px;margin-left:10px; "/></a>
				<a rel="lightbox" title="电信管理系统" href="images/datang3.JPG"><img src="images/datang1.JPG" style="width:160px;height:160px;margin-left:10px; "/></a>
				<a rel="lightbox" title="电信管理系统" href="images/datang4.JPG"><img src="images/datang2.JPG" style="width:160px;height:160px;margin-left:10px; "/></a>
				<a rel="lightbox" title="网上书店" href="images/shop2.jpg"><img src="images/shop2.jpg" style="width:160px;height:160px;margin-left:10px; "/></a>
				<a rel="lightbox" title="网上书店" href="images/shop1.jpg"><img src="images/shop1.jpg" style="width:160px;height:160px;margin-left:10px; "/></a>
				<a rel="lightbox" title="辉煌物流" href="images/wuliu1.JPG"><img src="images/wuliu1.JPG" style="width:160px;height:160px;margin-left:10px; "/></a>
				<a rel="lightbox" title="辉煌物流" href="images/wuliu2.JPG"><img src="images/wuliu2.JPG" style="width:160px;height:160px;margin-left:10px; "/></a>
			</div>
          
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>

  <div class="footer">
    <div class="footer_resize">
      <p class="lf">&nbsp;</p>
      <ul class="fmenu">
        <li>&copy; 2012-2012 WithIter.com. All rights reserved.</li>
      </ul>
      <div class="clr"></div>
    </div>
  </div>
</div>
</body>
</html>
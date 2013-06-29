<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/tags/fmt.tld" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Withiter 团队</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta content="withiter">
<link href="css/style.css" rel="stylesheet" type="text/css" />

</head>
<body>
<fmt:setLocale scope="session" value="zh" />
<fmt:setBundle basename="/form" var="formBundle" />

<div class="main">
<div class="header">
<div class="header_resize">
<div class="menu_nav">
<ul>
	<li class="active"><a href="index.jsp"><fmt:message key="home" bundle="${formBundle}" /></a></li>
	<li><a href="achievement.jsp"><fmt:message key="achievement" bundle="${formBundle}" /></a></li>
	<li><a href="contact.jsp"><fmt:message key="contactus" bundle="${formBundle}" /></a></li>
</ul>
</div>
<div class="searchform">
        <form id="formsearch" name="formsearch" method="post" action="">
          <span>Language：<a href="index_en.jsp">English</a></span>
        </form>
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
<div class="article" style="height: 326px;"><font size="4" color="#76A0B0"><fmt:message key="groupdetailtitle" bundle="${formBundle}" /></font>
<div class="clr"></div>
<br/>
<img src="images/homelogo5.jpg" width="670" height="205" alt="image" />
<br/>
<br/>
<p><fmt:message key="groupdetailcontent" bundle="${formBundle}" /></p>
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
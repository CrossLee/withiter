<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/tags/fmt.tld" prefix="fmt"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<fmt:setBundle basename="/form" var="formBundle" />
<ul class="ex_menu">
	<s:iterator value="msgList" var="msg">
		<li>
		<fmt:message key="username" bundle="${formBundle}" />：${msg.name }<br />
		<!--<fmt:message key="useremail" bundle="${formBundle}" />：${msg.email }<br/>-->
		<fmt:message key="usermsg" bundle="${formBundle}" />：${msg.content }
		</li>
		<hr style="height:1px;border:none;border-top:1px dashed #959595;"/>
	</s:iterator>
</ul>
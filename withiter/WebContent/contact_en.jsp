<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/tags/fmt.tld" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Withiter Contact Us</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.7.1.js"></script>

<link rel="stylesheet" type="text/css" href="js/plugins/buttonCaptcha/jquery.buttonCaptcha.styles.css" />

<script type="text/javascript" language="javascript" src="js/jquery-ui-1.8.18.custom.min.js"></script>
<script type="text/javascript" language="javascript" src="js/plugins/buttonCaptcha/jquery.buttonCaptcha.min.js"></script>

<script type="text/javascript">

	$(document).ready(function() {
		$.ajax({
			type: "POST",
			url: "/withiter/getmessageAction.html",
			dataType:"html",
			success: function(data){
				$("#msgboxdetails").html(data);
			},
			error:function(){
				alert("loading error, please check your network!");
			}
		});
		$("#imageField").buttonCaptcha({
			codeWord		:	3,		// code word that must be assembled from pieces;
			codeZone		:	false,		// if you want, you can add a domain zone to your code word (length must be from 2 to 4, without dot);
			hideButton		:	true,		// if it true, button, which you passed to the buttonCaptcha will be hidden till unlock;
			hideCaptcha		:	true,		// if it true, Captcha will fade out when unlocked;
			lockButton		:	true,		// if it true, button will be disabled till unlock;
			scrollToButton	: 	false,		// Need to use a jQuery.scrollTo plugin (google knows where); if it true, when Captcha unlocked, will be autoscroll to the button.
			verifyInput		:	true,		// if it true, to the first parent form will be attached a hidden field with the value of deferred letters.
			verifyName		:	'gbws_captcha_input',	// the name of hidden field;
			verifyMustBe	:	false,		// if true, then to the first parent form will be attached a hidden field with the needed value of captcha to be unlocked. ******* (v1.1)
			verifyMustName	:	'gbws_captcha_must_input',	// the name of hidden field; ******* (v1.1)
			captchaHeader	:	'Are you a robot?',			// question above the Captcha;
			captchaTip		: 	'Drag letters from left to right, to get word "%code_word%". Thanks!', 	// tip text; remember that you must save %code_word% tag! 
			captchaUnlocked	:	'Unlocked!'					// text for the header of captcha when it unlocked;				
		});
	});

	function gotop(){
		$("html,body").animate({scrollTop: $("#body").offset().top}, 1000); 
	}
	
	function submitMessage(){

		var name = $("#name").val();
		var email = $("#email").val();
		var message = $("#message").val();

		if(name == null || name ==""){
			alert("Name can't be empty");
			return false;
		}
		/*
		if(email == null || email ==""){
			alert("Email can't be empty");
			return false;
		}
		*/
		if(message == null || message ==""){
			alert("Message can't be empty");
			return false;
		}
		
		$.ajax({
			type: "POST",
			url: "/withiter/leavemessageAction.html",
			dataType:"html",
			data: $("#leavemessage").serialize(),
			success: function(data){
			$.ajax({
				type: "POST",
				url: "/withiter/getmessageAction.html",
				dataType:"html",
				success: function(data){
					$("#name").val("");
					//$("#email").val("");
					$("#message").val("");
					$("#msgboxdetails").html(data);
					$("#captcha_gbws_wrap_0").remove();
					$("#imageField").buttonCaptcha({
						codeWord		:	3,		// code word that must be assembled from pieces;
						codeZone		:	false,		// if you want, you can add a domain zone to your code word (length must be from 2 to 4, without dot);
						hideButton		:	true,		// if it true, button, which you passed to the buttonCaptcha will be hidden till unlock;
						hideCaptcha		:	true,		// if it true, Captcha will fade out when unlocked;
						lockButton		:	true,		// if it true, button will be disabled till unlock;
						scrollToButton	: 	false,		// Need to use a jQuery.scrollTo plugin (google knows where); if it true, when Captcha unlocked, will be autoscroll to the button.
						verifyInput		:	true,		// if it true, to the first parent form will be attached a hidden field with the value of deferred letters.
						verifyName		:	'gbws_captcha_input',	// the name of hidden field;
						verifyMustBe	:	false,		// if true, then to the first parent form will be attached a hidden field with the needed value of captcha to be unlocked. ******* (v1.1)
						verifyMustName	:	'gbws_captcha_must_input',	// the name of hidden field; ******* (v1.1)
						captchaHeader	:	'Are you a robot?',			// question above the Captcha;
						captchaTip		: 	'Drag letters from left to right, to get word "%code_word%". Thanks!', 	// tip text; remember that you must save %code_word% tag! 
						captchaUnlocked	:	'Unlocked!'					// text for the header of captcha when it unlocked;				
					});
					$("html,body").animate({scrollTop: $("#body").offset().top}, 1000); 
				},
				error:function(){
					alert("loading error, please check your network!");
				}
			});
			},
			error:function(){
				alert("loading error, please check your network!");
			}
		});
	}
</script>
</head>
<body id="body">
<fmt:setBundle basename="/form" var="formBundle" />
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
	     <li><a href="index_en.jsp"><fmt:message key="home" bundle="${formBundle}" /></a></li>
		<li><a href="achievement_en.jsp"><fmt:message key="achievement" bundle="${formBundle}" /></a></li>
		<li class="active"><a href="contact_en.jsp"><fmt:message key="contactus" bundle="${formBundle}" /></a></li>
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
      <div class="mainbar" style="width: 600px;">
        <div class="article">
          <font size="4" color="#76A0B0"><fmt:message key="contactway" bundle="${formBundle}" /></font><div class="clr"></div>
          <p><fmt:message key="contactustitle" bundle="${formBundle}" /></p>
        </div>
        <div class="article">
          <font size="4" color="#76A0B0"><fmt:message key="messagetitle" bundle="${formBundle}" /></font><div class="clr"></div>
          <form action="#" method="post" id="leavemessage">
          <ol><li>
            <label for="name"><fmt:message key="nickname" bundle="${formBundle}" /></label>
            <input id="name" name="name" class="text" maxlength="20"/>
          </li><li>
            <label for="message"><fmt:message key="message" bundle="${formBundle}" /></label>
            <textarea id="message" name="message" rows="5" cols="50"></textarea>
          </li><li>
            <img name="imageField" id="imageField" src="images/submit.gif" class="send" style="cursor: pointer;" onclick="javascript:submitMessage();"/>
            
            
            <div class="clr"></div>
          </li></ol>
          </form>
        </div>
      </div>
      <div class="sidebar" style="float: left;width: 360px;">
        <div class="gadget" style="margin-left: -60px;">
          <font size="4" color="#76A0B0"><fmt:message key="msgboxtitle" bundle="${formBundle}" /></font><br/><br/>
          <div id="msgboxdetails">
          </div>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>

  <div class="footer">
    <div class="footer_resize">
      <p class="lf" style="color: #76A0B0;cursor: pointer;" onclick="javascript:gotop();"><fmt:message key="gotop" bundle="${formBundle}" /></p>
      <ul class="fmenu">
        <li>&copy; 2012-2012 WithIter.com. All rights reserved.</li>
      </ul>
      <div class="clr"></div>
    </div>
  </div>
</div>
</body>
</html>
package com.withiter;

import java.net.URLDecoder;
import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LeavemessageAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8728907895491660164L;

	private List<Message> msgList;
	
	public String getMessage(){
		ActionContext context = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest)context.get(ServletActionContext.HTTP_REQUEST);
		String xmlPath = request.getSession().getServletContext().getRealPath("/") + "message.xml";
		msgList = XmlOperationTool.list(xmlPath);
		Collections.reverse(msgList);
		if(null != msgList){
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
	
	@Override
	public String execute() throws Exception {
		
		ActionContext context = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest)context.get(ServletActionContext.HTTP_REQUEST);
		request.setCharacterEncoding("UTF-8");
		
		String id = String.valueOf(System.currentTimeMillis());
		String name = URLDecoder.decode(request.getParameter("name")==null?"":request.getParameter("name"), "UTF-8");
//		String email = request.getParameter("email");
		String content = URLDecoder.decode(request.getParameter("message")==null?"":request.getParameter("message"), "UTF-8");
		
		String nameForDisplay = " "+ name + " (" + request.getRemoteAddr().substring(0,request.getRemoteAddr().lastIndexOf(".")) + ".xxx)";
		
		Message msg = new Message();
		msg.setId(id);
		msg.setName(nameForDisplay);
//		msg.setEmail(email);
		msg.setContent(content);
		
		String xmlPath = request.getSession().getServletContext().getRealPath("/") + "message.xml";
		boolean flag = XmlOperationTool.add(msg, xmlPath);
		if(flag){
			return SUCCESS;
		}else{
			return ERROR;
		}
	}

	public List<Message> getMsgList() {
		return msgList;
	}

	public void setMsgList(List<Message> msgList) {
		this.msgList = msgList;
	}
	
}

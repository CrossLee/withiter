package com.withiter;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.jdom.Document;
import org.jdom.Element;
import org.jdom.JDOMException;
import org.jdom.input.SAXBuilder;
import org.jdom.output.Format;
import org.jdom.output.XMLOutputter;

public class XmlOperationTool {

	// 查询所有的数据
	public static List<Message> list(String xmlPath){
		try {
			SAXBuilder builder = new SAXBuilder();

			List<Message> msgList = new ArrayList<Message>();
				Document document = builder.build(xmlPath);
				Element root = document.getRootElement();
				List<?> list = root.getChildren();
				Iterator<?> it = list.iterator();
				while (it.hasNext()) {
					Element e = (Element) it.next();
					Message msg = new Message();

					msg.setId(e.getAttributeValue("id"));
					msg.setName(e.getAttributeValue("name"));
//					msg.setEmail(e.getAttributeValue("email"));
					msg.setContent(e.getAttributeValue("content"));
					
					msgList.add(msg);
				}
			return msgList;
		} catch (JDOMException e) {
			e.printStackTrace();
			return null;
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}
	}

	public static boolean add(Message msg,String xmlPath) {

		try {
			SAXBuilder builder = new SAXBuilder();
			Document document = builder.build(xmlPath);

			Element root = document.getRootElement();
			Element element = new Element("message");

			element.setAttribute("id", msg.getId());
			element.setAttribute("name", msg.getName());
//			element.setAttribute("email", msg.getEmail());
			element.setAttribute("content", msg.getContent());

			root.addContent(element);
			Format format = Format.getPrettyFormat();
			format.setEncoding("UTF-8");
			XMLOutputter output = new XMLOutputter(format);
			output.output(document, new FileOutputStream(xmlPath));
			return true;
		} catch (FileNotFoundException e) {
			e.printStackTrace();
			return false;
		} catch (JDOMException e) {
			e.printStackTrace();
			return false;
		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
	}

	// 删除
	public static void del(String xmlPath, String elementId)
			throws JDOMException, FileNotFoundException, IOException {
		SAXBuilder builder = new SAXBuilder();

		Document document = builder.build(xmlPath);
		Element root = document.getRootElement();

		List<?> list = root.getChildren();
		Iterator<?> it = list.iterator();

		for (int i = 0; i < list.size(); i++) {
			Element e = (Element) it.next();
			if (elementId.equals(e.getAttributeValue("id"))) {
				root.removeContent(e);
				break;
			}
		}
		XMLOutputter out = new XMLOutputter(Format.getPrettyFormat());
		out.output(document, new FileOutputStream(xmlPath));
	}

	public static void main(String[] args) throws Exception {
	}
}

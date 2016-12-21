package com.framework;

import java.io.UnsupportedEncodingException;
import java.util.Properties;
import java.util.Random;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SendMail {

	public static void send(String email,HttpServletRequest request,HttpServletResponse response){
		HttpSession session1=request.getSession();
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e1) {
			// TODO 自动生成的 catch 块
			e1.printStackTrace();
		}
		Random random = new Random();
		// 获取参数

		String source[] = new String[] { "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U",
				"V", "W", "X", "Y", "Z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u",
				"v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9" };
		String sRand = "";
		for (int i = 0; i < 4; i++) {
			String rand = source[random.nextInt(62)];
			sRand += rand;
		}
		// 将验证码存入SESSION
		session1.setAttribute("sRand", sRand);
		session1.setMaxInactiveInterval(120);
		//String to = "15231156356@163.com";
		//String to = "723291914zc@gmail.com";//request.getParameter("to");
		String subject = "验证码";//request.getParameter("subject");
		String content = sRand;//equest.getParameter("content");
		
		System.out.println("to:" + email);
		System.out.println("subject:" + subject);
		System.out.println("content:" + content);

		// 设定服务器和协议
		Properties props = System.getProperties();// 存放的是一系列的名值对
		props.put("mail.smtp.host", "smtp.163.com");// key是固定的（第一个参数）
		props.put("mail.smtp.auth", "true");// key是固定的
		Session session = Session.getInstance(props, new Authenticator() {// 获取session
			public PasswordAuthentication getPasswordAuthentication() {
				/* 若服务器需要身份认证，Sission会自动调用这个方法 */
				return new PasswordAuthentication("13831139220", "8888gs");// 賬戶密碼
			}
		});
		// 发送邮件
		Message msg = new MimeMessage(session);
		try {
			msg.setFrom(new InternetAddress("13831139220@163.com"));
			msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
			msg.setSubject(subject);
			// msg.setText(content);

			MimeBodyPart mimeBodyPart = new MimeBodyPart();
			mimeBodyPart.setContent(content, "text/html;charset=gb2312");
			MimeMultipart mimeMultipart = new MimeMultipart();
			mimeMultipart.addBodyPart(mimeBodyPart);
			msg.setContent(mimeMultipart);

			// msg.setHeader("X-Mailer", "smtpsend");
			// msg.setSentDate(new Date());
			Transport.send(msg);
			System.out.println("send Ok");
			//response.getWriter().write("send Ok");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}

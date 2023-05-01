package org.jsp.userproductapp.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jsp.userproductapp.dao.UserDao;
import org.jsp.userproductapp.dto.User;

@WebServlet("/reg")
public class RegisterServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		long phone=Long.parseLong(req.getParameter("ph"));
		String password=req.getParameter("ps");
		String email=req.getParameter("em");
		String gender=req.getParameter("gender");
		String name=req.getParameter("nm");
		int age=Integer.parseInt(req.getParameter("age"));
		User u=new User();
		u.setAge(age);
		u.setEmail(email);
		u.setName(name);
		u.setPhone(phone);
		u.setPassword(password);
		u.setGender(gender);
		UserDao dao=new UserDao();
		u=dao.saveUser(u);
		PrintWriter writer=resp.getWriter();
		writer.write("<html><body bgcolor='pink'><h2>User Register wtih Id:"+u.getId()+"</h2></body></html>");
				
	}
}

package com.user.servlet;

import java.io.IOException;

import jakarta.servlet.http.HttpSession;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.DAO.UserDAOImpl;
import com.DB.DBConnect;
import com.entity.User;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String name = req.getParameter("fname");
			String email = req.getParameter("email");
			String phno = req.getParameter("phno");
			String password = req.getParameter("password");
			String check = req.getParameter("check");

//	            System.out.println(name+" "+email+" "+phno+" "+password+" "+check);

			User us = new User();
			us.setName(name);
			us.setEmail(email);
			us.setPhno(phno);
			us.setPassword(password);

			HttpSession session = (HttpSession) req.getSession();

			if (check != null) {

				UserDAOImpl dao = new UserDAOImpl(DBConnect.getConn());

				boolean f2 = dao.checkUser(email);
				if (f2) {
					boolean f = dao.userRegister(us);
					if (f) {
						// System.out.println("User Register Success....");
						session.setAttribute("succMsg", "Registration Successfully...");
						resp.sendRedirect("register.jsp");
					} else {
						// System.out.println("Something wrong on server...");
						session.setAttribute("failedMsg", "Something wrong on server...");
						resp.sendRedirect("register.jsp");
					}
				} else {
					session.setAttribute("failedMsg", "User Already Exit.Try Another Email id");
					resp.sendRedirect("register.jsp");
				}

			} else {
				// System.out.println("Please check Agree & Terms Condition");
				session.setAttribute("failedMsg", "Please check Agree & Terms Condition...");
				resp.sendRedirect("register.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

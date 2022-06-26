package com.user.servlet;

import java.io.IOException;

import jakarta.servlet.http.HttpSession;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/logout")
public class LogOutServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			HttpSession session = (HttpSession) req.getSession();
			session.removeAttribute("userobj");

			HttpSession session2 = (HttpSession) req.getSession();
			session.setAttribute("succMsg", "Logout Successfully");
			resp.sendRedirect("login.jsp");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}

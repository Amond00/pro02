package kr.co.myshop.ctrl;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/CustomLoginCtrl")
public class CustomLoginCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private final static String DRIVER = "com.mysql.cj.jdbc.Driver";
	private final static String URL = "jdbc:mysql://localhost:3306/myshop?serverTimezone=Asia/Seoul";
	private final static String ID = "root";
	private final static String PW = "a1234";
	String sql = "";

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String cusId = request.getParameter("cusId");
		String cusPw = request.getParameter("cusPw");

		try {
			Class.forName(DRIVER);
			sql = "select * from custom where cusid=? and cuspw=?";
			Connection con = DriverManager.getConnection(URL, ID, PW);
			PreparedStatement pstmt = con.prepareStatement(sql);
			ResultSet rs = null;
			pstmt.setString(1, cusId);
			pstmt.setString(2, cusPw);
			rs = pstmt.executeQuery();
			HttpSession session = request.getSession();
			
			if(rs.next()){
				session.setAttribute("sid", cusId);
				session.setAttribute("sname", rs.getString("cusname"));
				response.sendRedirect("index.jsp");
			} else {
				response.sendRedirect("./custom/login.jsp");
			}
			pstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

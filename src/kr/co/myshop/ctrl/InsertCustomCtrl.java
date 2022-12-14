package kr.co.myshop.ctrl;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/InsertCustomCtrl")
public class InsertCustomCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final static String DRIVER = "com.mysql.cj.jdbc.Driver";
	private final static String URL = "jdbc:mysql://localhost:3306/myshop?serverTimezone=Asia/Seoul";
	private final static String ID = "root";
	private final static String PW = "a1234";
	String sql = "";
	int cnt = 0;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String cusId = request.getParameter("cusId");
		String cusPw = request.getParameter("cusPw");
		String cusName = request.getParameter("cusName");
		String address1 = request.getParameter("address1");
		String address2 = request.getParameter("address2");
		String address = address1 + " " + address2;
		String tel = request.getParameter("tel");
		try {
			//데이터베이스 연결
			Class.forName(DRIVER);
			sql = "insert into custom(cusid, cuspw, cusname, address, tel) values (?,?,?,?,?)";
			Connection con = DriverManager.getConnection(URL, ID, PW);
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, cusId);
			pstmt.setString(2, cusPw);
			pstmt.setString(3, cusName);
			pstmt.setString(4, address);
			pstmt.setString(5, tel);
			cnt = pstmt.executeUpdate();
			//결과를 데이터베이스로 부터 받아서 VO에 저장
			if(cnt>=1){
				response.sendRedirect("index.jsp");
			} else {
				response.sendRedirect("./notice/insertBoard.jsp");
			}
			pstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}	
	}
}
package kr.co.myshop.view;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.myshop.vo.Product;

@WebServlet("/GetProductDetailCtrl")
public class GetProductDetailCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final static String DRIVER = "com.mysql.cj.jdbc.Driver";
	private final static String URL = "jdbc:mysql://localhost:3306/myshop?serverTimezone=Asia/Seoul";
	private final static String ID = "root";
	private final static String PW = "a1234";
	String sql = "";

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int proNo = Integer.parseInt(request.getParameter("proiNo"));
		try {
			//데이터베이스 연결
			Class.forName(DRIVER);
			sql = "select * from product where prono=?";
			Connection con = DriverManager.getConnection(URL, ID, PW);
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, proNo);
			ResultSet rs = pstmt.executeQuery();
			
			Product vo = new Product();
			if(rs.next()){
				vo.setProNo(rs.getInt("notino"));
				vo.setProName(rs.getString("proname"));
				vo.setCateNo(rs.getInt("cateno"));
				vo.setProPic(rs.getString("propic"));
				vo.setProPrice(rs.getInt("proprice"));
				vo.setProSpec(rs.getString("prospec"));
			}
			request.setAttribute("product", vo);
			
			RequestDispatcher view = request.getRequestDispatcher("./product/productDetail.jsp");
			view.forward(request, response);
			
			rs.close();
			pstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}	
	}
}


package kr.co.myshop.ctrl;

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

import kr.co.myshop.vo.Notice;
import kr.co.myshop.vo.Qna;

@WebServlet("/QnaReplyWriteCtrl.do")
public class QnaReplyWriteCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final static String DRIVER = "com.mysql.cj.jdbc.Driver";
	private final static String URL = "jdbc:mysql://localhost:3306/myshop?serverTimezone=Asia/Seoul";
	private final static String ID = "root";
	private final static String PW = "a1234";
	String sql = "";
	int cnt = 0;
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		int no = Integer.parseInt(request.getParameter("parno"));
		ResultSet rs = null;
		try {
			//데이터베이스 연결
			Class.forName(DRIVER);
			Connection con = DriverManager.getConnection(URL, ID, PW);

			sql = "select * from qnaa where no=?";
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			Qna vo = new Qna();
			//결과를 데이터베이스로 부터 받아서 VO에 저장
			if(rs.next()){
				vo.setNo(rs.getInt("no"));
				vo.setTitle(rs.getString("title"));
				vo.setContent(rs.getString("content"));
				vo.setAuthor(rs.getString("author"));
				vo.setResDate(rs.getDate("resdate"));
				vo.setLev(rs.getInt("lev"));
				vo.setParno(rs.getInt("parno"));
				vo.setSec(rs.getString("sec"));
				vo.setVisited(rs.getInt("visited"));
			} 
			request.setAttribute("qna", vo);
			
			//qna/replyWrite.jsp 에 포워딩
			RequestDispatcher view = request.getRequestDispatcher("./qna/replyWrite.jsp");
			view.forward(request, response);
			
			rs.close();
			pstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}	
	}
}
package login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class addquestionservlet
 */
@WebServlet("/addquestionservlet")
public class addquestionservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addquestionservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String q1=request.getParameter("q1");
		String c11=request.getParameter("c11");
		String c12=request.getParameter("c12");
		String c13=request.getParameter("c13");
		String c14=request.getParameter("c14");
		String q2=request.getParameter("q2");
		String c21=request.getParameter("c21");
		String c22=request.getParameter("c22");
		String c23=request.getParameter("c23");
		String c24=request.getParameter("c24");
		String q3=request.getParameter("q3");
		String c31=request.getParameter("c31");
		String c32=request.getParameter("c32");
		String c33=request.getParameter("c33");
		String c34=request.getParameter("c34");
		String q4=request.getParameter("q4");
		String c41=request.getParameter("c41");
		String c42=request.getParameter("c42");
		String c43=request.getParameter("c43");
		String c44=request.getParameter("c44");
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("driver loaded");
			Connection conn = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe","ep","ep123");
			String sql="insert into sem1 values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,q1);
			pstmt.setString(2,c11);
			pstmt.setString(3,c12);
			pstmt.setString(4,c13);
			pstmt.setString(5,c14);
			pstmt.setString(6,q2);
			pstmt.setString(7,c21);
			pstmt.setString(8,c22);
			pstmt.setString(9,c23);
			pstmt.setString(10,c24);
			pstmt.setString(11,q3);
			pstmt.setString(12,c31);
			pstmt.setString(13,c32);
			pstmt.setString(14,c33);
			pstmt.setString(15,c34);
			pstmt.setString(16,q4);
			pstmt.setString(17,c41);
			pstmt.setString(18,c42);
			pstmt.setString(19,c43);
			pstmt.setString(20,c44);
			int count=pstmt.executeUpdate();
			if(count >0) {
				//successfull creation
				RequestDispatcher rd = request.getRequestDispatcher("addsuccess.html");
				rd.forward(request, response);
			}else {
				//creation failed
				RequestDispatcher rd = request.getRequestDispatcher("addfail.html");
				rd.forward(request, response);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
}

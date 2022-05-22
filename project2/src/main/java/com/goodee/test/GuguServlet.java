package com.goodee.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GuguServlet
 */


//http://127.0.0.1:8080/project2/gugu.do?dan=5

@WebServlet("/gugu.do")
public class GuguServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GuguServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		int i;
		
		
//		int num = Integer.parseInt(request.getParameter("단"));  // 내가
		String dan = request.getParameter("dan"); // 선생님
		if(dan==null || dan.equals("")) // 파라미터값 없이 호출할때
			dan="1"; // 기본값
		int nDan = Integer.parseInt(dan); // 선생님
		
		
		PrintWriter out= response.getWriter();
		
		out.println("<html>");
		out.println("<body>");
		for(i=1; i<=9; i++) {
			out.println("<p>"+String.format("%d X %d = %d", nDan, i, nDan*i)+"</p>");
		}
		out.println("</body>");
		out.println("</html>");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

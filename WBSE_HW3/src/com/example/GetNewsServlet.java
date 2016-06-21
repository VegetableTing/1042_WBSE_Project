package com.example;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class GetNewsServlet
 */
public class GetNewsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetNewsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		ArrayList<News> newsList = new ArrayList<News>();
		HttpSession session = request.getSession();
		
		try{
		String type = request.getParameter("type");
		switch(type){
			case "1":
				newsList = NewsRetrieval.getNews(NewsRetrieval.TAIWAN);
				break;
			case "2":
				newsList = NewsRetrieval.getNews(NewsRetrieval.TECH);
				break;
			case "3":
				newsList = NewsRetrieval.getNews(NewsRetrieval.SPORT);
				break;
			case "4":
				newsList = NewsRetrieval.getNews(NewsRetrieval.ENTERTAINMENT);
				break;
			default:
				break;
	
		}
		}catch(Exception e)
		{
			newsList = NewsRetrieval.getNews(NewsRetrieval.TAIWAN);
			
		}finally{
			System.out.println(newsList.toString());
		}
		
		response.setContentType("text/html;charset=UTF-8");
		request.setAttribute("newsList", newsList);
		session.setAttribute("newsList", newsList);
		request.getRequestDispatcher("index.jsp").forward(request,response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

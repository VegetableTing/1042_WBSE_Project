package com.parker.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.example.type.HistoryObject;

@WebServlet("/ComparisonListServlet.do")
public class ComparisonListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ComparisonListServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {// store the name and id
		HttpSession session = request.getSession();
		ArrayList<HistoryObject> compareList;
		compareList = (ArrayList<HistoryObject>) session.getAttribute("compareList");
		HistoryObject history = new HistoryObject();

		String act = request.getParameter("act");
		if (act == null) {

		} else if (act.equals("delete")) {// press the button of clear
			compareList.clear();
		}

		if (compareList == null) {
			compareList = new ArrayList<HistoryObject>();
		}

		history.setId((String)request.getParameter("id"));
		history.setName((String)request.getParameter("name"));

		boolean addFlag = true;
		for (HistoryObject newsVar : compareList) {
			if (newsVar.getId().equals(history.getId())) {
				addFlag = false;
			}
		}
		if (addFlag) {
			compareList.add(history);
		}

		session.setAttribute("compareList", compareList);
		
		response.sendRedirect(request.getParameter("id"));
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

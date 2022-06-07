package com.test.bookjuck.admin.book;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.test.bookjuck.dao.AuthorDAO;
import com.test.bookjuck.dao.CategoryDAO;
import com.test.bookjuck.dto.AuthorDTO;
import com.test.bookjuck.dto.CategoryDTO;


@WebServlet("/admin/book/ebookadd.do")
public class EBookAdd extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//1. 데이터 가져오기
		//2. DB 작업 -> select
		//3. 결과 + JSP호출
		
		
		HttpSession session = req.getSession();
		
		//관리자가 아니면
		if (!"adm00".equals((String)session.getAttribute("id"))) {

			resp.setCharacterEncoding("UTF-8");
			
			PrintWriter writer = resp.getWriter();
			
			writer.print("<html><head><meta charset='UTF-8' /></head><body>");
			writer.print("<script>");
			writer.print("alert('접근할 수 없습니다.\\n이전 화면으로 이동합니다.');");
			writer.print("history.back();");
			writer.print("</script>");
			writer.print("</body></html>");
			
			writer.close();
			
			return;
			
		}
		
		
		//1.
		String page = req.getParameter("page");
		String seqLCategory = req.getParameter("seqLCategory");
		
		//2.
		//카테고리별 번호, 카테고리명
		CategoryDAO cdao = new CategoryDAO();
		ArrayList<CategoryDTO> lCategoryList = cdao.getLCategoryList();
		ArrayList<CategoryDTO> mCategoryList = cdao.getMCategoryList();
		ArrayList<CategoryDTO> sCategoryList = cdao.getSCategoryList();
		
		
		//작가번호, 작가명, 작가소개
		AuthorDAO adao = new AuthorDAO();
		ArrayList<AuthorDTO> alist = adao.getAuthorList();
		
		//작가소개 엔터, (), " 변환
		for (AuthorDTO adto : alist) {
			adto.setIntro(adto.getIntro().replace("\r\n", "<br>"));
			adto.setIntro(adto.getIntro().replace("\n", "<br>"));
			adto.setIntro(adto.getIntro().replace("(", "&#40;"));
			adto.setIntro(adto.getIntro().replace(")", "&#41;"));
			adto.setIntro(adto.getIntro().replace("\"", "&quot;"));
		}
		
		cdao.close();
		adao.close();
		
		//3.
		req.setAttribute("lCategoryList", lCategoryList);
		req.setAttribute("mCategoryList", mCategoryList);
		req.setAttribute("sCategoryList", sCategoryList);
		req.setAttribute("alist", alist);
		
		req.setAttribute("page", page);
		req.setAttribute("seqLCategory", seqLCategory);
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/book/ebookadd.jsp");
		dispatcher.forward(req, resp);
	}
	
}

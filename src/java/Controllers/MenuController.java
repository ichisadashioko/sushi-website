package Controllers;

import Views.*;
import Models.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import DAO.*;
import Utils.*;

public class MenuController {

	public static MenuView getPageContent(ServletContext context, HttpServletRequest request) {
		MenuView mv = new MenuView();
		List<Integer> counterItems = new ArrayList<>();
		int visitorCount = 0;

		int numPages = 0;
		int pageNum = 0;

		ArrayList<Menu> mList = new ArrayList<>();

		try {
			int minDigits = Integer.parseInt(context.getInitParameter("min_counter_digits"));
			visitorCount = StatDAO.visitorCount();
			counterItems = SushiUtils.generateCounterItems(visitorCount, minDigits);

			StatDAO.newVisitor(request.getRemoteAddr(), request.getRequestURI(), new java.util.Date());

			int numPerPage = Integer.parseInt(context.getInitParameter("menu_per_page"));
			int numMenus = SushiDAO.countMenus();
			numPages = (int) Math.ceil((double) numMenus / (double) numPerPage);

			pageNum = 1;

			try {
				pageNum = Integer.parseInt(request.getParameter("page"));
				pageNum = (pageNum > 0) ? pageNum : 1;
				pageNum = (pageNum > numPages) ? numPages : pageNum;
			} catch (Exception ex) {
				ex.printStackTrace();
			}
			int endIdx = pageNum * numPerPage;
			int startIdx = endIdx - numPerPage;

			mList = SushiDAO.selectMenus(startIdx, endIdx);

		} catch (Exception e) {
			e.printStackTrace();
		}

		mv.setPageCounterItems(counterItems);

		mv.setPageNum(pageNum);
		mv.setNumPages(numPages);
		mv.setmList(mList);
		return mv;
	}
}

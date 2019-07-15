package Controllers;

import Views.*;
import Models.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import DAO.*;
import Utils.*;

public class IndexController {

	public static IndexView getPageContent(ServletContext context, HttpServletRequest request) {
		IndexView iv = new IndexView();
		List<Banner> bList = new ArrayList<>();

		List<Integer> counterItems = new ArrayList<>();
		int visitorCount = 0;
		int numPages = 0;
		int pageNum = 0;

		try {
			int minDigits = Integer.parseInt(context.getInitParameter("min_counter_digits"));
			visitorCount = StatDAO.visitorCount();
			counterItems = SushiUtils.generateCounterItems(visitorCount, minDigits);

			StatDAO.newVisitor(request.getRemoteAddr(), request.getRequestURI(), new java.util.Date());

			int numPerPage = Integer.parseInt(context.getInitParameter("banner_per_page"));
			int numBanners = SushiDAO.countBanners();
			numPages = (int) Math.ceil((double) numBanners / (double) numPerPage);

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

			bList = SushiDAO.selectBanners(startIdx, endIdx);
		} catch (Exception e) {
			e.printStackTrace();
		}

		iv.setbList(bList);
		iv.setPageNum(pageNum);
		iv.setNumPages(numPages);
		iv.setPageCounterItems(counterItems);
		return iv;
	}
}

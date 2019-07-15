
package Controllers;

import Views.*;
import Models.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import DAO.*;
import Utils.*;

public class ContactController {
    public static ContactView getPageContent(ServletContext context, HttpServletRequest request) {
		ContactView cv = new ContactView();
		List<Integer> counterItems = new ArrayList<>();
		int visitorCount = 0;

		try {
			int minDigits = Integer.parseInt(context.getInitParameter("min_counter_digits"));
			visitorCount = StatDAO.visitorCount();
			counterItems = SushiUtils.generateCounterItems(visitorCount, minDigits);

			StatDAO.newVisitor(request.getRemoteAddr(), request.getRequestURI(), new java.util.Date());

		} catch (Exception e) {
			e.printStackTrace();
		}

		cv.setPageCounterItems(counterItems);
		return cv;
	}
}

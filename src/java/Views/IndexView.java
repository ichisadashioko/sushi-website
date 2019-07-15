package Views;

import Models.*;
import java.util.*;

public class IndexView extends BaseView {

	private List<Banner> bList;

	private int numPages;
	private int pageNum;

	public int getNumPages() {
		return numPages;
	}

	public void setNumPages(int numPages) {
		this.numPages = numPages;
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public List<Banner> getbList() {
		return bList;
	}

	public void setbList(List<Banner> bList) {
		this.bList = bList;
	}

}

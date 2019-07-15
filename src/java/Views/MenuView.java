package Views;

import Models.*;
import java.util.*;

public class MenuView extends BaseView {

	private int numPages;
	private int pageNum;
	private List<Menu> mList;

	public List<Menu> getmList() {
		return mList;
	}

	public void setmList(List<Menu> mList) {
		this.mList = mList;
	}

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
}

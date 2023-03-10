package kr.co.haon.book.admin;

import java.util.List;

import kr.co.haon.book.BookVO;

public interface BookAdminDAO {
	public List<BookVO> getBookListAdmin();
	public List<BookVO> getSearchList(BookVO vo);
}

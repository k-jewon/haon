package kr.co.haon.book.admin;

import java.util.List;

import kr.co.haon.book.BookVO;
import kr.co.haon.book.Criteria;

public interface BookAdminService {
	public List<BookVO> getBookListAdmin();
	public List<BookVO> getSearchList(BookVO vo);
	public List<BookVO> getListPaging(Criteria cri);
}
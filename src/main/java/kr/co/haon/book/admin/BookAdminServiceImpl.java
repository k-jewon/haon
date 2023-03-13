package kr.co.haon.book.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.haon.book.BookVO;
import kr.co.haon.book.Criteria;

@Service
public class BookAdminServiceImpl implements BookAdminService{
	@Autowired
	BookAdminDAO bookAdminDAO;
	
	@Override
	public List<BookVO> getBookListAdmin() {
		return bookAdminDAO.getBookListAdmin();
	}
	
	@Override
	public List<BookVO> getSearchList(BookVO vo) {
		return bookAdminDAO.getSearchList(vo);
	}
	
	@Override
	public List<BookVO> getListPaging(Criteria cri) {
		return bookAdminDAO.getListPaging(cri);
	}

}

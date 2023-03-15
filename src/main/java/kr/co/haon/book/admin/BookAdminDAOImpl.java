package kr.co.haon.book.admin;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.haon.book.BookVO;
import kr.co.haon.book.Criteria;

@Repository
public class BookAdminDAOImpl implements BookAdminDAO{
	
	@Autowired
	SqlSessionTemplate sst;
	
	@Override
	public List<BookVO> getBookListAdmin() {
		return sst.selectList("kr.co.haon.book.admin.BookAdminDAO.getBookListAD");
	}
	
	@Override
	public List<BookVO> getSearchList(BookVO vo) {
		return sst.selectList("kr.co.haon.book.admin.BookAdminDAO.getSearchListAD", vo);
	}
	
	@Override
	public List<BookVO> getListPaging(Criteria cri) {
		return sst.selectList("kr.co.haon.book.admin.BookAdminDAO.getListPaging", cri);
	}
}
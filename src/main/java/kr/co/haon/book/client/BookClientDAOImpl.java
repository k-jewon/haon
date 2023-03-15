package kr.co.haon.book.client;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.haon.book.BookVO;

@Repository
public class BookClientDAOImpl implements BookClientDAO{

	@Autowired
	private SqlSessionTemplate sst;
	
	@Override
	public int insertOne(BookVO bookVO) {
		return sst.insert("kr.co.haon.book.client.BookClientDAO.insertBook", bookVO);
	}
	
	@Override
	public List<BookVO> getBookList(int user_id) {
		return sst.selectList("kr.co.haon.book.client.BookClientDAO.getBookList", user_id);
	}
	
	
	@Override
	public void updateOne(int book_id) {
		System.out.println("업데이트 전");
		sst.update("kr.co.haon.book.client.BookClientDAO.updateBook",book_id);
		System.out.println("업데이트 후");
	}
}

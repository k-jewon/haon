package kr.co.haon.book.client;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.haon.book.BookVO;

@Service
public class BookClientServiceImpl implements BookClientService{
	
	@Autowired
	private BookClientDAO bookDAO;
	
	@Override
	public int insertOne(BookVO bookVO) {
		return bookDAO.insertOne(bookVO);
	}
	
	@Override
	public List<BookVO> getBookList(int user_id) {
		return bookDAO.getBookList(user_id);
	}
	
	@Override
	public void updateOne(int book_id) {
		bookDAO.updateOne(book_id);
	}
}

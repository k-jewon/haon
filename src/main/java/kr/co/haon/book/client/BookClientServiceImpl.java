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
	public List<BookVO> getBookList(int user_Id) {
		return bookDAO.getBookList(user_Id);
	}
	
	@Override
	public void updateOne(int book_Id) {
		bookDAO.updateOne(book_Id);
	}
}

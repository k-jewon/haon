package kr.co.haon.book.client;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.haon.book.BookVO;

@Service
public class BookClientServiceImpl implements BookClientService{
	
	@Autowired
	BookClientDAO bookDAO;
	
	@Override
	public void insertOne(BookVO bookVO) {
		bookDAO.insertOne(bookVO);
	}
	
	@Override
	public List<BookVO> getBookList() {
		return bookDAO.getBookList();
	}
	
	@Override
	public void updateOne(int book_Id) {
		bookDAO.updateOne(book_Id);
	}
}

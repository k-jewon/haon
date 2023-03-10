package kr.co.haon.book.client;

import java.util.List;

import kr.co.haon.book.BookVO;

public interface BookClientService {
	public void insertOne(BookVO bookVO);
	
	public List<BookVO> getBookList();
	
	public void updateOne(int book_Id);
}

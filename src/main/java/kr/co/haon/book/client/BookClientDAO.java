package kr.co.haon.book.client;

import java.util.List;

import kr.co.haon.book.BookVO;

public interface BookClientDAO {

	public int insertOne(BookVO bookVO);
	
	public List<BookVO> getBookList(int user_Id);
	
	public void updateOne(int book_Id);
}

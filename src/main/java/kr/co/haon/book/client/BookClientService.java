package kr.co.haon.book.client;

import java.util.List;

import kr.co.haon.book.BookVO;

public interface BookClientService {
	public int insertOne(BookVO bookVO);
	
	public List<BookVO> getBookList(int user_id);
	
	public void updateOne(int book_id);
}

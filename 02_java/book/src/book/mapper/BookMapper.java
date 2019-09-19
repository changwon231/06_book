package book.mapper;

import java.util.List;
import java.util.Map;

import book.vo.Book;
import book.vo.Code;

public interface BookMapper {

	List<Book> select(Book book);
	
	List<Book> searchByCompanyCd(Code code);
	
	List<Book> searchByBelowPrice(int price);
	
	List<Book> searchByPrice(Map<String, Integer> priceMap);
	
	List<Book> searchByOverPrice(int price);
	
	List<Book> searchByAll(String keyword);
	
	int insert(Map<String, Object> map);
	
	int update(Map<String, Object> map);
	
	int delete(Book book);
		
	int isExists(Book book);
}

package book.dao;

import java.util.List;
import java.util.Map;

import book.exception.DuplicateException;
import book.exception.NotFoundException;
import book.vo.Book;
import book.vo.Code;

/**
 * 매퍼 인터페이스의 각 메소드를 호출하여
 * 쿼리 실행 결과를 받는 모델(Data Access Object) 클래스
 * 
 * <대체로 이런 식으로 흘러간다는 뜻>
 * 1. 메퍼인터페이스를 복사 후
 * 2. 각 메소드에 필요에 따라 예외를 추가(Duplicate, NotFound)
 * @author ay0170301
 *
 */
public interface BookDaoIf {

	/**
	 * 도서 전체 목록을 조회 혹은 1건 조회
	 * @param book
	 * @return 검색된 도서 목록 List<Book>
	 */
	List<Book> select(Book book);
	
	/**
	 * 출판사 코드로 도서 조회
	 * @param code
	 * @return 검색된 도서 목록 List<Book>
	 */
	List<Book> searchByCompanyCd(Code code);
	
	/**
	 * 입력된 가격 이하인 도서 검색
	 * @param price
	 * @return 검색된 도서 목록 List<Book>
	 */
	List<Book> searchByBelowPrice(int price);
	
	/**
	 * 가격 범위에 해당하는 도서 검색
	 * @param priceMap : 최저가, 최고가 검색에 사용할 가격이 입력ㄷ3ㅚㄴ 맴 객체
	 * @return 검색된 도서 목록 List<Book>
	 */
	List<Book> searchByPrice(Map<String, Integer> priceMap);
	
	/**
	 * rkrur dltkddls ehtj rjator
	 * @param price
	 * @return 검색된 도서 목록 List<Book>
	 */
	List<Book> searchByOverPrice(int price);
	
	/**
	 * 키워드가 입력되었을 때, 제목, 저자, 출판사 종합 검색
	 * @param keyword
	 * @return 검색된 도서 목록 List<Book>
	 */
	List<Book> searchByAll(String keyword);
	
	/**
	 * 도서정보 1건 입력
	 * @param map
	 * @return DuplicateException 입력하려는 도서 키(PK) 중복이 발생할 경우
	 */
	int insert(Map<String, Object> map) throws DuplicateException;
	
	/**
	 * 도서 정보 1건 수정
	 * @param map
	 * @return
	 * @throws NotFoundException 수정하려는 도서 키캆이 존재하지 않는 경우
	 */
	int update(Map<String, Object> map) throws NotFoundException;
	
	/**
	 * 도서정보 1건 삭제
	 * @param book
	 * @return
	 * @throws NotFoundException 삭제하려는 도서 키(PK) 값이 존재하지 않는 경우
	 */
	int delete(Book book) throws NotFoundException;
	
	
}

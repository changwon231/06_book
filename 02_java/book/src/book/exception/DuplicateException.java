package book.exception;

import book.vo.Book;

/**
 * book 데이터 신규 입력시 책 정보 중복일 때
 * 발생시킬 예외 정의 클래스
 * @author ay0170301
 *
 */
public class DuplicateException extends Exception {

	// 기본 생성자
	public DuplicateException() {
		super("도서정보가 중복되었습니다.");
	}
	
	// 증복정의 생성자
	public DuplicateException(String type, Book book) {
		super(String.format("%s:[bookSeq:%d] 도서 정보가 중복되었습니다.", type, book.getBookSeq()));
	}
}

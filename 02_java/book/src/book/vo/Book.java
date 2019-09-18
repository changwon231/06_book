package book.vo;
import java.math.BigInteger;


/**
 * Book 테이블의 형태와 동일한 vo 클래스
 * @author ay0170301
 *
 */
public class Book {
	
	private BigInteger bookSeq;
	private String isbn;
	private String title;
	private String author;
	private String content;
	private BigInteger companyCd;
	private BigInteger totalpage;
	private BigInteger quantity;
	private String regId;
	private String regDate;
	private String modId;
	private String modDate;

	public Book() {
		
	}

	public BigInteger getBookSeq() {
		return bookSeq;
	}

	public void setBookSeq(BigInteger bookSeq) {
		this.bookSeq = bookSeq;
	}

	public String getIsbn() {
		return isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public BigInteger getCompanyCd() {
		return companyCd;
	}

	public void setCompanyCd(BigInteger companyCd) {
		this.companyCd = companyCd;
	}

	public BigInteger getTotalpage() {
		return totalpage;
	}

	public void setTotalpage(BigInteger totalpage) {
		this.totalpage = totalpage;
	}

	public BigInteger getQuantity() {
		return quantity;
	}

	public void setQuantity(BigInteger quantity) {
		this.quantity = quantity;
	}

	public String getRegId() {
		return regId;
	}

	public void setRegId(String regId) {
		this.regId = regId;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public String getModId() {
		return modId;
	}

	public void setModId(String modId) {
		this.modId = modId;
	}

	public String getModDate() {
		return modDate;
	}

	public void setModDate(String modDate) {
		this.modDate = modDate;
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((bookSeq == null) ? 0 : bookSeq.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Book other = (Book) obj;
		if (bookSeq == null) {
			if (other.bookSeq != null)
				return false;
		} else if (!bookSeq.equals(other.bookSeq))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Book [bookSeq=" + bookSeq + ", isbn=" + isbn + ", title=" + title + ", author=" + author + ", content="
				+ content + ", companyCd=" + companyCd + ", totalpage=" + totalpage + ", quantity=" + quantity
				+ ", regId=" + regId + ", regDate=" + regDate + ", modId=" + modId + ", modDate=" + modDate + "]";
	}
	
	
	
	
	
}

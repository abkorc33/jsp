package ch08;

public class BookInfo extends ProductInfo{

	private short page;		// 페이지
	private String writer;	// 저자
	
	public short getPage() {
		return page;
	}
	public void setPage(short page) {
		this.page = page;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	
	
	
}

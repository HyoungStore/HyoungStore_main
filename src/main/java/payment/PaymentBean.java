package payment;

//VO(Value Object)
public class PaymentBean {
	private String card_type;
	private String card_number;
	private String card_month;
	private String card_year;
	private String card_cvc;
	private String card_pwd;
	private String address_number;
	private String address;
	private String address_detail;
	
	
	public String getCard_type() {
		return card_type;
	}
	
	public void setCard_type(String card_type) {
		this.card_type = card_type;
	}
	
	public String getCard_number() {
		return card_number;
	}
	
	public void setCard_number(String card_number) {
		this.card_number = card_number;
	}
	
	public String getCard_month() {
		return card_month;
	}
	
	public void setCard_month(String card_month) {
		this.card_month = card_month;
	}
	
	public String getCard_year() {
		return card_year;
	}
	
	public void setCard_year(String card_year) {
		this.card_year = card_year;
	}
	
	public String getCard_cvc() {
		return card_cvc;
	}
	
	public void setCard_cvc(String card_cvc) {
		this.card_cvc = card_cvc;
	}
	
	public String getCard_pwd() {
		return card_pwd;
	}
	
	public void setCard_pwd(String card_pwd) {
		this.card_pwd = card_pwd;
	}
	
	public String getAddress_number() {
		return address_number;
	}
	
	public void setAddress_number(String address_number) {
		this.address_number = address_number;
	}
	
	public String getAddress() {
		return address;
	}
	
	public void setAddress(String address) {
		this.address = address;
	}
	
	public String getAddress_detail() {
		return address_detail;
	}
	
	public void setAddress_detail(String address_detail) {
		this.address_detail = address_detail;
	}
}	




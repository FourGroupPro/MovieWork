package kr.co.daegu.ticketing;

public class TicketingDTO {
	private String nal;
	private String mname;
	private String mtime;
	private int mticket;
	private String seatnumber;
	private int price;
	private String username;
	private String phone;
	private String email;
	private int combo1;
	private int combo2;
	private String card;
	
	public TicketingDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TicketingDTO(String nal, String mname, String mtime, int mticket, String seatnumber, int price,
			String username, String phone, String email, int combo1, int combo2, String card) {
		super();
		this.nal = nal;
		this.mname = mname;
		this.mtime = mtime;
		this.mticket = mticket;
		this.seatnumber = seatnumber;
		this.price = price;
		this.username = username;
		this.phone = phone;
		this.email = email;
		this.combo1 = combo1;
		this.combo2 = combo2;
		this.card = card;
	}

	public String getNal() {
		return nal;
	}

	public void setNal(String nal) {
		this.nal = nal;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getMtime() {
		return mtime;
	}

	public void setMtime(String mtime) {
		this.mtime = mtime;
	}

	public int getMticket() {
		return mticket;
	}

	public void setMticket(int mticket) {
		this.mticket = mticket;
	}

	public String getSeatnumber() {
		return seatnumber;
	}

	public void setSeatnumber(String seatnumber) {
		this.seatnumber = seatnumber;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getCombo1() {
		return combo1;
	}

	public void setCombo1(int combo1) {
		this.combo1 = combo1;
	}

	public int getCombo2() {
		return combo2;
	}

	public void setCombo2(int combo2) {
		this.combo2 = combo2;
	}

	public String getCard() {
		return card;
	}

	public void setCard(String card) {
		this.card = card;
	}

	@Override
	public String toString() {
		return "TicketingDTO [nal=" + nal + ", mname=" + mname + ", mtime=" + mtime + ", mticket=" + mticket
				+ ", seatnumber=" + seatnumber + ", price=" + price + ", username=" + username + ", phone=" + phone
				+ ", email=" + email + ", combo1=" + combo1 + ", combo2=" + combo2 + ", card=" + card + "]";
	}
	
	
	
}

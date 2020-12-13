package com.model;

public class RoyalRoomData {

	private String roomno;
	private String roomtype;
	private String bedtype;
	private String bill;
	
	
	public RoyalRoomData() {

	}

	public RoyalRoomData(String roomno, String roomtype, String bedtype,String bill) {
		super();
		this.roomno = roomno;
		this.roomtype = roomtype;
		this.bedtype = bedtype;
		this.bill=bill;
		
	}
	
	


	public String getRoomNo() {
		return roomno;
	}
	public void setRoomNo(String roomno) {
		this.roomno= roomno;
	}

	public String getRoomType() {
		 return roomtype;
	}
	public void setRoomType(String roomtype) {
		this.roomtype = roomtype;
	}

	public String getBedType() {
		return bedtype;
	}
	public void setBedType(String bedtype) {
		this.bedtype=bedtype;
	}
	public String getBill() {
		return bill;
	}
	public void setBill(String bill) {
		this.bill= bill;
	}

	@Override
	public String toString() {
		return "PasswordData [roomno=" + roomno + ", roomtype=" + roomtype
				+ ", bedtype=" + bedtype + ",bill=" + bill+ "]";
	}

}



package com.demoProject.pojo;

public class Cart {

	private int cartId;
	private String pname;
	private double price;
	private String userName;
	private String pdescription;
	private int pid;

	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	public String getPname() {
		return pname;
	}


	public void setPname(String pname) {
		this.pname = pname;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPdescription() {
		return pdescription;
	}

	public void setPdescription(String pdescription) {
		this.pdescription = pdescription;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	@Override
	public String toString() {
		return "Cart [cartId=" + cartId + ", pname=" + pname + ", price=" + price + ", userName=" + userName
				+ ", pdescription=" + pdescription + ", pid=" + pid + "]";
	}


}

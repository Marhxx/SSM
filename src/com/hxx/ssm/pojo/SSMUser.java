package com.hxx.ssm.pojo;

/**实体类
 * @author DELL
 *
 */
public class SSMUser {
	private int uid;
	private String uname;
	private String pwd;
	private String url;
	private double price;
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "SSMUser [uid=" + uid + ", uname=" + uname + ", pwd=" + pwd + ", url=" + url + ", price=" + price + "]";
	}
	
	
	
}

package com.smart.topology.pojo;

import java.io.Serializable;
import java.util.Date;

public class LoginInfo implements Serializable{
	private int loginInfoId;
	private int userId;
	private String deviceParam;
	private Date loginDate;
	/**
	 * @return the loginInfoId
	 */
	public int getLoginInfoId() {
		return loginInfoId;
	}
	/**
	 * @param loginInfoId the loginInfoId to set
	 */
	public void setLoginInfoId(int loginInfoId) {
		this.loginInfoId = loginInfoId;
	}
}

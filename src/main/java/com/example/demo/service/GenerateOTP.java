package com.example.demo.service;

public class GenerateOTP {
	
	public String otpCode() {
		int otp=(int) (Math.random()*900000)+100000;
		String createdOtpCode=String.valueOf(otp);
		return createdOtpCode;
	}

}

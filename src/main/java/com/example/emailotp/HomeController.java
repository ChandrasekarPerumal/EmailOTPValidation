package com.example.emailotp;

import java.io.IOException;

import javax.mail.MessagingException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.service.GenerateOTP;
import com.example.demo.service.SendmailService;


@SessionAttributes("otp")
@Controller
public class HomeController {

	@RequestMapping("home")
	public String home() {
		return "home";
	}
	@RequestMapping("oneTimePassword")
	public ModelAndView oneTimePassword( @RequestParam("email") String email) {
		SendmailService sendmailService = new SendmailService();
		ModelAndView model = new ModelAndView("/verifyOTP");
		try {

			GenerateOTP generateOtp=new GenerateOTP();
			String generatedOtp = generateOtp.otpCode();
			sendmailService.sendmail(email,generatedOtp);
		    model.addObject("otp", generatedOtp);
		} catch (MessagingException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    return model;
	}
}

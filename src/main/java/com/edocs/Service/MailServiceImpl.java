package com.edocs.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import java.io.UnsupportedEncodingException;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import com.edocs.Model.Mail;


@Service("mailService")
public class MailServiceImpl implements MailService {

    @Autowired
    JavaMailSender mailSender;
    
   
	public static int noOfQuickServiceThreads = 20;

	private static final Logger logger = LoggerFactory.getLogger(MailServiceImpl.class);

	private ScheduledExecutorService quickService = Executors.newScheduledThreadPool(noOfQuickServiceThreads);

    public void sendEmail(Mail mail) {
        MimeMessage mimeMessage = mailSender.createMimeMessage();
        try {
            MimeMessageHelper mimeMessageHelper = new MimeMessageHelper(mimeMessage, true);
            mimeMessageHelper.setSubject(mail.getMailSubject());
            mimeMessageHelper.setFrom(new InternetAddress("admin@edocs.com", "edocs.com"));
            mimeMessageHelper.setTo(mail.getMailTo());
            mimeMessageHelper.setText(mail.getMailContent(), true);
            
            

			quickService.submit(new Runnable() {
				@Override
				public void run() {
					try{
						mailSender.send(mimeMessageHelper.getMimeMessage());
						System.out.println("mail sending in process...!!!");	
					}catch(Exception e){
						logger.error("Exception occur while send a mail : ",e);
						e.printStackTrace();
//test
					}
				}
			});


        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
       
    } catch (javax.mail.MessagingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

	

	
    }
}

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Properties"%>
<%@page import="javax.mail.Session"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.MessagingException"%>



<%
    System.out.println("Entering sendemail.jsp");
    String data = request.getParameter("dataString");
    String[] emailContent = data.split("-");
    StringBuilder sb = new StringBuilder();
    sb.append("<html>");
    sb.append("<body>");
    sb.append("<table>");
    for (int i = 0; i < emailContent.length; i++) {
        sb.append("<tr>");
        sb.append("<td>");
        sb.append(emailContent[i].replace("\"",""));
        sb.append("</td>");
        sb.append("</tr>");
    }
    sb.append("</table>");
    sb.append("</body>");
    sb.append("</html>");

    String host = "smtp.zoho.com";
    String username = "owen@owenanalytics.com";
    String password = "Abcd@654321";
    String from = "owen@owenanalytics.com";
    Properties props = new Properties();
//    props.put("mail.debug", "true");
    props.put("mail.smtp.ssl.enable", "true");
    props.put("mail.smtp.auth", "true");
    props.put("mail.smtp.host", host);
    props.put("mail.smtp.port", 465);
    Session emailSession = Session.getInstance(props);
    MimeMessage msg = new MimeMessage(emailSession);
    msg.setFrom(new InternetAddress(from));
    msg.addRecipients(Message.RecipientType.TO, "adoshi@i-cube.in");
    msg.setSubject("You've got mail");
    msg.setContent(sb.toString(), "text/html");
    try {
//        System.out.println("Sending the email");
        Transport.send(msg, username, password);
    } catch (MessagingException e) {
        e.printStackTrace();
    }

//    System.out.println("Exiting sendemail.jsp");
%>
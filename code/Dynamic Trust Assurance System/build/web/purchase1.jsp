<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
    <%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ include file="connect.jsp" %>
<%@ page import="java.sql.*,java.util.Random,java.security.KeyPairGenerator,javax.crypto.Cipher,java.security.Key,java.security.KeyPair     "%>

    <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Greendeer | Blog</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-quicksand.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {
	font-size: 24px;
	color: #FF0000;
	font-weight: bold;
}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style1">A Robust Reputation management mechanism in the federated cloud</a></h1>
      </div>
      <div class="searchform">
        <form id="formsearch" name="formsearch" method="post" action="#">
          <span>
          <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
          </span>
          <input name="button_search" src="images/search.gif" class="button_search" type="image" />
        </form>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
           <li class="active"><a href="user_main.jsp"><span>Home Page</span></a></li>
          <li class="active" ><a href="purchase.jsp"><span>Purchase VM</span></a></li>
         <li class="active"><a href="sendfile.jsp"><span>Upload File</span></a></li>
         <li class="active"><a href="Verify.jsp"><span>Verify</span></a></li>
		 <li class="active"><a href="index.html"><span>Logout</span></a></li>
          
        </ul>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
        
          <div class="mainbar">
            <div class="article">
            <p>&nbsp;</p>
              <h2>Purchase the VM</h2>
              			  <br />
              <%
     
	     	String cname=request.getParameter("select5");
            String fname=request.getParameter("select6");
        
		
		try
		{
			Statement st=connection.createStatement();
			
			String cost="";
			
			
			
			
			
			
			String query="select * from cost where memory='"+fname+"' and cloud='"+cname+"' "; 
	           
	           ResultSet rs=st.executeQuery(query);
			
			if(rs.next())
			{
				cost=rs.getString(2);
				
				
				SimpleDateFormat sdfDate = new SimpleDateFormat(
						"dd/MM/yyyy");
				SimpleDateFormat sdfTime = new SimpleDateFormat(
						"HH:mm:ss");

				Date now = new Date();

				String strDate = sdfDate.format(now);
				String strTime = sdfTime.format(now);
				String dt = strDate + "   " + strTime;
				
				String uname=(String)application.getAttribute("uname");

				String query1="select * from vm where oname='"+uname+"' and cname='"+cname+"' "; 
		           
		           ResultSet rs1=st.executeQuery(query1);
				
				if(rs1.next())
				{
					String mem=rs1.getString(4);
					String cos=rs1.getString(5);
					int mem1=Integer.parseInt(mem)+Integer.parseInt(fname);
					int cos1=Integer.parseInt(cos)+Integer.parseInt(cost);
					
					st.executeUpdate("update vm set memory='"+mem1+"',cost='"+cos1+"',dt='"+dt+"' where oname='"+uname+"' and cname='"+cname+"'  ");
				}
				else
				{
					st.executeUpdate("insert into  vm (oname,cname,memory,cost,bw,dt) values ('"+uname+"','"+cname+"','"+fname+"','"+cost+"','10000','"+dt+"')");
				}

	

	
	
	
	
	
	out.println("VM PURCHASED SUCCESSFULLY");
	out.println("Cost for VM is->"+cost);
			
	%><p><a href="purchase.jsp">Back</a></p>



<%
		}
		
		 	}
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
           %>
            </div>
          </div>
        </div>
        <div class="article">
          <h2>&nbsp;</h2>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="viewcloudrepu.jsp">Find Reputation</a></li>
            <li><a href="viewcloudtrust.jsp">Find Trust Worthy</a></li>
            <li><a href="viewcloudcost.jsp">Find Cost & Memory</a></li>
            <li><a href="SendTrust.jsp">Send Trustworthiness of Cloud</a></li>
            <li><a href="Delete.jsp">Delete</a></li>
            <li><a href="viewcloudfiles.jsp">View Cloud Files</a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2>&nbsp;</h2>
        </div>
      <div class="col c2">
        <h2>&nbsp;</h2>
      </div>
      <div class="col c3">
        <h2>&nbsp;</h2>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>

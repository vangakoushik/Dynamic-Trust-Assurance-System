<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
    <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>List Content Attackers</title>
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
	color: #FF0000;
	font-weight: bold;
}
.style2 {
	font-size: 24px;
	color: #FF0000;
}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style2">A Robust Reputation management mechanism in the federated cloud</a></h1>
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
         <li class="active"><a href="admin_main.jsp"><span>Home Page</span></a></li>
          <li class="active"><a href="listallcollusion.jsp"><span>Collusion Attacks</span></a></li>
          <li class="active"><a href="listallsybil.jsp"><span>Sybil Attacks</span></a></li>
          <li  class="active"><a href="viewuserservice.jsp"><span>Uers on Services</span></a></li>
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
              <h2>View Content Attacks </h2>
              			  <br />
              <table width="1073" border="1" align="center">
  <tr>
    <td width="68" bgcolor="#FFFF00"><div align="center" class="style1"><span class="style3">Oname </span></div></td>
    <td width="63" bgcolor="#FFFF00"><div align="center" class="style1"><span class="style3">Cloud </span></div></td>
    <td width="357" bgcolor="#FFFF00"><div align="center" class="style1"><span class="style3">Changed Content</span></div></td>
    <td width="127" bgcolor="#FFFF00"><div align="center" class="style1"><span class="style3">Content ID</span></div></td>
    <td width="89" bgcolor="#FFFF00"><div align="center" class="style1"><span class="style3">Attacker IP</span></div></td>
    <td width="106" bgcolor="#FFFF00"><div align="center" class="style1"><span class="style3">Attacker Name </span></div></td>
    <td width="100" bgcolor="#FFFF00"><div align="center" class="style1"><span class="style3">Date & Time </span></div></td>
	<td width="111" bgcolor="#FFFF00"><div align="center" class="style1"><span class="style3">Recovery </span></div></td>
  </tr>

<%

      	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9,s10,s11,s12,s13;
	int i=0,j=0;

      	try 
	{
        
           String query="select * from Attackers2   "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		
		s1=rs.getString(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		i=rs.getInt(4);
		s5=rs.getString(5);
		s6=rs.getString(6);
		s7=rs.getString(7);
		
%>


  <tr>
    <td><div align="center"><%=s1%></div></td>
    <td><div align="center"><%=s2%></div></td>
	<td><div align="center">
	  <form id="form1" name="form1" method="post" action="">
	    <textarea name="textarea" cols="60" rows="10"><%=s3%></textarea>
	    </form>
	  </div></td>
    <td><div align="center"><%=i%></div></td>
    <td><div align="center"><%=s5%></div></td>
    <td><div align="center"><%=s6%></div></td>
    <td><div align="center"><%=s7%></div></td>
     <td><div align="center"><a href="Recovery1.jsp?uid=<%=i%>"> Recover File &nbsp;</a></div></td>
  </tr>

<%

	 
	   }
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
</table>
            </div>
          </div>
        </div>
        <div class="article">
          <h2>&nbsp;</h2>
          <div class="clr"></div>
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

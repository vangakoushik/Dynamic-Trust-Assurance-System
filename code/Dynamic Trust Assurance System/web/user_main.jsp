<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>DATA OWNER MAIN</title>
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
	color: #FF00FF;
	font-weight: bold;
}
.style2 {
	color: #FF0000;
	font-weight: bold;
	font-style: italic;
}
.style5 {
	font-size: 24px;
	color: #FF0000;
	font-weight: bold;
}
.style6 {	color: #FF0000;
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
        <h1><a href="index.html"><span class="style5">A Robust Reputation management mechanism in the federated cloud</span> </a></h1>
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
          <li class="active" ><a href="Verify.jsp"><span>Verify</span></a></li>
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
              <h2>Welcome to <%= application.getAttribute("uname")%></h2>
              <p align="justify"><img src="images/CloudAdmin.jpg" width="609" height="232" /> <span class="style2"><br />
              </span></p>
              <div class="clr style1"></div>
              <div align="justify"><span class="style6">In the Infrastructure as a Service (IaaS) paradigm of cloud computing, computational resources are available for rent. Although it offers a cost efficient solution to virtual network requirements, low trust on the rented computational resources prevents users from using it. To reduce the cost, computational resources are shared, i.e., there exists multi-tenancy. As the communication channels and other computational resources are shared, it creates security and privacy issues. A user may not identify a trustworthy co-tenant as the users are anonymous. The user depends on the Cloud Provider (CP) to assign trustworthy co-tenants. But, it is in the CP’s interest that it gets maximum utilization of its resources. Hence, it allows maximum co-tenancy irrespective of the behaviours of users. In this paper, we propose a robust reputation management mechanism that encourages the CPs in a federated cloud to differentiate between good and malicious users and assign resources in such a way that they do not share resources. We show the correctness and the efficiency of the proposed reputation management system using analytical and experimental analysis.</span></div>
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
          <h2 class="star"><span>Menu Operations</span></h2>
          <div class="clr"></div>
          <ul class="style1">
            <li class="star"><a href="viewcloudrepu.jsp">Find Reputation</a></li>
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
      <p class="lf">&copy;</p>
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>

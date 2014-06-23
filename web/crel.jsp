<%-- 
    Document   : index
    Created on : May 22, 2014, 7:13:47 AM
    Author     : Thon Nguyen
--%>

<%@page import="com.opensymphony.xwork2.ActionContext"%>
<%@page import="java.util.List"%>
<%@taglib prefix="s" uri="/struts-tags" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>AddLocation</title>
<meta name="keywords" content="travel and tour, free website template, free css template, CSS, XHTML" />
<meta name="description" content="travel and tour, free website template, free css template provided by TemplateMo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="login.css" rel="stylesheet" type="text/css"/>
<link rel="icon" href="images/images.jpg" type="image/x-icon"/>
</head>
<body>
<div id="templatemo_container">
<!-- Free CSS Templates @ www.TemplateMo.com -->
	<div id="templatemo_header">
    	<div id="site_logo">
        </div>
</div> <!-- end of header -->
    
    <div id="templatemo_menu">
        <ul>
            <li><a href="home.jsp" class="current">Home</a></li>
            <li><a href="addlocation">Category</a></li>
            <li><a href="Post.jsp">Post</a></li>
            <li><a href="#">Gallery</a></li>
            <li><a href="crA.jsp">Registered</a></li>
            <li><a href="login.jsp" class="last">Login</a></li>
        </ul>    	
    </div> <!-- end of menu -->
    
    <div id="templatemo_content">     
        <div id="content_left">
       	  <div class="left_column_section">
			<div class="header_01 border_bottom">Welcome to travel &amp; tour</div>
                        <div class="login">
      <h1>Add Location</h1>
      <form method="post" action="addlocation">
          <label style="color: red;margin-bottom: 15px;"><c:out value="${sessionScope.context}"/></label><br>
        <p><input type="text" name="name"  placeholder="Name"></p>
        <p><input type="text" name="address"  placeholder="Address"></p>
        <p class="submit"><input type="submit" name="commit" value="AddLocation"></p>
      </form>
    </div>
            <div class="margin_bottom_20"></div>
          
            </div>
            
        </div> <!-- end of content left -->
        
		<div id="content_right">
        	<div class="right_column_section">
           	  <div class="header_02">Categori</div>
                    <s:iterator value="listAll">
                            <div id="posts">
                                <div class="post">
                                    <h1><s:property value="name"/></h1>
                                    <p><s:property value="address"/></p>
                                </div>
                            </div>
                        </s:iterator>
            <div class="content">
                 <ul id="categories">
                        </ul>
                </div>
                
                <div class="margin_bottom_20"></div>
            </div>
        </div> <!-- end of content right -->
        
        <div class="cleaner"></div>

	</div> <!-- end of container -->
    
    <div id="templatemo_bottom_panel">
    	<div class="content_panel_4_col">
	      
          <div class="cleaner"></div>
      </div>
    </div>
    
    <div id="templatemo_footer">
	    Copyright © 2048 <a href="#">Your Company Name</a> | <a href="http://www.iwebsitetemplate.com" target="_parent">Website Templates</a> by <a href="http://www.templatemo.com" target="_parent">FPT-Aptech</a>
		<div class="margin_bottom_20"></div>
        <a href="http://validator.w3.org/check?uri=referer"><img style="border:0;width:88px;height:31px" src="http://www.w3.org/Icons/valid-xhtml10" alt="Valid XHTML 1.0 Transitional" width="88" height="31" vspace="8" border="0" /></a>
<a href="http://jigsaw.w3.org/css-validator/check/referer"><img style="border:0;width:88px;height:31px"  src="http://jigsaw.w3.org/css-validator/images/vcss-blue" alt="Valid CSS!" vspace="8" border="0" /></a>
    </div> <!-- end of footer -->
<!-- Free Website Templates @ TemplateMo.com -->
</div> <!-- end of container -->
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body>
</html>

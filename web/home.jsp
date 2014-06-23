<%-- 
   Document   : index
   Created on : May 22, 2014, 7:13:47 AM
   Author     : Thon Nguyen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>TravelBlog</title>
        <meta name="keywords" content="travel and tour, free website template, free css template, CSS, XHTML" />
        <meta name="description" content="travel and tour, free website template, free css template provided by TemplateMo.com" />
        <link href="templatemo_style.css" rel="stylesheet" type="text/css" />
        <link rel="icon" href="images/images.jpg" type="image/x-icon"/>
    </head>
    <body>

        <div id="templatemo_container">
            <!-- Free CSS Templates @ www.TemplateMo.com -->
            <div id="templatemo_header">
                <div id="site_logo">
                </div>
            </div> <!-- end of header -->
             <%if (session.getAttribute("user") == null) {
                    response.sendRedirect("index.jsp");
                }
            %>
            <div id="templatemo_menu">
                <ul>
                    <li><a href="index.jsp" class="current">Home</a></li>
                    <li><a href="addlocation">Category</a></li>
                    <li><a href="Post.jsp">Post</a></li>
                    <li><a href="#">Gallery</a></li>
                    <li><a href="crA.jsp">Registered</a></li>
                    <li><a href="logout" class="last">Logout</a></li>
                </ul>    	
            </div> <!-- end of menu -->
            <div id="templatemo_content">

                <div id="content_left">
                    <div class="left_column_section">

                        <div class="header_01 border_bottom">Welcome to travel &amp; tour</div>

                        <div class="image_box margin_right_20">
                            <img src="images/templatemo_image_02.jpg" alt="image" />                	
                        </div>

                        <div class="image_box">
                            <img src="images/templatemo_image_01.jpg" alt="image" />
                        </div>

                        <div class="margin_bottom_20"></div>

                    </div>

                </div> <!-- end of content left -->

                <div id="content_right">
                    <div class="right_column_section">
                        <div class="header_02">Category</div>
                        <div class="content">
                            <div class="header_03">Sed ut justo id nisi</div>
                            <p>Sed ut justo id nisi convallis fermentum sit amet at felis. Vivamus id risus urna, ut ornare mauris.
                                <a href="#">View Details</a></p>
                        </div>

                        <div class="margin_bottom_20"></div>

                        <div class="content">
                            <div class="header_03">Aliquam quis lectus urna</div>
                            <p>Nulla quis aliquam nisl. Proin non mauris ante, at faucibus metus. Nulla a nunc tortor, sed tincidunt urna.
                                <a href="#">View Details</a></p>
                        </div>
                        <span></span>
                    </div>
                </div> <!-- end of content right -->

                <div class="cleaner"></div>

            </div> <!-- end of container -->

            <div id="templatemo_bottom_panel">
                <div class="content_panel_4_col">
                    <div class="header_01 border_bottom">Popular Destinations</div>
                    <div class="content_panel_section margin_right_50">
                        <ul>
                            <li>
                                <a href="#">Donec a nunc nec est euismod congue.
                                    <span>Duis id erat quis sem eleifend molestie.</span></a>
                            </li>
                            <li>
                                <a href="#">Proin at urna eu sem convallis elementum.
                                    <span>Mauris non sem tellus, id imperdiet tellus. </span></a>
                            </li>
                            <li>
                                <a href="#">Aenean tristique vehicula laoreet.
                                    <span>Pellentesque euismod auctor libero, in euismod eros.</span></a>
                            </li>
                        </ul>
                    </div>

                    <div class="content_panel_section">
                        <ul>
                            <li>
                                <a href="#">Vestibulum euismod vulputate consectetur.
                                    <span>Suspendisse risus tortor, sagittis ac ante.</span></a>
                            </li>
                            <li>
                                <a href="#">tiam turpis arcu, tempus id mauris.
                                    <span>uisque scelerisque interdum condimentum.</span></a>
                            </li>
                            <li>
                                <a href="#">Ut purus tellus, placerat eget mi.
                                    <span>Aliquam pretium turpis, sed cursus urna fermentum non. </span></a>
                            </li>
                        </ul>
                    </div>

                    <div class="cleaner"></div>
                    <div class="rc_btn_01"><a href="#">View all...</a></div>
                </div>
            </div>

            <div id="templatemo_footer">
                Copyright © 2048 <a href="#">Your Company Name</a> | <a href="http://www.iwebsitetemplate.com" target="_parent">Website Templates</a> by <a href="http://www.templatemo.com" target="_parent">Free CSS Templates</a>
                <div class="margin_bottom_20"></div>
                <a href="http://validator.w3.org/check?uri=referer"><img style="border:0;width:88px;height:31px" src="http://www.w3.org/Icons/valid-xhtml10" alt="Valid XHTML 1.0 Transitional" width="88" height="31" vspace="8" border="0" /></a>
                <a href="http://jigsaw.w3.org/css-validator/check/referer"><img style="border:0;width:88px;height:31px"  src="http://jigsaw.w3.org/css-validator/images/vcss-blue" alt="Valid CSS!" vspace="8" border="0" /></a>
            </div> <!-- end of footer -->
            <!-- Free Website Templates @ TemplateMo.com -->
        </div> <!-- end of container -->
        <div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.HashMap" %>
 <%@ page import="com.edocs.Model.UserModel" %>
 <%@ page import="java.util.Date" %>
 <%@ page import=" java.time.LocalDate" %>
  <%@ page import="java.time.Month"%>
  <%@ page import="java.time.format.DateTimeFormatter "%>
  <%@ page import="java.util.Calendar"%>

<div class="menu-desktop-wrapper">
         <nav class="menu-desktop">
            <div class="container">
               <a class="menu-logo" href="/"><img  src="/images/edocs-trave-logo.png" class="desktop-logo" style="width: 250px; height:60px;"><img src="/images/edocs-trave-logo.png" class="mobile-logo" loading="lazy"  style="display:none;"></a>
               <div class="menu-left-side">
                  <ul class="menu-options">
                     <li class="dropdown-wrapper">
                        <a href="#" id="menu-desktop-get-visa" class="link-prevent menu-option-dropdown custom-shape-link custom-shape-link-flexible" style="color: #1d3367 !important;">Get Visa</a>
                        <ul class="menu-dropdown-values hidden" id="destinations" style="width:auto; height:auto;">
                           
                           <li><a href="/en/india" title="Visa for India" style="color: #1d3367 !important;">India</a></li>
                          
                           <li style="border-right: none;">
                           <a href="/en/turkey" title="Visa for Turkey" style="color: #1d3367 !important;">Turkey</a></li>
                           
                            <li><a href="/en/pakistan" title="Visa for pakistan" style="color: #1d3367 !important;">Pakistan</a></li>
                            
                             <li><a href="/en/thailand" title="Visa for thailand" style="color: #1d3367 !important;">Thailand</a></li>
                             
                              <li><a href="/en/united-arab-emirates" title="Visa for UAE" style="color: #1d3367 !important;">United Arab Emirates</a></li>
                        
                        </ul>
                     </li>
                     <li><a href="/en/passenger-locator-form" title="Passenger Locator Forms" style="color: #1d3367 !important;">Passenger Locator Forms</a></li>
                     <li><a href="#" title="Travel Insurance" rel="nofollow" style="color: #1d3367 !important;">Travel Insurance</a></li>
                     <li><a href="/en/travel-entry-requirements" title="Check Entry Requirements" style="color: #1d3367 !important;">Check Entry Requirements</a></li>
                   
                   <li>
                   <%
	                   if (request.getSession().getAttribute("userLogin") != null) {
	               		HashMap<Object, Object> userDetails =(HashMap<Object, Object>) request.getSession().getAttribute("userLogin");
	               		UserModel user = (UserModel)userDetails.get("data");
	               		
						long userid1 = user.getUserId();
						if(userid1 == 0){
						%>
							<a href="/login" id="loginLinkId" style="color: #1d3367 !important;">Log In</a>
						<%}else{%>
						<ul class="menu-options account-dropdown">
						<li class="dropdown-wrapper">
						<a id="menu-desktop-account" href="" class="menu-account-user link-prevent menu-option-dropdown">
						<img src="https://evisa.express/img/icon/account-personal.svg" alt="">
						<div class="user-name">My account</div></a>
						<ul class="menu-dropdown-values hidden">
						<li>
						<a id="menu-desktop-account-index" href="/en/account" title="My applications">My applications</a>
						</li>
						<li>
						<a id="menu-desktop-account-settings" href="/en/account" title="Settings">Settings</a></li>
						<li><a id="menu-desktop-logout" href="/logout">Log out</a>
						</li>
						</ul></li>
						</ul>
							
						<%}
						}else{  %>
							<a href="/login" id="loginLinkId" style="color: #1d3367 !important;">Log In</a>
						<% }
						%>
						
						
                           
                   </li>
                  
                  </ul>
               </div>
               <div class="hamburger-menu">
                  MENU
                  <svg height="16" width="16" viewBox="0 0 16 16">
                     <g fill="#7C152A" fill-rule="evenodd">
                        <rect id="Rectangle-6" x="1" y="2" width="14" height="2"></rect>
                        <rect id="a" x="1" y="7" width="14" height="2"></rect>
                        <rect x="1" y="12" width="14" height="2"></rect>
                     </g>
                  </svg>
               </div>
            </div>
         </nav>
      </div>
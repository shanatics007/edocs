<%@page import="com.edocs.Model.ApplicationForVisaModel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.HashMap" %>
 <%@ page import="com.edocs.Model.UserModel" %>
 <%@ page import="java.util.Date" %>
 <%@ page import=" java.time.LocalDate" %>
  <%@ page import="java.time.Month"%>
  <%@ page import="java.time.format.DateTimeFormatter "%>
  <%@ page import="java.util.Calendar"%>

<!DOCTYPE html>

<html lang="en">
<head>
<style>
#menuDropdownValuesHeaderPage{
	width:100% !important;
	margin-top:10px !important;
}

#menu-desktop-get-visa{
    background-image: url(/images/down-arrow.png) !important;
    cursor: pointer;
    background-size: 1.6rem !important;
    background-repeat: no-repeat !important;
    background-position: right !important;
    background-size: 1.4rem !important;
    vertical-align: middle;
    padding-right: 25px !important
 
}
 @media (max-width: 599px){

#menu-desktop-account {
    display: flex;
}
ul.menu-options.account-dropdown {
    list-style-type: none;
    padding-left: 0;

}
.user-name {
    margin-left: 10px;
    color: #1c3367;
   font-weight: 700;
}
ul.menu-dropdown-values {
    list-style-type: none;
}
} 
#menu-desktop-get-visa:hover {
   
    background-image: url(/images/arrow-up.png) !important;
    cursor: pointer;
    background-size: 1.6rem !important;
    background-repeat: no-repeat !important;
    background-position: right !important;
    background-size: 1.2rem !important;
    vertical-align: middle;
    padding-right: 25px !important;
}
</style>

</head>
<body>
<div class="menu-desktop-wrapper">
         <nav class="menu-desktop">
            <div class="container">
               <a class="menu-logo" href="/"><img  src="/images/edocs-trave-logo.png" class="desktop-logo" style="width: 250px; height:60px;"><img src="/images/edocs-trave-logo.png" class="mobile-logo" loading="lazy"  style="display:none;"></a>
               <div class="menu-left-side">
                  <ul class="menu-options">
                     <li class="dropdown-wrapper">
                        <a href="#" id="menu-desktop-get-visa" class="link-prevent menu-option-dropdown custom-shape-link custom-shape-link-flexible" style="color: #1d3367 !important;">Get Visa</a>
                        <ul class="menu-dropdown-values hidden" id="destinations" style="width:auto; height:auto;">
                           
                           <li><a href="/en/india" title="Visa for India">India</a></li>
                          
                           <li style="border-right: none;">
                           <a href="/en/turkey" title="Visa for Turkey">Turkey</a></li>
                           
                            <li><a href="/en/pakistan" title="Visa for pakistan">Pakistan</a></li>
                            
                             <li><a href="/en/thailand" title="Visa for thailand">Thailand</a></li>
                             
                              <li><a href="/en/united-arab-emirates" title="Visa for UAE">United Arab Emirates</a></li>
                        
                        </ul>
                     </li>
                     <li><a href="/en/passenger-locator-form" title="Passenger Locator Forms" style="color: #1d3367 !important;">Passenger Locator Forms</a></li>
                     <li><a href="#" title="Travel Insurance" rel="nofollow" style="color: #1d3367 !important;">Travel Insurance</a></li>
                     <li><a href="/en/travel-entry-requirements" title="Check Entry Requirements" style="color: #1d3367 !important;">Check Entry Requirements</a></li>
                   
                   <li>
                   <%
	                   if (request.getSession(false).getAttribute("userLogin") != null) {
	               		HashMap<Object, Object> userDetails =(HashMap<Object, Object>) request.getSession(false).getAttribute("userLogin");
	               		
	               		if(userDetails!=null){
	               		UserModel user = (UserModel)userDetails.get("data");
						long userid1 = user.getUserId();	
						if(userid1 == 0){
						%>
							<a href="/login" id="loginLinkId" style="color: #1d3367 !important;">Log In</a>
						<%}else{%>
						<ul class="menu-options account-dropdown">
						<li class="dropdown-wrapper">
						<a id="menu-desktop-account" href="" class="menu-account-user link-prevent menu-option-dropdown">
						<img src="/images/user_icon.png" alt="userProfile" style="width:25px; height: 25px;">
						<div class="user-name" style="color: #1d3367;	margin-left: 10px;">My Account</div></a>
						<ul class="menu-dropdown-values hidden" id="menuDropdownValuesHeaderPage">
						<li>
						<a id="menu-desktop-account-index" href="/en/account" title="My applications">My Aplications</a>
						</li>
						<li>
						<a id="menu-desktop-account-settings" href="/en/account" title="Settings">Settings</a></li>
						<li><a id="menu-desktop-logout" href="/logout">Log out</a>
						</li>
						</ul></li>
						</ul>
							
						<%  
						
						}
						}else{ %>
							<a href="/login" id="loginLinkId" style="color: #1d3367 !important;">Log In</a>
						<% }
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
      
      	<div class="mobile-menu right5000">
		<div class="mobile-menu-top">
		<span class="mobile-menu-account in-header">
		
                   <%
	                   if (request.getSession(false).getAttribute("userLogin") != null) {
	               		HashMap<Object, Object> userDetails =(HashMap<Object, Object>) request.getSession(false).getAttribute("userLogin");
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
						<ul class="menu-dropdown-values hidden" id="menuDropdownValuesHeaderPage">
						<li>
						<a id="menu-desktop-account-index" href="/en/account" title="My applications">My applications</a>
						</li>
						<li>
						<a id="menu-desktop-account-settings" href="/en/account" title="Settings">Settings</a></li>
						<li><a id="menu-mobile-login" class="mobile-menu-font" href="/logout" rel="nofollow">Log out</a>
						</li>
						</ul></li>
						</ul>
							
						<%}
						}else{  %>
							<a id="menu-mobile-login" class="mobile-menu-font" href="/login" rel="nofollow">Log in</a>
						<% }
						%>
				
			</span>
				
				<span class="mobile-menu-close">close</span>
		</div>
		<ul class="toggle-box">
			<li class="toggle-li"><a id="menu-mobile-get-visa"
				class="mobile-menu-font toggle-click-closed">get visa</a>
				<div class="height">
					<ul class="mobile-menu-country-list">

						<li><a href="/en/india">India</a></li>

						<li><a href="/en/turkey">Turkey</a></li>

						<li><a href="/en/pakistan">Pakistan</a></li>

						<li><a href="/en/thailand">Thailand</a></li>

						<li><a href="/en/united-arab-emirates">United Arab Emirates</a></li>

					</ul>
				</div></li>
			<li class="toggle-li"><a id="menu-mobile-groups"
				class="mobile-menu-font" href="/en/passenger-locator-form"
				style="color: #1d3367 !important;">Passenger Locator Forms</a></li>
			<li class="toggle-li"><a id="menu-mobile-groups"
				class="mobile-menu-font" href="#" rel="nofollow"
				style="color: #1d3367 !important;">Travel Insurance</a></li>
			<li class="toggle-li"><a id="menu-mobile-groups"
				class="mobile-menu-font" href="/en/travel-entry-requirements"
				style="color: #1d3367 !important;">Check Entry Requirements</a></li>

		</ul>
	</div>
	<script>

	var checkUser = false;
	</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.util.HashMap" %>
 <%@ page import="com.edocs.Model.ApplicationForVisaModel" %>
 <%@ page import="java.util.Date" %>
 <%@ page import=" java.time.LocalDate" %>
  <%@ page import="java.time.Month"%>
  <%@ page import="java.time.format.DateTimeFormatter "%>
  <%@ page import="java.util.Calendar"%>
  
 <%    
 String travelAirports=null;
 int pkId;
 String applicationId=null;
 String plannedDateOfTravel=null;
 String travelPurpose = null;
 String firstName = null;
 String lastName = null;
 String email = null;
 String contactPhoneNumber = null;
 String nationality=null;
 String price=null;
 String dateOfBirth=null;
 boolean checkUser=false;
 
 String dayDOB = null;
 String dayMonth = null;
 String yearlistdob = null;
 
 String dayArrival = null;
 String montharrival = null;
 String yearlist = null;
 String authKey = null;
 long userId=0;

 
if (request.getSession(false).getAttribute("formDetails") != null) {
	HashMap<Object, Object> appVisamodel =(HashMap<Object, Object>) request.getSession(false).getAttribute("formDetails");
	//ApplicationForVisaModel test =request.getSession(false).getAttribute("formDetails");
	System.out.println("AppData:"+appVisamodel.get("data"));
	ApplicationForVisaModel ApplnFormData = (ApplicationForVisaModel)appVisamodel.get("data");
	if(ApplnFormData!=null){
	
	checkUser=true;
	
	 pkId = ApplnFormData.getPkid();
	 applicationId = Integer.toString(pkId);
	 travelAirports = ApplnFormData.getTravelAirports();
	 plannedDateOfTravel = ApplnFormData.getPlannedDateOfTravel();
	 String [] dateOfTravel = plannedDateOfTravel.split("-");
	
	 dayArrival = dateOfTravel[0];
	 montharrival = dateOfTravel[1];
	 yearlist = dateOfTravel[2];
	
	 travelPurpose = ApplnFormData.getPurposeForTravel();
	 firstName = ApplnFormData.getFirstName();
	 lastName =  ApplnFormData.getLastName();
	 email = ApplnFormData.getEmail();
	 contactPhoneNumber = ApplnFormData.getContactPhoneNumber();
	nationality = ApplnFormData.getNationality();
	 userId = ApplnFormData.getUserId();
	 price = ApplnFormData.getPrice();
	 authKey = ApplnFormData.getConfirmAuthKey();

   	dateOfBirth = ApplnFormData.getDateOfBirth();
	String [] dateBirth =  dateOfBirth.split("-");
	 
	 dayDOB = dateBirth[0];
	 dayMonth = dateBirth[1];
	 yearlistdob = dateBirth[2];
	 
	}else{
		
		checkUser=false;
	}
} 
String userEmail = "";
String userfullName = "";
long userId1 = 0;
String userFirstName = "";
String userLastName = "";
boolean userCheckslogin=false;
if (request.getSession(false).getAttribute("userLogin") != null) {
		HashMap<Object, Object> userDetails =(HashMap<Object, Object>) request.getSession(false).getAttribute("userLogin");
		UserModel user1 = (UserModel)userDetails.get("data");
		userEmail= user1.getUserEmail();
		userfullName = user1.getFullName();
		String [] fullNameSplitted = userfullName.split(" ");
		userFirstName = fullNameSplitted[0];
		userLastName = fullNameSplitted[1];
		userId1 = user1.getUserId();
		checkUser=true;
		userCheckslogin=true;
}
%> 
    <!DOCTYPE html>
 
<html lang="en">
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     
      <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
      <title>Edocs Travel</title>
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
       <link rel="stylesheet" href="/css/default.css"> 
    <link rel="stylesheet" href="/css/home.css">
        <link rel="stylesheet" href="/css/additionalInfoFrom.css">
      <link rel="icon" href="/images/favicon-1.png" type="image/x-icon">
     
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
      <script src="jquery-3.6.0.min.js"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
       <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
       <script async="" src="/js/home.js"></script>
       <script async="" src="/js/tag.js"></script>
       <script async="" src="/js/vendor.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/webcamjs/1.0.26/webcam.js"></script>
       <script src="https://cdnjs.cloudflare.com/ajax/libs/jQuery-webcam/1.0.0/jquery.webcam.min.js" integrity="sha512-bTfNSUABHISn7mcOc9mM5xDipX1v7qcfilknueD19cxJ0gTO2/Y2iIByraL01gzsHarb5jyzbgKplvYPAXhnmg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script> 
       
 <style>
       
 .newform {
   width: 80%;
   margin: auto;
	}
	.row {
    margin-bottom: 0px;
    margin-top: 1rem;
}
select{
	width: 100%;
    height: 50px;
    padding: 8px;
    font-size: 18px;
}
input[type="radio"] {
    display: block !important;
}
input[type="text"] {
    width: 100%;
    height: 50px;
  font-size: 18px;
}
label {
    font-size: 18px;
    font-weight: 500;
    color: #1d3367;
}
div#VisaandpriceId {
    border-bottom: 1px solid #D8D9CF;
    display: none;
}

span#priceidinDoller {
    display: flex;
    align-items: center;
    font-weight: 700;
    font-size: 22px;
    color: #1d3367;
}
#formheadrId{
    font-size: 20px;
    font-weight: 500;
    color: #1d3367;
}
#radiorow .col-sm-5:first-child {
    padding-left: 32px;
}
#radiorow .col-sm-5:last-last {
    padding-right: 32px;
}

input#no {
   height: 24px;
    width: 18px;
    margin-top: 10px;
}
input#yes {
    height: 24px;
    width: 18px;
    margin-top: 10px;
}
label#radiolabel {
    margin-left: 20px;
    margin-top: 10px;
}

.radioborder {
    display: flex;
    border: 1px solid;
    padding: 0 10px;
    height: 50px;	
}
.col-sm-5 {
    height: 50px;
    padding: 0;
    
}
.success-mark{
	text-align: inherit !important;

}
.error-mark{
	text-align: inherit !important;
}
.notValidVisa {
    font-size: 18px;
    color: red;
    display: none;
}

.ee-form-actual{
    margin-left: 0px !important;

}

@media (max-width: 599px){
	.container{
	 margin-left: 30px !important;
    margin-right: 30px !important;
	}
	.ee-form-actual {
    padding-bottom: 50px !important;
	}
	select#dayArrival {
    margin-bottom: 20px;
 }	
 select#montharrival{
  margin-bottom: 20px;
 }
 select#dayDOB{
 margin-bottom: 20px;
 }
 select#dayMonth{
 margin-bottom: 20px;
 }
 .input-box[type="FileInput"], .input-box[type="SubmitInput"]{
 	width: 50% !important;
 	margin: auto;
 }
 #formheadrId{
 margin-left: 20px;
 }
 .col-sm-2{
 display: none !important;
 }
 .ee-form-sidebar{
 width: 100% !important;
 }
  
}

@media (max-width: 599px){
	.row.ee-form-container {
    display: block !important;
}

}
#photoModalHeader{
	display: block;
}
#my_camera > video,#my_camera > img{
	width: 100% !important;
	height:100% !important;
}
#my_camera{
	width: 100% !important;
	height:100% !important;
}

input.btn.btn-primary {
    background-color: #2b1569;
}
#modelContentId{
	background: #f0f1ed;
}
#uploadPhotoId{
	display: none;
}
#resetPhotoId{
	display: none;
}

 </style>
   </head>
   <body>
      <div id="overlay" class="hidden mobileMenuOverlay"></div>
 	<%@include file="header.jsp"%>
  
      

   
 <div id="ee-apply-form" class="ee-apply-form">
  
   <div class="container">
      <div class="row ee-form-container">
         <div class="ee-form-actual">
           
            <div class="ee-form-inner">
               <div id="ee-form-step1">
   </div>
   		
   		        
         <h1 id="formheadrId"> Necessary documents</h1>  
    <div class="newform" id="necessaryDocId">
    
    	<p>Document may be obtained by two options:through digital camera/webcam or by scanning the physical phptograph. 
    	 </p>
  
   </div>   
   <div class="newform" id="documentsuploadsFormId">
    
     <label>Photography</label> 
    
     <p>The photo should present a full face, front view, eyes open.
    		No black&white photos, no blurred photos.
    	 </p>
    	 <div class="row" id="documentUploadFormId">
    	 <div class="col-sm-4" id="photographycolId">
    	<button type="button" class="btn btn-primary" id="photographyButtonId">Upload</button>
    	<input type="file" id="photographyfileId" onchange="validateDocument();" hidden/>
    	<input type="hidden" id="photographyhiddenId" onchange="validateDocument();">
    	 </div>
    	  <div class="col-sm-2">
    	 or
    	 </div>
    	 <div class="col-sm-4" id="photographycolId">
    	  <button type="button" class="btn btn-primary" id="takephotoId" onclick="openCameraModal('photography');">Take a photo</button>
    	 
		    	  
    	 </div>
    	 <div class="col-sm-2">
         <div class="error-mark" id="photographyError" style="display:none;"><i class="icon-error"></i></div>
         <div class="success-mark" id="photographysucess" style="display:none;"><i class="icon-ok"></i></div>
       </div>
     
    	</div>
    	<div id="photogrphyErrorContent" style="color:red; display: none;"><span>Please choose file or take photo</span></div>
    	  <div id="photogrphySizeError" style="color:red; display: none;"><span>file size must be maximum 2 MB</span></div>
    	   <div id="photogrphyFileTypeError" style="color:red; display: none;"><span>Please choose valid file type</span></div>
    	
    	<label>Biographical page of passport</label> 
    	
    	
	     <p>All four corners should be shown up on the final scanned image. 
	     The image must be clear and legible.
    	 </p>
    	 <div class="row" id="documentUploadFormId">
    	 <div class="col-sm-4" id="photographycolId">
    	<button type="button" class="btn btn-primary" id="biographicalButtonId">Upload</button>
    	<input type="file" id="biographicalFileId" onchange="validateDocument();" hidden/>
    	 <input type="hidden" id="biographicalFilehiddenId" onchange="validateDocument();">
    	 </div>
    	  <div class="col-sm-2">
    	 or
    	 </div>
    	 <div class="col-sm-4" id="photographycolId">
    	  <button type="button" class="btn btn-primary" onclick="openCameraModal('biographicalPassport');">Take a photo</button>
    	 </div>
    	 <div class="col-sm-2">
         <div class="error-mark" id="biographicalError" style="display:none;"><i class="icon-error"></i></div>
         <div class="success-mark" id="biographicalSucess" style="display:none;"><i class="icon-ok"></i></div>
       </div>
    	</div>
    	<div id="biographicalErrorContent" style="color:red; display: none;"><span>Please choose file or take photo</span></div>
    	<div id="biographicalSizeError" style="color:red; display: none;"><span>file size must be maximum 2 MB</span></div>
    	<div id="biographicalFileTypeError" style="color:red; display: none;"><span>Please choose valid file type</span></div>
    	
    	<label>Hotel Booking</label> 
    
    	 <p></p>
    	 <div class="row" id="documentUploadFormId">
    	 <div class="col-sm-4" id="photographycolId">
    	<button type="button" class="btn btn-primary" id="hotelBookingButtonId">Upload</button>
    	<input type="file" id="hotelBookingFileId" onchange="validateDocument();" hidden/>
    	<input type="hidden" id="hotelBookinghiddenId" onchange="validateDocument();">
    	 </div>
    	  <div class="col-sm-2">
    	 or
    	 </div>
    	 <div class="col-sm-4" id="photographycolId">
    	  <button type="button" class="btn btn-primary" onclick="openCameraModal('hotelBooking');">Take a photo</button>
    	 </div>
    	 <div class="col-sm-2">
         <div class="error-mark" id="hotelBookingError" style="display:none;"><i class="icon-error"></i></div>
         <div class="success-mark" id="hotelBookingSucess" style="display:none;"><i class="icon-ok"></i></div>
       </div>
    	</div>
    	<div id="hotelBookingErrorContent" style="color:red; display: none;"><span>Please choose file or take photo</span></div>
    	<div id="hotelBookingSizeError" style="color:red; display: none;"><span>file size must be maximum 2 MB</span></div>
    	<div id="hotelBookingFiletypeError" style="color:red; display: none;"><span>Please choose valid file type</span></div>
    	<label>Residence proof or ID</label> 
     	<p></p>
    	 <div class="row" id="documentUploadFormId">
    	 <div class="col-sm-4" id="photographycolId">
    	<button type="button" class="btn btn-primary" id="residenceButtonId">Upload</button>
    	<input type="file" id="residencefileId" onchange="validateDocument();" hidden/>
    	 <input type="hidden" id="residencefilehiddenId" onchange="validateDocument();">
    	 </div>
    	  <div class="col-sm-2">
    	 or
    	 </div>
    	 <div class="col-sm-4" id="photographycolId">
    	<button type="button" class="btn btn-primary" onclick="openCameraModal('residenceProof');">Take a photo</button>
    	
    	 </div>
    	 <div class="col-sm-2">
         <div class="error-mark" id="residenceError" style="display:none;"><i class="icon-error"></i></div>
         <div class="success-mark" id="residenceSucess" style="display:none;"><i class="icon-ok"></i></div>
       </div>
    	</div>
    	<div id="residenceSucessErrorContent" style="color:red; display: none;"><span>Please choose file or take photo</span></div>
    	 <div id="residenceSizeError" style="color:red; display: none;"><span>file size must be maximum 2 MB</span></div>
    	 <div id="residenceFileTypeError" style="color:red; display: none;"><span>Please choose valid file type</span></div>
   			</div>
   		

                  </div>
                  <div>
                     <div>
                    
                        <div class="input-box" type="SubmitInput" name="go-to-step-2" label="SEND AND PAY" hint="" required="required" validations="" options="" reactions="[object Object]" possiblereactions="" possibledisablingreactions="" possibleemits="">
                           <div class="input-box-bottom button-container submit-input-container">
                              <button class="btn" style="text-align: center;" onclick="uploadDocument();">SEND AND DOCUMENT</button> <!---->
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
          <div class="ee-form-sidebar" id="desktopViewId">
            <div class="ee-form-info ee-form-info--hidden">
               <div class="ee-errors" style="display: none;">
                  <div class="error-title">
                     Attention
                  </div>
                  <ul></ul>
               </div>
               <div class="form-infobox-mobile form-infobox">
                  
               </div>
           
              
            </div>
         </div>
            </div>
           
         </div>
       
      </div>
   <input type="hidden" id="applicationVisaId">
   <input type="hidden" id="userId">  
 <%@include file="footer.jsp"%>
 
 <div class="modal" tabindex="-1" data-backdrop="static" role="dialog" id="captureImagesId" style="display: none;">
  <div class="modal-backdrop fade in" style="height: 887px; opacity: 0.5"></div>
  <div class="modal-dialog" role="document" style="top: 5rem; z-index: 9999999;">
    <div class="modal-content" id="modelContentId">
      <div class="modal-header">
        <h5 class="modal-title"></h5>
        
        <img src="/images/close.png" style="width: 20px; height: 20px; cursor: pointer;" onclick="closeModal();">
        
      </div>
      <div class="modal-body">
      
 		<div id="my_camera"></div>
 		
		<div id="results" ></div>
      </div>
      <div class="modal-footer" id="photoModalHeader">
      <input type=button class="btn btn-primary" id="takePhotoId" value="Take Snapshot" onClick="take_snapshot();">
       <input type="button" value ="Upload" id="uploadPhotoId" class="btn btn-primary" onclick="uploadPictures();">
      <input type="button" value ="Reset" id="resetPhotoId" class="btn btn-primary" onclick="resetCamera();">
        
      </div>
    </div>
  </div>
</div>

<script type="text/javascript">

	window.onload = function () {
		getStep1ApplicationDetails();
	}



	 function getStep1ApplicationDetails(){
		 var authUrl = window.location.href;
			var authKey = authUrl.split('=')[1];
	       
	        $.ajax({
	    		type : 'GET',
	    		url : '/application/getApplicationDetails/'+authKey,	
	    		async : true,
	    		success : function(data) {
	    			$('#applicationVisaId').val(data.pkid);
	    			$('#userId').val(data.userId);
	    		},	
	    		error : function(data) {
	    			console.log("error when gettig data");
	    		}
	    	}); 
	    }
		
</script>
 
 
 <script language="JavaScript">
 var imgUrl;
 var docType;

 var shutter = new Audio();
 shutter.autoplay = true;
 shutter.src = navigator.userAgent.match(/Firefox/) ? 'shutter.ogg' : 'shutter.mp3';
</script>
 <script language="JavaScript">
function take_snapshot() {
	 
	   Webcam.snap( function(data_uri) {
		   imgUrl= data_uri;
	       document.getElementById('my_camera').innerHTML = 
	        '<img src="'+data_uri+'"/>';
	    } );
	   $('#takePhotoId').hide();
	    $('#uploadPhotoId').show();
	    $('#resetPhotoId').show();
	    Webcam.stream.getTracks()[0].stop();

	   
	}
</script>
  	
  	
  	
<script type="text/javascript">

	function openCameraModal(type){
		docType = type;
		$('#captureImagesId').show();
		$('#takePhotoId').show();
		$('#resetPhotoId').hide();
		$('#uploadPhotoId').hide();
		
		 Webcam.set({
		     width: 320,
		     height: 240,
		     image_format: 'jpeg',
		     jpeg_quality: 90
		 });
	 
	 	Webcam.attach( '#my_camera' );
	
	}

	function closeModal(){
		Webcam.stream.getTracks()[0].stop();
		$('#captureImagesId').hide();
		
	}

	function resetCamera(){
		
		$('#captureImagesId').show();

		 Webcam.set({
		     width: 320,
		     height: 240,
		     image_format: 'jpeg',
		     jpeg_quality: 90
		 });
	 
	 	Webcam.attach( '#my_camera' );

	 	 $('#takePhotoId').show();
		    $('#uploadPhotoId').hide();
		    $('#resetPhotoId').hide();
	}

	var capturePhotogrphy;
	var captureBiographical;
	var captureHotelBooking;
	var captureResidence;
	function uploadPictures(){
	
		 var byteString = atob(imgUrl.split(',')[1]);
		    var ab = new ArrayBuffer(byteString.length);
		    var ia = new Uint8Array(ab);
		    for (var i = 0; i < byteString.length; i++) {
		        ia[i] = byteString.charCodeAt(i);
		    }
		    var blob = new Blob([ia], { type: 'image/jpeg' });
		    var file = new File([blob], ''+docType+'.jpg');
		    console.log(file);

		    if(docType=='photography'){
		    	$('#photographyhiddenId').val(blob)
		    	capturePhotogrphy = file;
		    	validateDocument();
		    	/* $('#photogrphySizeError').hide();
  				$('#photographyError').hide();
  				$('#photographysucess').show();
  				$('#photogrphyFileTypeError').hide();
  				$('#photogrphyErrorContent').hide(); */
  				
			    closeModal();
			}else if(docType=='biographicalPassport'){
				$('#biographicalFilehiddenId').val(blob)
				/* $('#biographicalSizeError').hide();
	  			$('#biographicalSucess').show();
	  			$('#biographicalError').hide();
	  			$('#biographicalFileTypeError').hide();
	  			$('#biographicalErrorContent').hide(); */
				captureBiographical = file;
	  			validateDocument();
				  closeModal();
			}else if(docType=='hotelBooking'){
				$('#hotelBookinghiddenId').val(blob)
				captureHotelBooking = file;
				/* $('#hotelBookingError').hide();
  				$('#hotelBookingSizeError').hide();
  				$('#hotelBookingSucess').show();
  				$('#hotelBookingFiletypeError').hide();
  				$('#hotelBookingErrorContent').hide(); */
  				validateDocument();
  				
				  closeModal();
			}else if(docType=='residenceProof'){
				$('#residencefilehiddenId').val(blob)
				captureResidence = file;
				/* $('#residenceError').hide();
  				$('#residenceSizeError').hide();
  				$('#residenceSucess').show();
  				$('#residenceFileTypeError').hide();
  				$('#residenceSucessErrorContent').hide(); */
  				validateDocument();
  				
				  closeModal();
			}
			
		   
			
	}
	
  	function uploadDocument(){
  	  	var checkDocstatus = true;
   	 var userId = $('#userId').val();
   	 var applicationId = $('#applicationVisaId').val();
   	 var form = new FormData();
   	 
   	 var photographyfile ;

   	 var biographicalFile ;

   	 var hotelBookingFile;

   	 var residencefile ;

   	 if(capturePhotogrphy!=null){
   		photographyfile = capturePhotogrphy;
   	  }else {
   		photographyfile = $('#photographyfileId')[0].files[0];
   		var photographynewFileName = photographyfile.name.split('.');
   		photographynewFileName[photographynewFileName.length-2]+="photographyDoc";
   		photographynewFileName = photographynewFileName.join('.');
   		photographyfile = renameFile(photographyfile, photographynewFileName)
   		
  	  }if(captureBiographical != null){
   		biographicalFile = captureBiographical;
   	   }else{
   	   	   
   		biographicalFile = $('#biographicalFileId')[0].files[0];
   		var biographicalnewFileName = biographicalFile.name.split('.');
   		biographicalnewFileName[biographicalnewFileName.length-2]+="biographicalDoc";
   		biographicalnewFileName = biographicalnewFileName.join('.');
   		biographicalFile = renameFile(biographicalFile, biographicalnewFileName);
   		
   	   	 } if(captureHotelBooking != null){
   		 hotelBookingFile = captureHotelBooking;
   	   	}else {	
   	   	 hotelBookingFile = $('#hotelBookingFileId')[0].files[0];
	   	  var hotelBookingnewFileName = hotelBookingFile.name.split('.');
	   	hotelBookingnewFileName[hotelBookingnewFileName.length-2]+="hotelBookingDoc";
	   	hotelBookingnewFileName = hotelBookingnewFileName.join('.');
   	  	hotelBookingFile = renameFile(hotelBookingFile, hotelBookingnewFileName);

  	   	 }if(captureResidence != null){
   	   	residencefile = captureResidence;
   	   }else{
   		residencefile = $('#residencefileId')[0].files[0];
   	 var residencenewFileName = residencefile.name.split('.');
   	residencenewFileName[residencenewFileName.length-2]+="residenceDoc";
   	residencenewFileName = residencenewFileName.join('.');
   		
   		residencefile = renameFile(residencefile, residencenewFileName);
   	    }
	
   	if(validateDocument()){
   	   	
   	form.append("files",photographyfile);
   	form.append("files",biographicalFile);
   	form.append("files",hotelBookingFile);
   	form.append("files",residencefile);
   	 if(userId!="" && applicationId!=""){
        
   	var settings = {
   		  "url": "/addInfo/uploadDocumentfromUserAccount/"+userId+'/'+applicationId,
   		  "method": "POST",
   		  "timeout": 0,
   		  "headers": {
   		    "files": "multipart/form-data"
   		  },
   		  "processData": false,
   		  "mimeType": "multipart/form-data",
   		  "contentType": false,
   		  "data": form
   		};

   		$.ajax(settings).done(function (response) {
   		  console.log(response);
   			Swal.fire({
			  title: "<img src='/images/fail1234.png' style='width:150px;'>", 
			  html: "Document uploaded successfully",  
			  confirmButtonText: "Ok", 
			}).then(function() {
				
				 window.location = "/en/account";
				
		})
				
   		
   		}).fail(function (response) {
     		  console.log(response);
     		 Swal.fire({
   			  title: "<img src='/images/fail1234.png' style='width:150px;'>", 
   			  html: "Couldn't upload document",  
   			  confirmButtonText: "Ok", 
   			 
   			})
     		
     	});
   	 }else{
   		Swal.fire({
			  title: "<img src='/images/fail1234.png' style='width:150px;'>", 
			  html: "User not found",  
			  confirmButtonText: "Ok", 
			 
			})
   	   	 }

   	}else{
   		validateDocument();
   	   	}

   	return checkDocstatus;
   	
    }

  	function renameFile(originalFile, newName) {
  	    return new File([originalFile], newName, {
  	        type: originalFile.type,
  	        lastModified: originalFile.lastModified,
  	    });
  	}

  	function validateDocument(){
  		var isValidated = true;
  		if($('#photographyhiddenId').val()==''){
  		$('#photographyhiddenId').val($('#photographyfileId')[0].files[0])
  		}
  		
  		if($('#photographyhiddenId').val() == ""){
  			$('#photogrphyErrorContent').show();
  			$('#photographyError').show();
  			$('#photographysucess').hide();
  			$('#photogrphyFileTypeError').hide();
  			$('#photogrphySizeError').hide();
  			isvalidated =false; 
  			return false;
  		}else{
  			$('#photogrphyErrorContent').hide();
  			if($('#photographyhiddenId').val()!='[object File]'){
  				$('#photogrphySizeError').hide();
  				$('#photographyError').hide();
  				$('#photographysucess').show();
  				$('#photogrphyFileTypeError').hide();
  				isvalidated =true;
  	  		}else{
  			var photographyfile = $('#photographyfileId')[0].files[0]
  			var photographyfileSize = photographyfile.size / 1024 / 1024;
  			if(!isFileCheckType($(photographyfile)[0].type)){
  				$('#photogrphyFileTypeError').show();
  				$('#photographyError').show();
  				$('#photogrphySizeError').hide();
  				$('#photographysucess').hide();
  				return true;
  			}else 
  			if(photographyfileSize > 2){
  				$('#photogrphyErrorContent').hide();
  				$('#photographyError').show();
  				$('#photogrphySizeError').show();
  				$('#photographysucess').hide();
  				$('#photogrphyFileTypeError').hide();
  				isvalidated =false;
  				return false;

  			}else{
  				$('#photogrphySizeError').hide();
  				$('#photographyError').hide();
  				$('#photographysucess').show();
  				$('#photogrphyFileTypeError').hide();
  				isvalidated =true;
  			}
  	  	 }
  		}

  		
  		if($('#biographicalFilehiddenId').val()==''){
  			$('#biographicalFilehiddenId').val($('#biographicalFileId')[0].files[0]);
  	  	}

  	  	
  		
  		if($('#biographicalFilehiddenId').val() == ""){
  			$('#biographicalErrorContent').show();
  			$('#biographicalError').show();
  			$('#biographicalSucess').hide();
  			$('#biographicalFileTypeError').hide();
  			$('#biographicalSizeError').hide();
  			isvalidated =false;
  			return false;
  		}else{
  			$('#biographicalErrorContent').hide();
  			
  			if($('#biographicalFilehiddenId').val()!='[object File]'){
  				$('#biographicalSizeError').hide();
  	  			$('#biographicalSucess').show();
  	  			$('#biographicalError').hide();
  	  			$('#biographicalFileTypeError').hide();
  	  		    isvalidated =true;
  			}else{
  			$('#biographicalErrorContent').hide();
  			var biographicalFileType = $('#biographicalFileId')[0].files[0]
  			var biographicalFileSize = biographicalFileType.size / 1024 / 1024;
  			if(!isFileCheckType($(biographicalFileType)[0].type)){
  				$('#biographicalFileTypeError').show();
  				$('#biographicalError').show();
  				$('#biographicalSizeError').hide();
  				$('#biographicalSucess').hide();
  				return true;
  			}else 
  			if(biographicalFileSize > 2){
  				$('#biographicalError').show();
  				$('#biographicalSizeError').show();
  				$('#biographicalSucess').hide();
  				$('#biographicalFileTypeError').hide();
  				isvalidated =false;
  				return false;
  				
  			}else{
  			$('#biographicalSizeError').hide();
  			$('#biographicalSucess').show();
  			$('#biographicalError').hide();
  			$('#biographicalFileTypeError').hide();
  		    isvalidated =true;
  			}
  		}
  		}
  		
  		if($('#hotelBookinghiddenId').val()==''){
  		$('#hotelBookinghiddenId').val($('#hotelBookingFileId')[0].files[0]);
  		}
  		
  		if($('#hotelBookinghiddenId').val() == ""){
  			$('#hotelBookingErrorContent').show();
  			$('#hotelBookingError').show();
  			$('#hotelBookingSucess').hide();
  			$('#hotelBookingFiletypeError').hide();
  			$('#hotelBookingSizeError').hide();
  			isvalidated =false;
  			return false;
  		}else{
  			$('#hotelBookingErrorContent').hide();
  			if($('#hotelBookinghiddenId').val()!='[object File]'){
  				$('#hotelBookingError').hide();
  				$('#hotelBookingSizeError').hide();
  				$('#hotelBookingSucess').show();
  				$('#hotelBookingFiletypeError').hide();
  				isvalidated =true;
  	  			
  			}else{
  			$('#hotelBookingErrorContent').hide();
  			var hotelBookingFileType = $('#hotelBookingFileId')[0].files[0]
  			var hotelBookingFileSize =  hotelBookingFileType.size / 1024 / 1024;
  			if(!isFileCheckType($(hotelBookingFileType)[0].type)){
  				$('#hotelBookingFiletypeError').show();
  				$('#hotelBookingError').show();
  				$('#hotelBookingSizeError').hide();
  				$('#hotelBookingSucess').hide();
  				return true;
  			}else 
  			if(hotelBookingFileSize > 2){
  				$('#hotelBookingError').show();
  				$('#hotelBookingSucess').hide();
  				$('#hotelBookingSizeError').show();
  				$('#hotelBookingFiletypeError').hide();
  				isvalidated =false;
  				return false;
  			}else{
  				$('#hotelBookingError').hide();
  				$('#hotelBookingSizeError').hide();
  				$('#hotelBookingSucess').show();
  				$('#hotelBookingFiletypeError').hide();
  				isvalidated =true;
  			}
  		 }
  		}
  		if($('#residencefilehiddenId').val()==''){
  		$('#residencefilehiddenId').val($('#residencefileId')[0].files[0]);
  		}
  		if($('#residencefilehiddenId').val() == ""){
  			$('#residenceSucessErrorContent').show();
  			$('#residenceError').show();
  			$('#residenceSizeError').hide();
  			$('#residenceFileTypeError').hide();
  			$('#residenceSizeError').hide();
  			isvalidated =false;
  			return false;
  		}else{
  			$('#residenceSucessErrorContent').hide();
  			if($('#residencefilehiddenId').val()!='[object File]'){
  				$('#residenceError').hide();
  				$('#residenceSizeError').hide();
  				$('#residenceSucess').show();
  				$('#residenceFileTypeError').hide();
  				isvalidated =true;
  			}else{
  			var residencefileType = $('#residencefileId')[0].files[0]
  			var residencefileSize = residencefileType.size / 1024 / 1024;
  			if(!isFileCheckType($(residencefileType)[0].type)){
  				$('#residenceFileTypeError').show();
  				$('#residenceError').show();
  				$('#residenceSizeError').hide();
  				$('#residenceSucess').hide();
  				return true;
  			}else 
  			if(residencefileSize > 2){
  				$('#residenceError').show();
  				$('#residenceSizeError').show();
  				$('#residenceSucess').hide();
  				$('#residenceFileTypeError').hide();
  				isvalidated =false;
  				return false;
  				
  			}else{
  				$('#residenceError').hide();
  				$('#residenceSizeError').hide();
  				$('#residenceSucess').show();
  				$('#residenceFileTypeError').hide();
  				isvalidated =true;
  				
  			}
  	}
  		}
  		
  		return isvalidated;
  		}

	function getFileSize(filesize){
         var fSExt = new Array('Bytes', 'KB', 'MB', 'GB');
         var i=0;
         while(filesize>900){
             
             filesize/=1024;i++;
             
            }
         var exactSize = (Math.round(filesize*100)/100)+' '+fSExt[i];
             console.log('FILE SIZE = ',exactSize);

             return exactSize;
		}
	
	
	function isFileCheckType(type)
	{
		const haystack=['image/jpeg', 'image/png','image/jpg','application/pdf','application/msword'];
	    var count=haystack.length;
	    for(var i=0;i<count;i++)
	    {
	        if(haystack[i]===type){return true;}
	    }
	    return false;
	}
  	</script>
  	
  <script>
  document.getElementById('photographyButtonId').addEventListener('click', openDialog1);

  function openDialog1() {
    document.getElementById('photographyfileId').click();
  }

  document.getElementById('biographicalButtonId').addEventListener('click', openDialog2);

  function openDialog2() {
    document.getElementById('biographicalFileId').click();
  }

  document.getElementById('hotelBookingButtonId').addEventListener('click', openDialog3);

  function openDialog3() {
    document.getElementById('hotelBookingFileId').click();
  }

  document.getElementById('residenceButtonId').addEventListener('click', openDialog4);

  function openDialog4() {
    document.getElementById('residencefileId').click();
  }



  	</script>
  	
 
  	
  
	
  	
  
  </body>
</html>
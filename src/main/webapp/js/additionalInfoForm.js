
	 function getCountryList(){
        
    	 $.ajax({
 			type : 'GET',
 			url : '/country/getCountryList',	
 			async : true,
 			success : function(data) {
 				 $.each(data, function(index,element) {
 					 
 					 $('#countrylist').append('<option value="'+element.countryCode+'">'+element.countryName+'</option>')
 					  $('#passPortCountryList').append('<option value="'+element.countryCode+'">'+element.countryName+'</option>')
 					   $('#addressCountryList').append('<option value="'+element.countryCode+'">'+element.countryName+'</option>')
 					    $('#taxCompanyCountryList').append('<option value="'+element.countryCode+'">'+element.countryName+'</option>')
 					     $('#departureCountryList').append('<option value="'+element.countryCode+'">'+element.countryName+'</option>')
 					     
 					
 				 });
 					
 			},	
 			error : function(data) {
 				console.log("error when gettig data");
 			}
 		});

       }
    
    
    
function getMaritialStatus(){

    	 $.ajax({
 			type : 'GET',
 			url : '/country/getMaritialStatus',	
 			async : true,
 			success : function(data) {
 				 $.each(data, function(index,element) {
 					 
 					 $('#maritialStatusId').append('<option value="'+element.maritialStatus+'">'+element.maritialStatus+'</option>')
 				 });
 					
 			},	
 			error : function(data) {
 				console.log("error when gettig data");
 			}
 		});

	}
	
	
	function getEmploymentStatus(){

    	 $.ajax({
 			type : 'GET',
 			url : '/country/getEmploymentStatus',	
 			async : true,
 			success : function(data) {
 				 $.each(data, function(index,element) {
 					 
 					 $('#employmentId').append('<option value="'+element.employmentStatus+'">'+element.employmentStatus+'</option>')
 				 });
 					
 			},	
 			error : function(data) {
 				console.log("error when gettig data");
 			}
 		});

	}
	
	
	function getOccupation(){

    	 $.ajax({
 			type : 'GET',
 			url : '/country/getOccupation',	
 			async : true,
 			success : function(data) {
 				 $.each(data, function(index,element) {
 					 
 					 $('#occupationId').append('<option value="'+element.occupation+'">'+element.occupation+'</option>')
 				 });
 					
 			},	
 			error : function(data) {
 				console.log("error when gettig data");
 			}
 		});

	}
	
	
	
	function getQualification(){

    	 $.ajax({
 			type : 'GET',
 			url : '/country/getQualification',	
 			async : true,
 			success : function(data) {
 				 $.each(data, function(index,element) {
 					 
 					 $('#qualificationId').append('<option value="'+element.qualification+'">'+element.qualification+'</option>')
 				 });
 					
 			},	
 			error : function(data) {
 				console.log("error when gettig data");
 			}
 		});

	}
	
	
	
	function religion(){

    	 $.ajax({
 			type : 'GET',
 			url : '/country/getReligion',	
 			async : true,
 			success : function(data) {
 				 $.each(data, function(index,element) {
 					 
 					 $('#religionId').append('<option value="'+element.religion+'">'+element.religion+'</option>')
 				 });
 					
 			},	
 			error : function(data) {
 				console.log("error when gettig data");
 			}
 		});

	}
	
	
	function gettransportation_type(){

    	 $.ajax({
 			type : 'GET',
 			url : '/country/getTransportationType',	
 			async : true,
 			success : function(data) {
 				 $.each(data, function(index,element) {
 					 
 					 $('#TransportTypeId').append('<option value="'+element.transportationType+'">'+element.transportationType+'</option>')
 				 });
 					
 			},	
 			error : function(data) {
 				console.log("error when gettig data");
 			}
 		});

	}
	
	
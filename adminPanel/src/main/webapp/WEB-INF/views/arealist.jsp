<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!doctype html>
<html lang="en">

<!-- Mirrored from demos.creative-tim.com/bs3/material-dashboard-pro/examples/tables/extended.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 04 Jan 2020 08:43:46 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
	<%@include file = "head.jsp" %>
</head>


<body >
  <!-- Google Tag Manager (noscript) -->
  <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NKDMSK6"
  height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
  <!-- End Google Tag Manager (noscript) -->

	<div class="wrapper">

	    
    <!--
        Tip 1: You can change the color of active element of the sidebar using: data-active-color="purple | blue | green | orange | red | rose"
        Tip 2: you can also add an image using data-image tag
        Tip 3: you can change the color of the sidebar with data-background-color="white | black"
    -->

    <%@include file = "sidebar.jsp" %>
	    <div class="main-panel">
	<%@include file = "header.jsp" %>
			
			
				<div class="content">
					<div class="container-fluid">
					 	    <div class="row">

		<div class="col-md-6" style="margin-left:25%">
			<div class="card">
				<div class="card-header card-header-icon" data-background-color="rose">
					<i class="material-icons">mail_outline</i>
				</div>

				<div class="card-content">
					<h4 class="card-title">Area</h4>
					<form:form id="RegisterValidation" method="post" modelAttribute="register">
	                <form:input type="hidden" path="areaId" id="areaId" />
	                   
	                <div class="form-group">
	                   	
	                   	<div class="col-lg-5 col-md-5 col-sm-3">
	                        <label class="control-label">State</label>
	                        <div class="form-group">
                        <!-- <label>state</label> -->
                        
                      </div>
	                   <form:select class="selectpicker" path="stateId" id="stateId" name="stateId" 
													data-style="btn btn-primary btn-round"
													title="Select State" data-size="7" tabindex="-98"
													style="background-color:#ec407a">
						<c:forEach items="${states}" var="s">
                        	 <form:option value="${s.stateId}">${s.stateName}</form:option> 
                        <%--   <form:option value="${s.stateId}" label="${s.name}"/> --%> 
                       	</c:forEach>
						</form:select>
	                    <span class="material-input"></span></div></div>
	                    
	                    
	                    
	                     <div class="form-group">
	                   	
	                   	<div class="col-lg-5 col-md-5 col-sm-3" style="margin-top:-3%;">
	                        <label class="control-label">City</label>
	                        <div class="form-group" >
                        <!-- <label>state</label> -->
                        
                      </div>
                     
	                   <form:select class="selectpicker"  path="cityId" name="cityId" id="citiesByState"
													data-style="btn btn-primary btn-round"
													title="Select City" data-size="7" tabindex="-98"
													style="background-color:#ec407a;">
						<c:forEach items="${cities}" var="c">
                           <form:option value="${c.cityId}">${c.cityName}</form:option> 
                         <%--  <form:option value="${c.cityId}" label="${c.name}"/> --%> 
                       	</c:forEach>
						</form:select>
	                    <span class="material-input"></span></div></div>
	                    
	                    <div class="form-group" style="style="margin-left:20%;" margin-top:15%">
	                    <div class="col-lg-4 col-md-4 col-sm-3">
	                    <label class="control-label" >Area</label>
	                    <form:input type="text" id="areaName" name="areaName" path="areaName" class="form-control" />
	                    <span class="material-input"></span></div></div><br><br><br><br>
	                    
	                    <c:choose>
							<c:when test="${edit}">
								<input type="submit" class="btn btn-rose btn-fill" formaction="/adminPanel/area/updateArea" value="Update" style="margin-left:50%;margin-top:-10%;" />
							</c:when>
							<c:otherwise>
								<input type="submit" class="btn btn-rose btn-fill" formaction="/adminPanel/area/addArea" value="Submit" style="margin-left:50%; margin-top:-10%;"/>
							</c:otherwise>	
						</c:choose>		  
	                   
	                   <!--  <div class="form-group label-floating is-empty">
	                    <div class="col-lg-9 col-md-9 col-sm-3">
	                        <label class="control-label">Area</label>
	                        <input type="text" class="form-control">
	                    <span class="material-input"></span></div></div><br><br>
	                    <div class="form-group label-floating is-empty">
	                    <div class="col-lg-9 col-md-9 col-sm-3">
	                        <label class="control-label">Pincode</label>
	                        <input type="text" class="form-control">
	                    <span class="material-input"></span></div></div><br><br>
	                    <div class="form-group label-floating is-empty">
	                    <div class="col-lg-9 col-md-9 col-sm-3">
	                        <label class="control-label">State ID</label>
	                        <input type="text" class="form-control">
	                    <span class="material-input"></span></div></div><br><br>
	                    <button type="submit" class="btn btn-fill btn-rose" style="margin-top:-170px; margin-left:78%">Submit</button> -->
	                </form:form>
				</div>
			</div>
		</div>
        <div class="col-md-12">
            <div class="card">
                <div class="card-header card-header-icon" data-background-color="rose">
                    <i class="material-icons">assignment</i>
                </div>

                <div class="card-content">
                    <h4 class="card-title">Area</h4>
                       
                    <div class="toolbar">
                        <!--        Here you can write extra buttons/actions for the toolbar              -->
                    </div>
                    <div class="material-datatables">
                        <div id="datatables_wrapper" class="dataTables_wrapper form-inline dt-bootstrap"><div class="row"><div class="col-sm-6"><div class="dataTables_length" id="datatables_length"><label class="form-group form-group-sm">Show <select name="datatables_length" aria-controls="datatables" class="form-control"><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="-1">All</option></select> entries<span class="material-input"></span></label></div></div><div class="col-sm-6"><div id="datatables_filter" class="dataTables_filter"><label class="form-group form-group-sm is-empty"><input type="search" class="form-control" placeholder="Search records" aria-controls="datatables"><span class="material-input"></span></label></div></div></div><div class="row"><div class="col-sm-12"><table id="datatables" class="table table-striped table-no-bordered table-hover dataTable dtr-inline" cellspacing="0" width="100%" style="width: 100%;" role="grid" aria-describedby="datatables_info">
                            <thead>
                                <tr role="row">
                                <th class="sorting_asc" tabindex="0" aria-controls="datatables" rowspan="1" colspan="1" style="width: 150px;" aria-sort="ascending" aria-label="Name: activate to sort column descending">Name</th>
                                  <th class="sorting_asc" tabindex="0" aria-controls="datatables" rowspan="1" colspan="1" style="width: 150px;" aria-sort="ascending" aria-label="Name: activate to sort column descending">City</th>
                                    <th class="sorting_asc" tabindex="0" aria-controls="datatables" rowspan="1" colspan="1" style="width: 150px;" aria-sort="ascending" aria-label="Name: activate to sort column descending">State</th>
                               </tr>
                            </thead>
                            <!-- <tfoot>
                                <tr><th rowspan="1" colspan="1">Name</th>
                                <th rowspan="1" colspan="1">EmailID</th>
                                <th rowspan="1" colspan="1">Contact No</th>
                                </tr>
                            </tfoot> -->
                            <tbody>
                            <c:forEach items="${areas}" var="a">
                            <tr role="row" class="odd">
                            	 <td tabindex="0" class="sorting_1">${a.areaName}</td>
                            	  <td tabindex="0" class="sorting_1">${a.cityName}</td>
                            	   <td tabindex="0" class="sorting_1">${a.stateName}</td>
                                    <td class="td-actions text-right">
                                    <a href="/adminPanel/area/editArea/${a.areaId}">
                                        <button type="button" rel="tooltip" class="btn btn-success btn-simple" rel="tooltip" data-placement="bottom" title="Edit">
                                            <i class="material-icons">edit</i>
                                        </button></a>
                                    </td>
                                   	<td>
                                        <a href="/adminPanel/area/deleteArea/${a.areaId}">
                                        <button type="button" rel="tooltip" class="btn btn-simple btn-danger btn-icon remove" rel="tooltip" data-placement="bottom" title="Remove" onclick="demo.showSwal('delete-message')">
                                            <i class="material-icons">close</i>
                                        </button></a>
                                    </td> 
                             </tr>
                            </c:forEach>
                        	</tbody>
                        </table></div></div><div class="row"><div class="col-sm-5"><div class="dataTables_info" id="datatables_info" role="status" aria-live="polite">Showing 1 to 10 of 40 entries</div></div><div class="col-sm-7"><div class="dataTables_paginate paging_full_numbers" id="datatables_paginate"><ul class="pagination"><li class="paginate_button first disabled" id="datatables_first"><a href="#" aria-controls="datatables" data-dt-idx="0" tabindex="0">First</a></li><li class="paginate_button previous disabled" id="datatables_previous"><a href="#" aria-controls="datatables" data-dt-idx="1" tabindex="0">Previous</a></li><li class="paginate_button active"><a href="#" aria-controls="datatables" data-dt-idx="2" tabindex="0">1</a></li><li class="paginate_button "><a href="#" aria-controls="datatables" data-dt-idx="3" tabindex="0">2</a></li><li class="paginate_button "><a href="#" aria-controls="datatables" data-dt-idx="4" tabindex="0">3</a></li><li class="paginate_button "><a href="#" aria-controls="datatables" data-dt-idx="5" tabindex="0">4</a></li><li class="paginate_button next" id="datatables_next"><a href="#" aria-controls="datatables" data-dt-idx="6" tabindex="0">Next</a></li><li class="paginate_button last" id="datatables_last"><a href="#" aria-controls="datatables" data-dt-idx="7" tabindex="0">Last</a></li></ul></div></div></div></div>
                    </div>
                </div><!-- end content-->
            </div><!--  end card  -->
        </div>
        
			<%@include file = "footer.jsp" %>
		</div>
	</div>

		 	
</body>
	<!--   Core JS Files   -->
	<%@include file = "corejsfiles.jsp" %>
	<script type="text/javascript">
  	$("#stateId").change(function() {
  		var stateId = $(this).val();
  		//alert("stateid : "+stateId);
  	    $.ajax({
  	        type: 'GET',
  	        url: "/adminPanel/area/getCities/" + stateId,
  	        success: function(data){
  	        //	 $("#citiesByState").html(data).selectpicker('refresh');
  	        	 var slctSubcat=$('#citiesByState'), option="";
  	          	slctSubcat.empty();
  	          //$('.selectpicker').selectpicker('refresh'); 
  	          
  	          	
  	          //$('#citiesByState').em
  	         
  	             for(var i=0; i<data.length; i++){
  	            	// alert("hi");		
  	             	//alert(data[i].name);
  	                option = option + "<option value='"+data[i].cityId+"'>"+data[i].cityName+"</option>";	            }
  	          	slctSubcat.append(option); 
  	          $('#citiesByState').selectpicker('refresh');
  	          	//alert(data.length);
  	        },
  	        error:function(){
  	            alert("error");
  	        }
  	    });
	});
  
  </script> 
</html>
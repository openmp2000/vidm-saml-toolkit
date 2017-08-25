<!--  
 VMware Identity Manager SAML Toolkit

Copyright (c) 2016 VMware, Inc. All Rights Reserved.

This product is licensed to you under the BSD-2 license (the "License").  You may not use this product except in compliance with the BSD-2 License.

This product may include a number of subcomponents with separate copyright notices and license terms. Your use of these subcomponents is subject to the terms and conditions of the subcomponent's license, as noted in the LICENSE file.


-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<!-- header -->
	<jsp:include page="headertpl.html"></jsp:include>
	<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
		 <!-- Navigation -->
    	<jsp:include page="navtpl.html"></jsp:include>
    	<section id="idpDiscovery" class="content-section text-center">
	        <div class="idpDiscovery-section">
	            <div class="container">
	                <div class="col-lg-8 col-lg-offset-2">

						<div><h2>Configure VIDM as IDP</h2></div>
						<br>
						<br>
						<form action="configIDPURI.jsp" method="post">
							<p>Your vIDM ROOT URL:</p>
							<br/>

							<div><input name="vidmhost" type="text" style="width: 300px;color:#fff;background-color:#000;" placeholder="https://yourcompany.vmwareidentity.com"></div>

							<br/>
							<br/>
							<br/>

							<div><input type=submit value="NEXT" class="btn btn-default btn-lg"></div>
						</form>
	               </div>
	            </div>
	        </div>
	    </section>
    
	    <!-- Get default URI -->
	    <script type="text/javascript">
			var issuer = window.location.toString();
			issuer= issuer.substr(0,issuer.indexOf("/idpDiscovery"));
			window.document.getElementById("issuer").value = issuer;
		</script>
	</body>
</html>

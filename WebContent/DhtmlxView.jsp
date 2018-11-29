<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   
	<link rel="stylesheet" type="text/css" href="dhtmlx/codebase/dhtmlxgrid.css"/>
	<link rel="stylesheet" type="text/css" href="dhtmlx/codebase/dhtmlx.css"/>

	
	<script src="dhtmlx/codebase/dhtmlx.js"></script>
	<script src="dhtmlx/codebase/dhtmlxgrid.js"></script>
	
	
<meta http-equiv="Content-Type" content="text/xml; charset=ISO-8859-1">
<title>HTML</title>
</head>
<body>
<div id="gridbox" style="width:100%;height:300px;margin-top:20px;margin-bottom:10px;"></div>

<script>
			myGrid = new dhtmlXGridObject("gridbox");
			myGrid.setImagePath("codebase/imgs/");
			myGrid.setHeader(" Name, Email , Mobile number , Date of Birth , Gender");
			myGrid.setInitWidths("150,200,100,100,100,100");
			myGrid.setColAlign("dyn,dyn,center,dyn,center,dyn");
			myGrid.setColTypes("ro,ed,ed,ed,ron,ro");
			myGrid.enableAutoWidth(true);
			myGrid.enableAutoHeight(true)
			myGrid.init();
			myGrid.load("DHTMLxServlet");
			
	</script>

</body>
</html>
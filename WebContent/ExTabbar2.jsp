<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" type="text/css" href="dhtmlx/codebase/dhtmlx.css" />
<link rel="stylesheet" type="text/css" href="dhtmlx/codebase/dhtmlxgrid.css" />
<link rel="stylesheet" type="text/css" href="dhtmlx/codebase/dhtmlxmenu.css" />
<link rel="stylesheet" type="text/css" href="dhtmlx/dhtmlxaccordion.css" />

<script src="dhtmlx/codebase/dhtmlx.js"></script>
<script src="dhtmlx/codebase/dhtmlxgrid.js"></script>
<script src="dhtmlx/codebase/dhtmlxmenu.js"></script>
<script src="dhtmlx/sources/dhtmlxAccordion/codebase/dhtmlxaccordion.js"></script>
<script src="dhtmlx/codebase/dhtmlxcontainer.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>hello</title>
</head>
<body>

<div id="res" style="width: 300px; height: 250px; margin-top: 20px; margin-bottom: 10px;"></div>

  <script>

  var myGrid2;
  
	        myGrid2 = new dhtmlXGridObject("res");
			myGrid2.setImagePath("codebase/imgs/");
			myGrid2.setHeader(" Name, Email , Mobile number , Date of Birth , Gender");
			myGrid2.setInitWidths("150,200,100,100,100,100");
			myGrid2.setColAlign("dyn,dyn,center,dyn,center,dyn");
			myGrid2.setColTypes("ro,ed,ed,ed,ron,ro");
			myGrid2.enableAutoWidth(true);
			myGrid2.enableAutoHeight(true);
			myGrid2.init();
			
			</script>

</body>
</html>
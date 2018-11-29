<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>

<link rel="stylesheet" type="text/css" href="dhtmlx/codebase/dhtmlxgrid.css" />
<link rel="stylesheet" type="text/css" href="dhtmlx/codebase/dhtmlx.css" />
<link rel="stylesheet" type="text/css" href="dhtmlx/codebase/dhtmlxtabbar.css" />
<link rel="stylesheet" type="text/css" href="dhtmlx/sources/dhtmlxTabbar/codebase/skins/dhtmlxtabbar_dhx_web.css" />

<script src="dhtmlx/codebase/dhtmlx.js"></script>
<script src="dhtmlx/codebase/dhtmlxgrid.js"></script>
<script src="dhtmlx/sources/dhtmlxTabbar/codebase/dhtmlxtabbar.js"></script>
<script src="dhtmlx/codebase/dhtmlxcontainer.js"></script>

<script>
	
var myTabbar, Index = 1;

function Load() {
	
	myTabbar = new dhtmlXTabBar("result");
	
	log("Welcome To Dhtmlx Method Called DhtmlxTabbar");
	
	myTabbar.loadStruct("TabbarServlet", function(){
		
	});		
}

function log(data){
	var box = document.getElementById("res");
	box.innerHTML = " " + (Index++)+" ) "+data+" <br> "+box.innerHTML;
	box.scrollTop = 0;
}			
</script>

</head>
<body onload="Load();">

<div id="res"></div>

<div id="result" style="width:700px;height:500px;margin-top:20px;margin-bottom:10px;"></div>

</body>
</html>
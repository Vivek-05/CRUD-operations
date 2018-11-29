<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" type="text/css" href="dhtmlx/codebase/dhtmlx.css" />
<link rel="stylesheet" type="text/css" href="dhtmlx/codebase/dhtmlxgrid.css" />
<link rel="stylesheet" type="text/css" href="dhtmlx/codebase/dhtmlxmenu.css" />
<link rel="stylesheet" type="text/css" href="dhtmlx/codebase/stylesheet.css" />
<link rel="stylesheet" type="text/css" href="dhtmlx/sources/dhtmlxGrid/codebase/skins/dhtmlxgrid_dhx_skyblue.css">
<link rel="stylesheet" type="text/css" href="dhtmlx/sources/dhtmlxColorPicker/codebase/skins/dhtmlxcolorpicker_dhx_web.css">

<script src="dhtmlx/codebase/dhtmlx.js"></script>
<script src="dhtmlx/codebase/dhtmlxmenu.js"></script>
<script src="dhtmlx/codebase/dhtmlxgrid.js"></script>
<script src="dhtmlx/sources/dhtmlxColorPicker/codebase/dhtmlxcolorpicker.js"></script>

<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hello</title>
</head>
<body>

<div id="menubox" style="width:500px;height:700px;margin-top:20px;margin-bottom:10px;"></div>

<script>

var myMenu , mygrid ;

myMenu = new dhtmlXMenuObject();
myMenu.setIconsPath("dhtmlx/sources/dhtmlxMenu/codebase/imgs");
myMenu.renderAsContextMenu();
myMenu.attachEvent("onClick",onButtonClick);
myMenu.loadStruct("dhtmlx/codebase/dhxmenu_radios.xml");


 mygrid = new dhtmlXGridObject("menubox");
 mygrid.setSkin("dhx_skyblue"); 
 mygrid.setImagePath("dhtmlx/codebase/imgs");
 mygrid.setHeader(" Name, Email ");
	mygrid.setInitWidths("200,250");
	mygrid.setColAlign("left,left");
	mygrid.setColTypes("ro,ro");
	mygrid.enableContextMenu(myMenu);
	mygrid.enableAutoWidth(true);
	mygrid.enableAutoHeight(true);
	mygrid.init();
	mygrid.load("ContextMenuServlet");
	
	
function onButtonClick(menuitemId,type){
	
		var data = mygrid.contextID.split(""); 
		mygrid.setRowTextStyle(data[0],"color:" +menuitemId.split("")[1]);
		return true;
	}
	 
</script>

</body>
</html>
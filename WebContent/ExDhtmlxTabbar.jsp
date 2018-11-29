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
	
	
<meta http-equiv="Content-Type" content="text/xml; charset=ISO-8859-1">
<title>HTML</title>
</head>
<body>
<div id="gridbox" style="width:100%;height:300px;margin-top:20px;margin-bottom:10px;"></div>

<script>

var  myGrid, myGrid2, myMenu ;

            myMenu = new dhtmlXMenuObject();
            myMenu.setIconsPath("dhtmlx/sources/dhtmlxMenu/codebase/imgs");
            myMenu.renderAsContextMenu();
            myMenu.attachEvent("onClick", move_row);
            myMenu.loadStruct("dhtmlx/codebase/dhxmenu_radios.xml");


			myGrid = new dhtmlXGridObject("gridbox");
			myGrid.setImagePath("codebase/imgs/");
			myGrid.setHeader(" Name, Email , Mobile number , Date of Birth , Gender");
			myGrid.setInitWidths("150,200,100,100,100,100");
			myGrid.setColAlign("dyn,dyn,center,dyn,center,dyn");
			myGrid.setColTypes("ro,ed,ed,ed,ron,ro");
			myGrid.enableAutoWidth(true);
			myGrid.enableAutoHeight(true);
			myGrid.enableContextMenu(myMenu);
			myGrid.init();
			myGrid.load("DHTMLxServlet");
			
			
			function move_row(id) {

				var data = myGrid.contextID.split("_");                                         //data = (2) ["3", "0"]  &&  data = data[0]

				myGrid.moveRowTo(data[0], "0", "move", "child", myGrid, myGrid2);
				
			}
				
			
	</script>

</body>
</html>
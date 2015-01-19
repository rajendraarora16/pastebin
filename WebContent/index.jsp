<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" media="all" />
<link href='http://fonts.googleapis.com/css?family=Londrina+Solid|Exo:800|Open+Sans:300italic,400,300,600|Roboto:400,100,300,500,700' rel='stylesheet' type='text/css' />
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/img/code_title.png" />
<title>Paste tool</title>
</head>
<body>
	<header style="height: 50px;">
		<div class="container">
			<div style="color: white; font-size: 25px;padding: 10px;float: left;">
				<a class="font_style" style="text-decoration: none; color:white;" href="index.jsp">
					<span><i class="fa fa-code" style="color:red;font-size: 30px;"></i> Paste tool</span>
				</a>
			</div>
		</div>
	</header>
	<div class="frame_spacer">
		<span style="padding: 10px;">You could like or share us on: </span>
	</div>
	<div style="height:35px;line-height:35px;font-size:0.85em;"></div>
	<div class="frame_spacer"></div>
	<div id="monster_frame">
		<form action="submit_code.jsp" method="post">
		<div id="content_frame">
			<div id="content_left">
			<span style="padding: 10px;"><i class="fa fa-tags"></i> New Paste</span>
				<div class="textarea_border">
					<textarea id="paste_code" class="paste_textarea" name="paste_code" style="resize: none; overflow-y: auto; height: 300px;" name="paste_code" placeholder="Paste your source code here.." required="required"></textarea>
				</div>
				<div style="padding: 10px;">
					<input type="text" name="title_code" value="" placeholder="Enter title here.." required="required"/>
				</div>
				<div style="text-align: center; padding: 20px;">
					<input type="submit" value="Generate source code" />
				</div>
			</div>
		</div>
		</form>
	</div>
	<br><br><br>
	<div style="text-align:center;text-decoration: none !important;">
		Powered by <a href="http://about.me/rajendraarora16/">Paste tool</a>.
    </div>
</body>
</html>

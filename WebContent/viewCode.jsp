<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page language="java" import="java.sql.*" %>

<% String id=request.getParameter("id"); %>
<%
	try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pastebin", "root", "1234");
    PreparedStatement pstmt=con.prepareStatement("SELECT * FROM paste_tool WHERE gen_key=?");
    
    pstmt.setString(1, id);

	ResultSet rs=pstmt.executeQuery();
	while(rs.next()){
		String source_codes=rs.getString("source_codes");
		String title=rs.getString("title");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js" type="text/javascript"></script>
<link href='http://fonts.googleapis.com/css?family=Londrina+Solid|Exo:800|Open+Sans:300italic,400,300,600|Roboto:400,100,300,500,700' rel='stylesheet' type='text/css' />
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<script src="https://google-code-prettify.googlecode.com/svn/loader/run_prettify.js"></script>
<link href="${pageContext.request.contextPath}/code/prettify.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="${pageContext.request.contextPath}/code/prettify.js"></script>
<title>Paste tool - <%=title %></title>
<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/img/code_title.png" />

<!-- Place this tag in your head or just before your close body tag. -->
<script src="https://apis.google.com/js/platform.js" async defer></script>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" media="all" />
</head>
<body onload="prettyPrint()">

<!-- Facebook share -->
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.0";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<!-- Facebook END -->

<!-- Twitter share -->
<script type="text/javascript">
window.twttr=(function(d,s,id){var t,js,fjs=d.getElementsByTagName(s)[0];if(d.getElementById(id)){return}js=d.createElement(s);js.id=id;js.src="https://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);return window.twttr||(t={_e:[],ready:function(f){t._e.push(f)}})}(document,"script","twitter-wjs"));
</script>
<!-- Twitter End -->

	<header style="height: 50px;">
		<div class="container">
			<div style="color: white; font-size: 25px;padding: 10px;float: left;">
				<a class="font_style" style="text-decoration: none; color:white;" href="index.jsp">
					<span><i class="fa fa-code" style="color:red;font-size: 30px;"></i> Paste tool</span>
				</a>
			</div>
		</div>
	</header>
	<div class="frame_spacer"></div>
	<div style="height:35px;line-height:35px;font-size:0.85em;"></div>
	<div class="frame_spacer"></div>
	<div id="monster_frame">
		<div id="content_frame">
			<div id="content_left">
			<span style="padding: 10px;"><i class="fa fa-tags"></i> Paste tool - "<%=title%>"</span>
			<div style="padding: 20px;">
				<strong style="font-size: 15px;">Url:</strong> <input id="current_url" class="url_bar" type="text" value="" style="width: 45%; height: 40px; font-size: 25px;"/>
				<script type="text/javascript">
					$('#current_url').val(window.location.href);
				</script>
			</div>	
				<div>
				<div style="padding: 20px;"><span>Share this Source code via:</span><br> 
<div><br>
<!-- Facebook share.. -->
<div class="fb-share-button" data-href="http://code-programmersplace.rhcloud.com/showThreadWithoutLogin.jsp?id=<%=id%>" data-layout="button"></div>
<!-- End!! -->
<br><br>
<!-- Twitter share -->
<a href="http://code-programmersplace.rhcloud.com/showThreadWithoutLogin.jsp?id=<%=id%>" class="twitter-share-button"
  data-dnt="true"
  data-count="none"
  data-via="twitterdev">
Tweet
</a>
<!-- End!! -->
<br><br>
<!-- Google plus -->
<!-- Place this tag where you want the share button to render. -->
<div class="g-plus" data-action="share" data-annotation="none"></div>
</div>
				</div>
					<div style="padding: 5px;">
<pre class="linenums" style="padding: 20px;">
<%=source_codes%>
</pre>
					</div>
				</div>
			</div>
		</div>
		<%
		}
	}
catch(Exception e){
	e.printStackTrace();
}
%>
	<div style="text-align: center; padding: 20px;">
		<a class="edit_code_btn" href="editCode.jsp?id=<%=id%>">Edit source code</a>
	</div>
	</div>
	<br><br><br>
	<div style="text-align:center;text-decoration: none !important;">
		Powered by <a href="http://about.me/rajendraarora16/">Paste tool</a>.
    </div>
<script type="text/javascript">
$(document).ready(function(){
    $("pre").addClass("prettyprint");
});
</script>
</body>
</html>
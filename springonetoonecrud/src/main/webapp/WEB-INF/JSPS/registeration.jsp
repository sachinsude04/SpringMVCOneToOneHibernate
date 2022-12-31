<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script type="text/javascript">
	function registration() {
		alert("reg");
		document.personForm.action="insert";
		document.personForm.submit();
	}
</script>

</head>
<body>
	<form:form name="personForm" class="form-horizontal"
		modelAttribute="personForm" method="post">
		<fieldset>

			<!-- Form Name -->
			<legend>Form Name</legend>


			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">name</label>
				<div class="col-md-4">
					<form:input id="name" path="name" name="name" type="text"
						placeholder=" " class="form-control input-md" required="" />

				</div>
			</div>
			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">mobile</label>
				<div class="col-md-4">
					<form:input name="mob" class="form-control input-md" path="mob"
						id="mob" required="" type="text" placeholder=" " />

				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">panno</label>
				<div class="col-md-4">
					<form:input name="panno" class="form-control input-md"
						path="pancard.panno" id="panno" required="" type="text"
						placeholder=" " />

				</div>
			</div>

			<!-- Button -->
			<div class="form-group" >
				<label class="col-md-4 control-label" for="singlebutton">register</label>
				<div class="col-md-4">
					<button type="button" name="singlebutton" class="btn btn-primary"
						id="singlebutton"  onclick="javascript:registration();">register</button>
				</div>
			</div>

		</fieldset>
	</form:form>
	<a href="display">Display the records</a>
</body>
</html>
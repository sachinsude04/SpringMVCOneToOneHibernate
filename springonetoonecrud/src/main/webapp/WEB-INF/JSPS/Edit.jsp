
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body>

	<form:form class="form-horizontal" modelAttribute="personForm"
		method="post" action="insert">
		<fieldset>

			<!-- Form Name -->
			<legend>Form Name</legend>

			<form:input id="id" path="id" name="id" type="hidden" />
			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">name</label>
				<div class="col-md-4">
					<form:input id="name" path="name" name="name" type="text"
						class="form-control input-md" required="" />

				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">mobile</label>
				<div class="col-md-4">
					<form:input id="mob" path="mob" name="mob" type="text"
						class="form-control input-md" required="" />

				</div>
			</div>
			<form:input id="pancard.id" path="pancard.id" name="pancard.id" type="hidden" />
			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">PANNO</label>
				<div class="col-md-4">
					<form:input name="panno" class="form-control input-md"
						path="pancard.panno" id="panno" required="" type="text" />

				</div>
			</div>

			<!-- Button -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="singlebutton">update</label>
				<div class="col-md-4">
					<form:button type="submit" name="singlebutton"
						class="btn btn-primary" id="singlebutton">update</form:button>
				</div>
			</div>

		</fieldset>
	</form:form>

</body>
</html>
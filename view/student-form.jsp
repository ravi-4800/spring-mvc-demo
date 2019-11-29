<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>

<head>
	<title>Student Registration Form</title>
</head>
<body>

	<form:form action="processForm" modelAttribute="student">
	
	First Name: <form:input path="firstName" />
	
	<br><br>
	
	Last Name: <form:input path="lastName" />
	
	<br><br>
	
	<form:select path="country">
		<form:options items="${student.countryOptions}" />
		<!--<form:option value="Brazil" label="Brazil" />
		<form:option value="France" label="France" />
		<form:option value="Germany" label="Germany" />
		<form:option value="India" label="India" />-->
	</form:select>
	
	<br><br>
	
	Which one is your favourite language??
	Java <form:radiobutton path="favouriteLanguage" value="Java" />
	C# <form:radiobutton path="favouriteLanguage" value="C#" />
	Python <form:radiobutton path="favouriteLanguage" value="Python" />
	PHP <form:radiobutton path="favouriteLanguage" value="PHP" />
	
	<br><br>
	
	Operating System:
	<br>
	Linux <form:checkbox path="operatingSystems" value="Linux" />
	Mac OS <form:checkbox path="operatingSystems" value="Mac OS" />
	MS Windows <form:checkbox path="operatingSystems" value="MS Windows" />
	
	<br><br>
	
	<input type="submit" value="Submit" />
	
	</form:form>

</body>
</html>
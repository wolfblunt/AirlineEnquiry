<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">Check your status</h1>
<form action="Statuscont">
Enter your Booking number<input type="text" name="booking_no">
<input type="submit" value="Check">
</form>
</body>
</html> -->

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
      

<title>Insert title here</title>

<link rel="stylesheet" href="css/checkStatus_style.css">
</head>
<body>
<div id="title">
<h1 align="center">Airline Enquiry System</h1>
<br>
<br>
<h2 align="center">Check your status</h2>

</div>
<div align="center" id="main">
<form action="Statuscont" onsubmit="return onValidation()">
<h4>Enter your Booking number</h4>
<input type="text" name="booking_no" id = "book">
<span id="book" class="text-danger font-weight-bold">
</span>
<input type="submit" value="Check">
</form>
<br>
<br>
<a href="Home_page.jsp"><h3>Home Page</h3></a>
</div>

<script type="text/javascript">

function onValidation() {
	var book = document.getElementById('book').value;
	if(book=="") {
		document.getElementById('book').innerHTML = "**Please fill the booking number!"
		return false;
	}
	else if(book.length!=7){
		document.getElementById('book').innerHTML = "**Booking number must be of length 7!"
		return false;
	}
	else {
		//aman khandelwal's part
	}
}
</script>

</body>
</html> --%>




<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

<title>Insert title here</title>

<link rel="stylesheet" href="css/checkStatus_style.css">
</head>
<body>
	<div class="container"><br>
		<h1 class="text-success text-center">Check booking status</h1><br>
		<div class="col-lg-8 m-auto d-block">
			<form action="Statuscont" onsubmit="return validation()">
				
				<div class="form-group">
					<label>Booking Number:</label><br>
					<input type="text" name="booking_no" class="form-control" id="book"/>
					<span id="booking" class="text-danger font-weight-bold">
					</span>
				</div>
				
				<input type="submit" name="submit" value="Submit" class="btn-success">
			</form>
		<a href="Home_page.jsp" class = "text-danger"><h3 align="center">Home Page</h3></a>
		
		</div>

	</div>
	
	<script type="text/javascript">
	
		function validation() {
			var book = document.getElementById('book').value;
			if(book=="") {
				document.getElementById('booking').innerHTML = "**Please fill the booking number!"
				return false;
			}
			else if(book.length!=7){
				document.getElementById('booking').innerHTML = "**Booking number must be of length 7!"
				return false; 
			}
			/* else if(!book.contains("1")||!book.contains("2")||!book.contains("3")||!book.contains("4")||!book.contains("5")||!book.contains("6")||!book.contains("7")||!book.contains("8")||!book.contains("9")||!book.contains("0")) {
				document.getElementById('booking').innerHTML = "**Only numeric values!"
					return false; 
			} */
		}
	
	</script>
</body>
</html>
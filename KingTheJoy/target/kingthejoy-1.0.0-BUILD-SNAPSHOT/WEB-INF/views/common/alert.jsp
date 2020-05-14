<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script type="text/javascript">

$(document).ready(function() {
	swal({
		  icon: "success",
		  title: '${msg}',
		  showConfirmButton: true,
		  closeOnConfirm: false
		}).then(function(result){
		  window.location = '${url}';
		})
	})
</script> 
</head> 
<body>
</body>
</html>
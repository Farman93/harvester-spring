<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Sign in &middot; Twitter Bootstrap</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="stylesheet">
<!--     <link href="../css/bootstrap.css" rel="stylesheet"> -->
    <style type="text/css">
      body {
        padding-top: 40px;
        padding-bottom: 40px;
        background-color: #f5f5f5;
      }

      .form-signin {
        max-width: 300px;
        padding: 19px 29px 29px;
        margin: 0 auto 20px;
        background-color: #fff;
        border: 1px solid #e5e5e5;
        -webkit-border-radius: 5px;
           -moz-border-radius: 5px;
                border-radius: 5px;
        -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
           -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
                box-shadow: 0 1px 2px rgba(0,0,0,.05);
      }
      .form-signin .form-signin-heading,
      .form-signin .checkbox {
        margin-bottom: 10px;
      }
      .form-signin input[type="text"],
      .form-signin input[type="password"] {
        font-size: 16px;
        height: auto;
        margin-bottom: 15px;
        padding: 7px 9px;
      }

    </style>
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-responsive.css" rel="stylesheet">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="../assets/js/html5shiv.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
      <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
                    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
                                   <link rel="shortcut icon" href="../assets/ico/favicon.png">
  </head>

  <body>

	<div class="container">
		<div class="form-signin">
			<form action="loginsubmit" method="post">
			  <h2 class="form-signin-heading">Please sign in</h2>
			  <input type="text" class="input-block-level" placeholder="Login">
			  <input type="password" class="input-block-level" placeholder="Password">
			  <label class="checkbox">
			    <input type="checkbox" value="remember-me"> Remember me
			  </label>
			  <div class="container">
			  	<button class="btn btn-large btn-primary" type="submit">Sign in</button>
			  </div>
			</form>
			<form class="form-inline" action="">
				<div class="form-group">
					<label for="btnSignUp">First time?</label>
					<button class="btn btn-small btn-info" type="submit" id="btnSignUp">Sign up</button>
				</div>
	      	</form>
		</div>
	</div>
    <div class="container" id="registerForm" hidden="true">
    	<div class="form-signin">
    		<form action="register" method="post">
    			<h2 class="form-signin-heading">Please sign up</h2>
    			<input type="text" class="input-block-level" placeholder="Login">
				<input type="password" class="input-block-level" placeholder="Password">
				<input type="password" class="input-block-level" placeholder="Repeat password">
				<div class="container">
					<button class="btn btn-large btn-primary" type="submit">Sign up</button>
				</div>
    		</form>
    	</div>
    </div>
     <!-- /container -->
	
	
	<!-- Include Bootstrap Asserts JavaScript Files. -->
<script type="text/javascript" src="jquery.validate.js"></script>
<script type="text/javascript">
$(document).ready(function() {
// Generate a simple captcha
function randomNumber(min, max) {
return Math.floor(Math.random() * (max - min + 1) + min);
};
$('#captchaOperation').html([randomNumber(1, 100), '+', randomNumber(1, 200), '='].join(' '));
 
$('#defaultForm').bootstrapValidator({
message: 'This value is not valid',
fields: {
username: {
message: 'The username is not valid',
validators: {
notEmpty: {
message: 'The username is required and can\'t be empty'
},
stringLength: {
min: 6,
max: 30,
message: 'The username must be more than 6 and less than 30 characters long'
},
regexp: {
regexp: /^[a-zA-Z0-9_\.]+$/,
message: 'The username can only consist of alphabetical, number, dot and underscore'
},
different: {
field: 'password',
message: 'The username and password can\'t be the same as each other'
}
}
},
email: {
validators: {
notEmpty: {
message: 'The email address is required and can\'t be empty'
},
emailAddress: {
message: 'The input is not a valid email address'
}
}
},
password: {
validators: {
notEmpty: {
message: 'The password is required and can\'t be empty'
},
identical: {
field: 'confirmPassword',
message: 'The password and its confirm are not the same'
},
different: {
field: 'username',
message: 'The password can\'t be the same as username'
}
}
},
confirmPassword: {
validators: {
notEmpty: {
message: 'The confirm password is required and can\'t be empty'
},
identical: {
field: 'password',
message: 'The password and its confirm are not the same'
},
different: {
field: 'username',
message: 'The password can\'t be the same as username'
}
}
},
captcha: {
validators: {
callback: {
message: 'Wrong answer',
callback: function(value, validator) {
var items = $('#captchaOperation').html().split(' '), sum = parseInt(items[0]) + parseInt(items[2]);
return value == sum;
}
}
}
}
}
});
});
</script>
	
    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="../assets/js/jquery.js"></script>
    <script src="../assets/js/bootstrap-transition.js"></script>
    <script src="../assets/js/bootstrap-alert.js"></script>
    <script src="../assets/js/bootstrap-modal.js"></script>
    <script src="../assets/js/bootstrap-dropdown.js"></script>
    <script src="../assets/js/bootstrap-scrollspy.js"></script>
    <script src="../assets/js/bootstrap-tab.js"></script>
    <script src="../assets/js/bootstrap-tooltip.js"></script>
    <script src="../assets/js/bootstrap-popover.js"></script>
    <script src="../assets/js/bootstrap-button.js"></script>
    <script src="../assets/js/bootstrap-collapse.js"></script>
    <script src="../assets/js/bootstrap-carousel.js"></script>
    <script src="../assets/js/bootstrap-typeahead.js"></script>

  </body>
</html>

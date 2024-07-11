<%-- 
    Document   : adminAlumniRegister
    Created on : Mar 23, 2024, 11:20:38 AM
    Author     : yashc
--%>
<%@page import="dto.verifyAlumni"%>
<%
    verifyAlumni alumni = ( verifyAlumni) session.getAttribute("verify");
   
%>
<%@page import="dto.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP yog. Page</title>
        <!--bootstrap css link-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <!--footer icons of social media link-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    </head>
    <body>
        <%@include  file="admin_navbar.jsp" %>



        <!--Alumni Register starts-->
        <form method="POST" action="adminAlumniRegisterServlet" id="reg-alumni" enctype="multipart/form-data" >
            <div class="container mt-5   primary-color">
                <div class="card text-center">
                    <div class="card-header primary-background">
                        <font style="color: white">Register Alumni</font>
                    </div>


                    <div class="card-body primary-color">
                        <div class="form-group text-left">
                            <label for="#" class="text-left">Name</label>
                            <input name="name" type="text" class="form-control"  placeholder="Enter Your Name" maxlength="20" required>
                        </div>


                        <div class="form-row mt-3 text-left">
                            <div class="form-group col-md-6 ">
                                <label for="inputEmail4">Email Id</label>
                                <input name="email" type="email" class="form-control" id="inputEmail4" placeholder="Email" required>
                                <small id="emailHelp" class="form-text text-muted text-left">We'll never share your email with anyone else.</small>

                            </div>
                            <div class="form-group col-md-6">
                                <label for="#">Enrollment No.</label>
                                <input name="enrollmentNo" type="text" class="form-control"  placeholder="Enter Your Enrollment" required maxlength="12" value="<%= alumni.getErollment() %>" readonly>
                            </div>
                        </div>
                        <div class="form-row mt-3 text-left">
                            <div class="form-group col-md-6 ">
                                <label>Registration No.</label>
                                <input name="registrationNo" type="text" class="form-control"  placeholder="Enter your registration number" required maxlength="10">
                                <small  class="form-text text-muted text-left">We'll never share your email with anyone else.</small>

                            </div>
                            <div class="form-group col-md-6">
                                <label for="#">Passout Year</label>
                                <input name="PassoutYear" type="text" class="form-control" id="phone" placeholder="Enter Your Passout Year " required value="<%= alumni.getYear() %>" maxlength="4" readonly>
                            </div>
                        </div>
                        <div class="form-row mt-3 text-left">
                            <div class="form-group col-md-6 ">
                                <label >Occupation</label>
                                <input name="occupation" type="text" class="form-control"  placeholder="Enter Your Occpation" required maxlength="20">

                            </div>
                            <div class="form-group col-md-6">
                                <label for="#">Organisation</label>
                                <input name="organisation" type="text" class="form-control" placeholder="Enter Your Organisation" required maxlength="50">
                            </div>
                        </div>
                        <div class="form-row mt-3 text-left">
                            <div class="form-group col-md-6 ">
                                <label >Designation</label>
                                <input name="designation" type="text" class="form-control"  placeholder="Enter Your Designation" required maxlength="50">

                            </div>
                            <div class="form-group col-md-6 ">
                                <label for="#">Date of Birth</label>
                                <input name="dateOfbirth" type="date" class="form-control"  placeholder="Select date of birth" required >
                            </div>
                        </div>

                        <div class="form-row mt-1 text-left">
                            <div class="form-group col-md-6 ">
                                <label>Password</label>
                                <input id="myPass" name="password" type="password" class="form-control"  placeholder="Enter Your Password">
                                <!-- An element to toggle between password visibility -->

                                <input type="checkbox" >&nbsp;Show Password
                            </div>
                            <div class="form-group col-md-6">
                                <label for="#">Contact</label>
                                <input name="contact" type="text" class="form-control"  placeholder="Enter Your Contact Number" required>
                            </div>

                        </div>
                        <div class="form-row mt-1 text-left">
                            <div class="form-group col-md-6 ">
                                <label >Choose Profile</label>

                                <input  name="image" type="file" class="form-control" >
                            </div>
                        </div>
                    </div>

                    <div class="card-footer primary-color text-left mt-4">
                        <div class="container text-center" id="loader" style="display: none;">
                            <span class="fa fa-refresh fa-spin fa-3x"></span>
                            <h3>Please Wait...</h3>
                        </div>
                        <button  type="submit" class="submit-btn btn btn-outline-success">Click here to Register</button>
                    </div>

                </div>
            </div>
        </div>
    </div>
</form>
<!--Alumni Register ends-->


<!--alumni modal starts-->



<!--alumni modal ends-->




<%@include  file="admin_footer.jsp" %>
 <!--bootstrap jquery,javascript link-->
        <script
            src="https://code.jquery.com/jquery-3.7.1.min.js"
            integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
        crossorigin="anonymous"></script>

        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
       <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>



<script>

             $(document).ready(function () {
                console.log("loaded");

                $('#reg-alumni').on('submit', function (event) {
                    event.preventDefault();

                    let form = new FormData(this);

                    $("#submit-btn").hide();
                    $("#loader").show();

                    // sending AddNewAdminServlet 

                    $.ajax({
                        url: "adminAlumniRegisterServlet",
                        type: 'POST',
                        data: form,
                        success: function (data, textStatus, jqXHR) {
                            console.log(data);
                            $("#submit-btn").show();
                            $("#loader").hide();
                            if (data.trim() === 'done')
                            {
                                {
                                    //swal("Succesfully Registered Alumni! we are redirecting to Home page.")
                                    swal("Good job!", "Succesfully Registered Alumni!", "success")
                                            .then((value) => {
                                                window.location = "adminIndex.jsp";
                                            });

                                }
                            }
                     
                            else
                            {
                                swal(data);
                                swal("Something went wrong.Please try again later!");
                            }


                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            console.log(jqXHR);
                            $("#submit-btn").show();
                            $("#loader").hide();
                            swal("Something went wrong.Please try again later!");




                        },
                        processData: false,
                        contentType: false

                    });



                });
            });

       
        
                                    



</script>

</body>
</html>

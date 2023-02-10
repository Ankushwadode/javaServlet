<%-- 
    Document   : signup
    Created on : 16-Jul-2022, 8:25:58 am
    Author     : Ankush
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- Compiled and minified CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
        <!-- Compiled and minified JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    </head>
    <body style="background: url(img/bankbook.jpg); background-size: cover; background-attachment: fixed;">
        <div class="container">
            <div class="row">
                <div class="col m6 offset-m3">
                    <div class="card">
                        <div class="card-conten">
                            <h3 style="margin-top: 10px;" class="center-align">Register here!!</h3>

                            <h5 id="smsg" class="center-align"></h5>
                            <div class="form center-align">

                                <!--//creating form.......-->
                                <form action="Register" method="post" id="myform">
                                    <input type="text" name="user_name" placeholder="Enter your name here"/> 
                                    <input type="password" name="user_pass" placeholder="Enter your password here"/> 
                                    <input type="email" name="user_email" placeholder="Enter your email here"/>
                                    <div class="left-align"><br>
                                        <input type="file" name="image"/>
                                    </div><br>
                                    <button type="submit" class="btn red">Submit</button>
                                </form>

                            </div>

                            <div class="loader center-align" style="margin-top: 10px; display:none;">
                                <div class="preloader-wrapper big active">
                                    <div class="spinner-layer spinner-blue-only">
                                        <div class="circle-clipper left">
                                            <div class="circle"></div>
                                        </div><div class="gap-patch">
                                            <div class="circle"></div>
                                        </div><div class="circle-clipper right">
                                            <div class="circle"></div>
                                        </div>
                                    </div>
                                </div>
                                
                                <h5>Please Wait....</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <script
                src="https://code.jquery.com/jquery-3.6.0.min.js"
                integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
                crossorigin="anonymous">
            </script>

            <script>
                $(document).ready(function () {
                    console.log("page is ready.....");
                    $("#myform").on('submit', function (event) {
                        event.preventDefault();
                       //var f = $(this).serialize();
                       let f=new FormData(this);
                        console.log(f);
                        $(".loader").show();
                        $(".form").hide();
                        $.ajax({
                            url: "Register",
                            data: f,
                            type: "POST",
                            success: function (data, textStatus, jqXHR) {
                                console.log(data);
                                console.log("success...");
                                $(".loader").hide();
                                $(".form").show();
                                if (data.trim() === 'Done') {
                                    $('#smsg').html("successfully registered.");
                                    $('#smsg').addClass('green-text');
                                } else {
                                    $('#smsg').html("Something went wrong...");
                                    $('#smsg').addClass('red-text');
                                }
                            },
                            error: function (jqXHR, textStatus, errorThrown) {
                                console.log(data);
                                console.log("error...");
                                $(".loader").hide();
                                $(".form").show();
                                $('#smsg').html("Something went wrong...");
                                $('#smsg').addClass('red-text');
                            },
                            processData:false,
                            contentType:false
                        });
                    });
                });
            </script>

    </body>
</html>

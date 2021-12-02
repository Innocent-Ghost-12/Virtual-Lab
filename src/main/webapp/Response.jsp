<%-- 
    Document   : Response
    Created on : Oct 29, 2021, 12:53:50 AM
    Author     : kalam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

        <title>Hello, world!</title>
    </head>
    <body>
        <div class="container m-5 p-5">
            <form action="saveResponseServelet" method="post" class="row g-3">
                <div class="col-md-6">
                    <label for="name" class="form-label">Name</label>
                    <input type="text" name="name" required class="form-control" id="name">
                </div>
                <div class="col-md-6">
                    <label for="inputEmail" class="form-label">Email</label>
                    <input type="email" name="email" required class="form-control" id="inputEmail4">
                </div>
                <div class="col-12">
                    <label for="feedback" class="form-label">Address</label>
                    <input type="text" required class="form-control" id="inputAddress" style="height: 300px" placeholder="1234 Main St">
                </div>

                <div class="col-12 text-center">
                    <button type="submit" name="feedback" class="btn btn-primary">Sign in</button>
                </div>
            </form> </div>


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>


    </body>
</html>
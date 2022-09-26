<%-- 
    Document   : home
    Created on : 27-Jul-2022, 12:03:44 pm
    Author     : VIKAS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <style>
        .navbar{
            background-color: black;
            border-radius:10px;
        }
        /* background color is removed due overflow from parent. */
        .navbar ul{
            overflow: auto;
            margin: 0px;
        }
        .navbar li{
            /* to move list element in single line..color vanishes */
            float:left;
            padding: 10px;
            /* elach line vr asele home,about menu jr varti jasta astil,y axis ne center ls nasel tr varcha padding badlaicha */
            padding-top: 8px;
            /* to remove bullets */
            list-style: none;
            margin: 3px 20px;
            
        }
        .navbar li a{
            /* sagle jawal jawal ahet..apan padding devun lamb karuya */
            padding: 3px 11px;
            font-size: 22px;
            color:white;
            text-decoration: none;
        }
        .search{

            float:right;
            color:whitesmoke;
            padding: 10px 4px;
           
            

        }
        .navbar input{
            /* Here search box dimentions are configured */
            border:2px solid black;
            margin: 0px 20px;
            font-size: 20px;
            border-radius:10px;
            padding: 1px;
        }
        .navbar li a:hover{
            background-color: red;
            color: rgb(248, 248, 252);
        }
        body{
            background-image: linear-gradient(45deg,#789390,#26c6e6);
            margin-top: 0;
            
        }
        #img{
            float:right;
            height: 60vh;
            margin-top: 37px;
            
        }
        .main{
            height: 90vh;
            width:98vw;
            background-color: rgb(184, 134, 134);
        
        }
        .name{
                float: left; 
                padding: 20px;
                margin-left: 136px;
        }
        #nameh1{
            font-size: 50px;
            padding-top: 50px;
        }

        /* button */
        .btn{
            border: 2px solid red;
            font-size: 20px;
            height: 35px;
            width: 155px;
            border-radius: 7px;
            cursor:pointer;
            margin-top: 35px; 
        }
        a{
            text-decoration: none;
            color:rgb(223, 79, 79) ;
        }
        .btn:hover{
            background-color: rgb(99, 86, 96);
            color: #26c6e6;
            
            
        }

        .btn a:hover{
            color: white;
        }

        .features{
            height: 25vh;
            background-color: red;
            width: 98vw;
        }
        #nameh2{
            font-size: 35px;
            text-align: center;
        }

        .box{
            display: flex;
            justify-content: space-evenly;
            
        }
        .box1,.box2,.box3{
           
            border:2px solid black;
            padding-top: 10px;
            height: 250px;
            width: 300px;
            border-radius: 10px;
            background-color: antiquewhite;
            box-shadow: 6px 6px 3px green, 12px 12px 5px red;
            text-align: center;
            font-size: 20px;
           
        }

        .contact{
            background-color: cornsilk;
            height: 50vh;
            text-align: center;
            font-size: 25px;
        }
        .contact input{
            height: 25px;
            width: 250px;
            border-radius: 8px;
            border: 2px solid black;
        }

        textarea{
            width: 500px;
            height: 100px;
            border-radius: 8px;
            border: 2px solid black;
        }
        #submit{
            height: 25px;
            width: 90px;
            cursor: pointer;
        }
        #submit:hover{
            background-color:red;
            color: white;

        }

        #img1{
            padding-top: 50px;
            height: 150px;
            width: 220px;;
        }

        #footersection{
            height: 30px;
            width: 98vw;
            background-color: black;
            color: white;
            text-align: center;
            margin-bottom: 0;
        }
    </style>
   
</head>
<body>
    <header>
        <nav class="navbar">
            <ul>
                <li><a href="">Home</a></li>
                <li><a href="">About</a></li>
                <li><a href="">Services</a></li>
                <li><a href="">Contact us</a></li>
                <div class="search">
                    <input type="text" name="search" id="search1" placeholder="  Search box">
                <div>
            </ul>
        </nav>
    </header>
    <section class="main">
        <div class="name">
            <h1 id="nameh1">HB Travels</h1>
            <P id="subpara">
                <h1>Travel Once, Remember always</h1> 
                <h1>Night Queen of Pune-Solapur Express</h1>
            </P>
            <div>
                <button class="btn" ><a href="loginPage.jsp"> Book a travel</a></button>
            </div>
        </div>
        <img id="img" src="travels_img.png" alt="Couldn't load the image">
    </section>
    <hr>
    <section class="Features">
        <h1 id="nameh2">Features</h1>
        <div class="box">
            <div class="box1">Confortable tour 
                <img id="img1" src="air-conditioner.png" alt="Couldn't Load">
            </div>
            <div class="box2">Luxury Travels
                <img id="img1" src="massage-chair.png" alt="Couldn't Load">
            </div>
            <div class="box3">Assure seat of your choice
                <img id="img1" src="cinema-seat.png" alt="Couldn't Load">
            </div>
        </div>
    </section>
    <br>
    <br><br>
    <hr>
    <section class="contact">
        <h1 id="nameh2">contact us</h1>
        <form action="Submit">
            <p>Name <br><input type="text"></p>
            <p>Type here</p>
            <textarea id="message" name="message"></textarea>
            <br>
            <input type="submit" id="submit" name="submit">
        </form>
    </section>

    <footer id="footersection">
        <h2> © Copyright | All Rights are Reserved. </h2> 
    </footer>
            
                
    
</body>
</html>
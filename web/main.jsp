<%-- 
    Document   : main
    Created on : 31-Jul-2022, 7:06:17 pm
    Author     : VIKAS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking</title>
    <style>
        #hide{
            display: none;
        }
        @media(min-width:1200) {
            #hide{
                display: block;
                
            }
            
        }

        body{
            background-image: linear-gradient(45deg,#789390,#26c6e6);
        }
        .navbar{
            background-color: black;
            border-radius:10px;
        }
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

        .info{
            margin-top: 100px;
            margin-left: 50px;
            font-size: 25px;
            
        }
        .info div{
            padding: 20px;
        }
        .info div select,.info div input {
            padding: 7px;
            font-family:'Times New Roman', Times, serif;
            font-size: 15px;
            border: 2px solid black;
            border-radius: 5px;
            background-color: rgb(228, 213, 193);
        }
        .info{
            float:left;
            
        }

        /* box */
        .container{
            height: 95vh;
            width: 30vw;
            border: 2px solid black;
            /* display: grid;
            grid-auto-rows: 2fr;
            grid-gap: 20px; */
            display:inline-block;
            

        }
        .box{
            background-color: rgb(250, 93, 93);
            border: 2px solid black;
            height: 55px;
            width: 55px;
            margin: 5px;
            text-align:center;
        }
        .box:hover{
            cursor: pointer;
            
        }
        .front{
            display: grid;
            /* float: top; */
            grid-template-columns: 50px 50px 50px  ;
            margin-top: 4px;
            grid-auto-rows: 1fr;
            grid-gap: 15px;
            justify-content: space-around;
            

        }

        #box1{
            /* grid-column-start: 2;
            grid-column-end: 4; */
            margin-left: 15px;
            grid-column: span 6;  
        }
        #box2{
            margin-left: 15px;
            margin-bottom: 13px;

        }
        #box3{
            grid-column: span 3; 
            margin-right: 78px;
        }

        
        
        .right{
            
            /* border: 2px solid black; */
            height: 70vh;
            width: 12vw;
            margin: 17px;
            align-items: right;
            justify-content: space-around;
            /* display: grid; */
            /* grid-template-columns: 50px 50px;
            grid-auto-rows: 2fr;
            grid-gap: 20px; */
            float: right;
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;

        }
        .left{
            /* display: grid; */
            /* border: 2px solid black; */
            height: 70vh;
            width: 12vw;
            margin: 17px;
            /* align-items: left; */
            /* justify-content: space-around;
            grid-template-columns: 50px 50px;
            grid-auto-rows: 2fr;
            grid-gap: 20px; */
            float: left;
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
        }
        .redbuss{
            float:right;
            margin-right: 200px;
            margin-top: 40px;
        }

        .btn{
            border: 2px solid rgb(26, 22, 22);
            background-color: rgb(238, 228, 216);
            font-size: 20px;
            height: 35px;
            width: 155px;
            border-radius: 7px;
            cursor:pointer; 
            margin-top: 50px;
            margin-left: 20px;
        }
        .btn:hover{
            background-color:red;
            color:white;
        }
        #register_s{
           
            border: 2px solid orange;
        }
        #ch_availability{
            width: 200px;
        }

    
    </style>
    <script>
        //  if(selected=="")
        
        function ch_color(id1){
            if(document.getElementById(id1).style.backgroundColor!="green")
            {
                document.getElementById(id1).style.backgroundColor="green";
                
            }
            else{
                document.getElementById(id1).style.backgroundColor="rgb(250, 93, 93)";
            }
            //  console.log(event.target.id);
        }
        
        function confirmSeats()
        {
            const selected=[];
//            if(document.getElementById("box1").style.backgroundColor=="green"){if(!selected.includes(1)){selected.push(1);}}
            if(document.getElementById("box1").style.backgroundColor=="green"){selected.push(1);}
            if(document.getElementById("box2").style.backgroundColor=="green"){selected.push(2);}
            if(document.getElementById("box3").style.backgroundColor=="green"){selected.push(3);}
            if(document.getElementById("box4").style.backgroundColor=="green"){selected.push(4);}
            if(document.getElementById("box5").style.backgroundColor=="green"){selected.push(5);}
            if(document.getElementById("box6").style.backgroundColor=="green"){selected.push(6);}
            if(document.getElementById("box7").style.backgroundColor=="green"){selected.push(7);}
            if(document.getElementById("box8").style.backgroundColor=="green"){selected.push(8);}
            if(document.getElementById("box9").style.backgroundColor=="green"){selected.push(9);}
            if(document.getElementById("box10").style.backgroundColor=="green"){selected.push(10);}
            if(document.getElementById("box11").style.backgroundColor=="green"){selected.push(11);}
            if(document.getElementById("box12").style.backgroundColor=="green"){selected.push(12);}
            if(document.getElementById("box13").style.backgroundColor=="green"){selected.push(13);}
            if(document.getElementById("box14").style.backgroundColor=="green"){selected.push(14);}
            if(document.getElementById("box15").style.backgroundColor=="green"){selected.push(15);}
            if(document.getElementById("box16").style.backgroundColor=="green"){selected.push(16);}
            if(document.getElementById("box17").style.backgroundColor=="green"){selected.push(17);}
            if(document.getElementById("box18").style.backgroundColor=="green"){selected.push(18);}
            if(document.getElementById("box19").style.backgroundColor=="green"){selected.push(19);}
            if(document.getElementById("box20").style.backgroundColor=="green"){selected.push(20);}
            if(document.getElementById("box21").style.backgroundColor=="green"){selected.push(21);}
            if(document.getElementById("box22").style.backgroundColor=="green"){selected.push(22);}
            if(document.getElementById("box23").style.backgroundColor=="green"){selected.push(23);}
            if(document.getElementById("box24").style.backgroundColor=="green"){selected.push(24);}
            if(document.getElementById("box25").style.backgroundColor=="green"){selected.push(25);}
            if(document.getElementById("box27").style.backgroundColor=="green"){selected.push(26);}
            if(document.getElementById("box27").style.backgroundColor=="green"){selected.push(27);}
            if(document.getElementById("box28").style.backgroundColor=="green"){selected.push(28);}
            if(document.getElementById("box29").style.backgroundColor=="green"){selected.push(29);}
            if(document.getElementById("box30").style.backgroundColor=="green"){selected.push(30);}
            if(document.getElementById("box31").style.backgroundColor=="green"){selected.push(31);}

            let a=500;
            // let a=selected.length;
            // if(a==0){}
            if(selected=="")
            {
              
                alert("Select the seat");
                return false;
                
            }
            else{              
                if(confirm ("want to register "+selected.length+" seats? \r\n Total Amount: Rs."+a*selected.length+"/-"))
                {
                    // enter data in the database
                      document.getElementById("manthan").value=selected;
                }
                else{
//                    
                    return false;
                }
            }  
        }
        
    </script>
</head>
<body>

    <div id="hide">
        <p>This website isn't support mobile devices</p>
    </div>
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

    <div class="info">
        <form name="myform" onsubmit="return confirmSeats()" action="mainInfo">
         
        <div class="sm_form">
            <label for="status">Select time</label>
            <select name="time" id="time" required>  
                <option value="">None</option>
                <option value="6:00:00">6:00 am</option>
                <option value="4:15:00">4:15 pm</option>
            </select>
        </div>

        <div> 
            Travel Date:<input type="date" name="date" id="date" min="06-08-2022" max="06-08-2023" required>
          
       </div>
        <div>
            <label for="status">Source =>Destination</label>
            <select name="sd" id="sd" required >
               
            <option value="">None</option>    
            <option value="Pune To Solapur">Pune to Solapur</option>
            <option value="Solapur to Pune">Solapur to Pune</option>
            </select>
        </div>

    <div>
        Enter Mobile No: <input type="text" name="mobileNo" id="mobileNo" Placeholder="   Mobile No" required>
      
    </div>


     
    <input type="hidden" id="manthan" name="manthan" value="0"/>  
    


    <div>
        <button class="btn" >Register</button> 

    </div>
    
    </form>
    </div>

    

    <div class="redbuss">
        <div class="container">
            <div class="front">
                <button class="box" id="box1" onclick="ch_color(this.id)">1</button>
                <button class="box" id="box2" onclick="ch_color(this.id)">2</button>
                <button class="box" id="box3" onclick="ch_color(this.id)">3</button>

            </div> 
            

            <div class="left">
                <button class="box" id="box4"onclick="ch_color(this.id)">4</button>
                <button class="box" id="box5"onclick="ch_color(this.id)">5</button>
                <button class="box" id="box8"onclick="ch_color(this.id)">8</button>
                <button class="box" id="box9"onclick="ch_color(this.id)">9</button>
                <button class="box" id="box12"onclick="ch_color(this.id)">12</button>
                <button class="box" id="box13"onclick="ch_color(this.id)">13</button>
                <button class="box" id="box16"onclick="ch_color(this.id)">16</button>
                <button class="box" id="box17"onclick="ch_color(this.id)">17</button>
                <button class="box" id="box20"onclick="ch_color(this.id)">20</button>
                <button class="box" id="box21"onclick="ch_color(this.id)">21</button>
                <button class="box" id="box24"onclick="ch_color(this.id)">24</button>
                <button class="box" id="box25"onclick="ch_color(this.id)">25</button>
                <button class="box" id="box28"onclick="ch_color(this.id)">28</button>
                <button class="box" id="box29"onclick="ch_color(this.id)">29</button>
                
            </div>
            
            <div class="right">
                <button class="box" id="box6"onclick="ch_color(this.id)">6</button>
                <button class="box" id="box7"onclick="ch_color(this.id)">7</button>
                <button class="box" id="box10"onclick="ch_color(this.id)">10</button>
                <button class="box" id="box11"onclick="ch_color(this.id)">11</button>
                <button class="box" id="box14"onclick="ch_color(this.id)">14</button>
                <button class="box" id="box15"onclick="ch_color(this.id)">15</button>
                <button class="box" id="box18"onclick="ch_color(this.id)">18</button>
                <button class="box" id="box19"onclick="ch_color(this.id)">19</button>
                <button class="box" id="box22"onclick="ch_color(this.id)">22</button>
                <button class="box" id="box23"onclick="ch_color(this.id)">23</button>
                <button class="box" id="box26"onclick="ch_color(this.id)">26</button>
                <button class="box" id="box27"onclick="ch_color(this.id)">27</button>
                <button class="box" id="box30"onclick="ch_color(this.id)">30</button>
                <button class="box" id="box31"onclick="ch_color(this.id)">31</button>          
            </div>
        </div>
        
        
    </div>

</body>
</html>
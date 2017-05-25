<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="css/abcd2.css" rel='stylesheet' type='text/css' media="all"/>
<style>
div {
    zoom:130%;
}
</style>

</head>
<body bgcolor="#999999">
<form action="seatcontrol" method="post">
<div class="plane">
  <div class="cockpit">
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
  <h1>SHOWTIME</h1>   
    <h2>Please select a seat</h1>
 <img src="images/seat3.jpg" class="img-responsive" alt="" align="left"/><h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:ALREADY BOOKED </h4>
 <img src="images/seat.jpg" class="img-responsive" alt="" align="left"/><h4>: NOT BOOKED </h4>
  </div>
  
  <ol class="cabin fuselage">
    <li class="row row--1">
    <ol class="seats" type="A">
    
    
        <%if(session.getAttribute("1a").equals("b")) 
        {%><li class="seat">
        <img src="images/seat2.jpg" class="img-responsive" alt="" />
      </li>
        	
       <%  }
        else{%>
        <li class="seat">
          <input type="checkbox"  name="s" value="1a" id="1a" />
          <label for="1a">1A</label>
        </li><%} %>
        <%if(session.getAttribute("1b").equals("b")) 
        {%><li class="seat">
        <img src="images/seat2.jpg" class="img-responsive" alt="" />
      </li>
        	
       <%  }
        else{%>
        <li class="seat">
          <input type="checkbox" name="s" value="1b" id="1b" />
          <label for="1b">1B</label>
        </li><%} %>        
        <%if(session.getAttribute("1c").equals("b")) 
        {%><li class="seat">
        <img src="images/seat2.jpg" class="img-responsive" alt="" />
      </li>
        	
       <%  }
        else{%>
        <li class="seat">
          <input type="checkbox" name="s" value="1c" id="1c" />
          <label for="1c">1C</label>
        </li><%} %>        
        <%if(session.getAttribute("1d").equals("b")) 
        {%><li class="seat">
        <img src="images/seat2.jpg" class="img-responsive" alt="" />
      </li>
        	
       <%  }
        else{%>
        <li class="seat">
          <input type="checkbox" id="1D" name="s" value="1d"/>
          <label for="1D">1D</label>
        </li><%} %>
       <%if(session.getAttribute("1e").equals("b")) 
        {%><li class="seat">
        <img src="images/seat2.jpg" class="img-responsive" alt="" />
      </li>
        	
       <%  }
        else{%>
        <li class="seat">
          <input type="checkbox" id="1e" name="s" value="1e"/>
          <label for="1e">1E</label>
        </li><%} %>
        
        
        <li class="seat">
          <input type="checkbox"  name="s" value="1f" id="1f" />
          <label for="1a">1F</label>
        </li>         
      </ol>
      
    </li>
    <li class="row row--2">
      <ol class="seats" type="A">
        <%if(session.getAttribute("2a").equals("b")) 
        {%><li class="seat">
        <img src="images/seat2.jpg" class="img-responsive" alt="" />
      </li>
        	
       <%  }
        else{%>
        <li class="seat">
          <input type="checkbox" id="2a" name="s" value="2a"/>
          <label for="2a">2A</label>
        </li><%} %>        
        <%if(session.getAttribute("2b").equals("b")) 
        {%><li class="seat">
        <img src="images/seat2.jpg" class="img-responsive" alt="" />
      </li>
        	
       <%  }
        else{%>
        <li class="seat">
          <input type="checkbox" id="2b" name="s" value="2b"/>
          <label for="2b">2B</label>
        </li><%} %>        
                <%if(session.getAttribute("2c").equals("b")) 
        {%><li class="seat">
        <img src="images/seat2.jpg" class="img-responsive" alt="" />
      </li>
        	
       <%  }
        else{%>
        <li class="seat">
          <input type="checkbox" id="2c" name="s" value="2c"/>
          <label for="2c">2C</label>
        </li><%} %>        
         <%if(session.getAttribute("2d").equals("b")) 
        {%><li class="seat">
        <img src="images/seat2.jpg" class="img-responsive" alt="" />
      </li>
        	
       <%  }
        else{%>
        <li class="seat">
          <input type="checkbox" id="2d" name="s" value="2d"/>
          <label for="2d">2D</label>
        </li><%} %>               
         <%if(session.getAttribute("2e").equals("b")) 
        {%><li class="seat">
        <img src="images/seat2.jpg" class="img-responsive" alt="" />
      </li>
        	
       <%  }
        else{%>
        <li class="seat">
          <input type="checkbox" id="2e" name="s" value="2e"/>
          <label for="2e">2E</label>
        </li><%} %>        
        <li class="seat">
          <input type="checkbox"  name="s" value="1f" id="1f" />
          <label for="2f">2F</label>
        </li>         
      </ol>
    </li>
    
    
    </ol>
    </div>
    
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
     
    <input type="submit" value="PROCEED" name="proceed" id="proceed" style="height:50px; width:150px">
    </form>
</body>
</html>
<%@ include file="back3.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>
<center><h4>VIEW AND UPDATE PROFILE</h4></center>
<form action="dupdateprofile" method="post" class="form-group">

<c:forEach items="${data}" var="element"> 
<div class="container">
<div class="col-lg-4">
 <label>First Name</label><input type=text class="form-control" name="first_name" placeholder="Enter First Name" value="${element.first_name}"><br>
<label>Last name</label><input type=text class="form-control" name="last_name" placeholder="Enter Last Name" value="${element.last_name}"><br>
<label>Email</label><input type=email class="form-control" readonly name=email placeholder="Enter Email" value="${element.email}"><br>
<label>Gender</label>
                   <div>
                     <input type=radio name=gender  value="Male"   <c:choose><c:when test="${element.gender=='Male'}">checked</c:when> <c:otherwise></c:otherwise></c:choose>>Male 
                     <input type=radio name=gender value="Female"  <c:choose><c:when test="${element.gender=='Male'}"></c:when> <c:otherwise>checked</c:otherwise></c:choose> >Female <br>
</div></div>
 <div class="col-lg-4"> 
<label>Password</label><input type=text class="form-control" name=password placeholder="Enter Password" value="${element.password}"><br>
<label>Phone number</label><input type=number class="form-control" name=phone placeholder="Enter Phone Number" value="${element.phone}"><br>
<label>Postal code</label><input type=number class="form-control" name="postal_code" placeholder="Enter Postal Code" value="${element.postal_code}"><br>
</div>
<div class="col-lg-4">
<label>Languages known</label><input type=text class="form-control" name="languages" placeholder="Enter Languages known" value="${element.languages}"><br>
<label>Skill Set</label><input type=text class="form-control" name="skills" placeholder="Skill Set" value="${element.skills}"><br>
<label>Address</label><textarea name=address class="form-control" placeholder="Enter Address">${element.address}</textarea><br>
</div></div>
<div class="container">
<center><label>Availability through week</label></center>
                          <div class="col-lg-1">
                          <input type=checkbox name=sunday id="sunday"  <c:choose><c:when test="${element.sunday=='on'}">checked</c:when> <c:otherwise></c:otherwise></c:choose>>Sunday    
                           </div>
                           <div class="col-lg-2">
                           <input type=checkbox name=monday id="monday"  <c:choose><c:when test="${element.monday=='on'}">checked</c:when> <c:otherwise></c:otherwise></c:choose>>Monday   
                          </div>
                          <div class="col-lg-2">
                          <input type=checkbox name=tuesday id="tuesday"  <c:choose><c:when test="${element.tuesday=='on'}">checked</c:when> <c:otherwise></c:otherwise></c:choose>>Tuesday  
                         </div>
                         <div class="col-lg-2">
                          <input type=checkbox name=wednesday id="wednesday" <c:choose><c:when test="${element.wednesday=='on'}">checked</c:when> <c:otherwise></c:otherwise></c:choose>>Wednesday  
                         </div>
                         <div class="col-lg-2">
                          <input type=checkbox name=thursday id="thursday"  <c:choose><c:when test="${element.thursday=='on'}">checked</c:when> <c:otherwise></c:otherwise></c:choose>>Thursday    
                        </div>
                        <div class="col-lg-1">
                          <input type=checkbox name=friday id="friday"  <c:choose><c:when test="${element.friday=='on'}">checked</c:when> <c:otherwise></c:otherwise></c:choose>>Friday    
                         </div>
                         <div class="col-lg-2">
                          <input type=checkbox name=saturday id="saturday" <c:choose><c:when test="${element.saturday=='on'}">checked</c:when> <c:otherwise></c:otherwise></c:choose>>Saturday  <br>
</div></div>
<div class="container">
<center><label>Timings</label> </center>
 
<div class="col-lg-1"> 
<textarea name=sunday_time id="sunday_time" placeholder="Available Time On Sunday" class="form-control" rows=3 cols=10 >${element.sunday_time}</textarea>
</div>                                  <div class="col-lg-2">
                                        <textarea name=monday_time id="monday_time" class="form-control" placeholder="Available Time On Monday" rows=3 cols=10 >${element.monday_time}</textarea>
                                       </div>
                                       <div class="col-lg-2">
                                        <textarea name=tuesday_time id="tuesday_time" class="form-control" placeholder="Available Time On Tuesday" rows=3 cols=10 >${element.tuesday_time}</textarea>
                                       </div>
                                       <div class="col-lg-2">
                                        <textarea name=wednesday_time id="wednesday_time" class="form-control" placeholder="Available Time On wednesday" rows=3 cols=10 >${element.wednesday_time}</textarea>
                                       </div>
                                       <div class="col-lg-2">
                                        <textarea name=thursday_time id="thursday_time" class="form-control" placeholder="Available Time On Thursday" rows=3 cols=10 >${element.thursday_time}</textarea>
                                       </div>
                                       <div class="col-lg-1">
                                        <textarea name=friday_time id="friday_time" class="form-control" placeholder="Available Time On Friday" rows=3 cols=10 >${element.friday_time}</textarea>
                                       </div>
                                       <div class="col-lg-2">
                                        <textarea name=saturday_time id="saturday_time" class="form-control" placeholder="Available Time On Saturday" rows=3 cols=10 >${element.saturday_time}</textarea>
</div></div><br>
<div class="container">      
   
<input type=submit value="Update" class="btn btn-default btn-block btn-primary"><br>
</div>
</c:forEach>

</form>

</body>
</html>
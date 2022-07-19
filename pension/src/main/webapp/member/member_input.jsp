 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     
    
 <c:import url="../top.jsp"/>
 <style>
   #section {
     width:1100px;
     height:500px;
     margin:auto;
   }
   #err , #perr {
     font-size:12px;
   }
 </style>
  <!--
    1. 회원 아이디 조회 
    2. 비밀번호의 일치여부
    3. 필수 입력 (아이디,이름,전화번호)
  -->
  <script>
  var uchk=0; // 아이디의 중복체크 여부를 확인하는 변수  0이면 확인X, 1이면 확인하였다.
  function userid_check(userid)
  {
	  if(userid.trim()=="")
	  {
		  alert("아이디는 빈값을 사용할 수 없습니다");
		  uchk=0;  // 사용가능한 아이디에서 지웠을때 
		  document.getElementById("err").innerText=""; 
	  }
	  else
	  {
		  var chk=new XMLHttpRequest();  
		  	chk.open("get","userid_check.jsp?userid="+userid);
		  	chk.send();
		  	
		  	chk.onreadystatechange=function()
		  	{
		  		if(chk.readyState==4)
		  		{  // 사용가능하면 0, 사용불가능 1
		  			if(chk.responseText.trim()=="0")
		  			{
		  				document.getElementById("err").innerText="사용 가능한 아이디";
		  				document.getElementById("err").style.color="blue";
		  				uchk=1;
		  				
		  			}
		  			else
		  			{
		  				document.getElementById("err").innerText="사용 불가능한 아이디";
		  				document.getElementById("err").style.color="red";
		  				uchk=0;
		  			}
		  		}
		  	}
	  }	  
  	
  }
  var pchk=0; // 비밀번호의 동일 여부를 확인하는 변수
  function pwd_check(pwd2)
  {
	  var pwd=document.pkc.pwd.value;
	  if(pwd==pwd2)
	  {
		  document.getElementById("perr").innerText="비밀번호가 일치합니다";
		  document.getElementById("perr").style.color="blue";
		  pchk=1;
	  }	  
	  else
	  {
		  document.getElementById("perr").innerText="비밀번호가 일치하지 않습니다";
		  document.getElementById("perr").style.color="red";
		  pchk=0;
	  }	  
  }
  function check(my)
  {
	  // 아이디, 비번, 이름, 전화번호
	  if(uchk==0)
	  {
		  alert("아이디 중복체크를 하세요");
		  return false;
	  }	  
	  else if(pchk==0)
		   {
		      alert("비밀번호 체크를 하세요");
		      return false;
		   }
	       else if(my.name.value.trim()=="")
	            {
	    	       alert("이름을 적으세요");
	    	       return false;
	            }	   
	            else if(my.phone.value.trim()=="")
	            	 {
	            	    alert("전화번호를 적으세요");
	            	    return false;
	            	 }
	                 else
	                    return true;
  }
  </script>
  <div id="section">
   <form name="pkc" method="post" action="member_input_ok.jsp" onsubmit="return check(this)">
     <table width="400" align="center">
       <caption> <h2> 회원 가입 </h2> </caption>
       <tr>
         <td> 아이디 </td>
         <td> 
            <input type="text" name="userid" onblur="userid_check(this.value)"> <br> 
            <span id="err"></span> 
         </td>
       </tr>
       <tr>
         <td> 이 름 </td>
         <td> <input type="text" name="name"> </td>
       </tr>
       <tr>
         <td> 비밀번호 </td>
         <td> <input type="password" name="pwd"> </td>
       </tr>
       <tr>
         <td> 비밀번호확인 </td>
         <td>
            <input type="password" name="pwd2" onkeyup="pwd_check(this.value)"> 
            <br> <span id="perr"></span>
         </td>
       </tr>
       <tr>
         <td> 이메일 </td>
         <td> <input type="text" name="email"> </td>
       </tr>
       <tr>
         <td> 전화번호 </td>
         <td> <input type="text" name="phone"> </td>
       </tr>
       <tr>
         <td colspan="2" align="center"> <input type="submit" value="가입하기"> </inptu>
       </tr>
     </table>
    </form>
  </div>
 
<c:import url="../bottom.jsp"/>









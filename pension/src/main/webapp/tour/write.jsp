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
</style>
 <script>
  var size=1; // id="outer"안에 있는 type='file'의 갯수 , name을 서로 다르게 하기 위해 사용
  function add_file()
  {
	  size++;
	  var outer=document.getElementById("outer");
	  var inner="<p class='fname'> <span class='img'></span> <input onchange='setview("+(size-1)+")'  type='file' name='fname"+size+"'> </p>";
	  outer.innerHTML=outer.innerHTML+inner;
	  //alert(inner);
  }
  function del_file()
  {
	  if(size>1)
	  {
	    document.getElementsByClassName("fname")[size-1].remove(); 
	    size--;
	  }
  }
  function setview(n)
  {
	  document.getElementsByClassName("img")[n].innerHTML="";
	  for (var image of event.target.files)
	  {
		  var reader = new FileReader(); 
		  reader.onload=function()
		  {
			  var img = document.createElement("img"); 

	            img.setAttribute("src", event.target.result); 
	            img.setAttribute("width","40");
	            img.setAttribute("valign","middle");
	            
	            document.getElementsByClassName("img")[n].appendChild(img);  //새로 선택한 이미지 div에 출력

		  };
		   
	 	   reader.readAsDataURL(image); 
	  }	  
  }
 </script>
  <div id="section">
   <form method="post" action="write_ok.jsp" enctype="multipart/form-data">
    <table width="500" align="center">
      <caption> <h2> 여 행 후 기 작 성</h2> </caption>
      <tr>
        <td> 제 목 </td>
        <td> <input type="text" name="title" size="40"> </td>
      </tr>
      <tr>
        <td> 내 용 </td>
        <td> <textarea cols="40" rows="6" name="content"></textarea> </td>
      </tr>
      <tr>
        <td> 파 일 </td>
        <td id="outer"> 
           <input type="button" onclick="add_file()" value="추가">
           <input type="button" onclick="del_file()" value="삭제">
           <p class="fname"><span class="img"></span> <input type="file" name="fname1" onchange="setview(0)" > </p> 
        </td>
      </tr>
      <tr>
        <td colspan="2" align="center"> 
          <input type="submit" value="저장">
        </td>
      </tr>
    </table>
   </form>
  </div>
<c:import url="../bottom.jsp"/>










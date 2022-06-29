<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script>
   function cal(n)
   {
	   var kor=parseInt(document.pkc.kor[n].value);
	   var eng=parseInt(document.pkc.eng[n].value);
	   var mat=parseInt(document.pkc.mat[n].value);
	   var sci=parseInt(document.pkc.sci[n].value);
	   
	   var tot=kor+eng+mat+sci;
	   
	   document.pkc.result[n].value=tot;
   }
   function average(sub)
   {
	   var n=document.pkc.kor.length;
	   //alert(n);
	   var tot=0;
	   for(i=0;i<n;i++)
	   {
		   tot=tot+parseInt(eval("document.pkc."+sub+"[i].value"));
		                 // sub=>kor  : document.pkc.kor[i].value;
		                 // sub=>eng  : document.pkc.eng[i].value;
		                 // sub=>mat  : document.pkc.mat[i].value;
		                 // sub=>sci  : document.pkc.sci[i].value;
	   }
       var avg=Math.floor(tot/n);
	   eval("document.pkc."+sub+"_result.value="+avg);
	   // sub=>kor  : document.pkc.kor_result.value=avg;
       // sub=>eng  : document.pkc.eng_result.value=avg;
       // sub=>mat  : document.pkc.mat_result.value=avg;
       // sub=>sci  : document.pkc.sci_result.value=avg;
   }
 </script>
</head>
<body> <!-- 0614/form_ex3.jsp -->
  <form name="pkc">
    <table width="500" align="center">
      <tr>
        <td> 이름 </td>
        <td> 국어 </td>
        <td> 영어 </td>
        <td> 수학 </td>
        <td> 과학 </td>
        <td> 클릭 </td>
        <td> 총점 </td>
      </tr> 
      <tr>
        <td> 홍길동 </td>
        <td> <input type="text" size="3" name="kor"> </td>
        <td> <input type="text" size="3" name="eng"> </td>
        <td> <input type="text" size="3" name="mat"> </td>
        <td> <input type="text" size="3" name="sci"> </td>
        <td> <input type="button" value="계산" onclick="cal(0)"> </td>
        <td> <input type="text" size="4" name="result"> </td>
      </tr> 
      <tr>
        <td> 슈퍼맨 </td>
        <td> <input type="text" size="3" name="kor"> </td>
        <td> <input type="text" size="3" name="eng"> </td>
        <td> <input type="text" size="3" name="mat"> </td>
        <td> <input type="text" size="3" name="sci"> </td>
        <td> <input type="button" value="계산" onclick="cal(1)"> </td>
        <td> <input type="text" size="4" name="result"> </td>
      </tr>
      <tr>
        <td> 배트맨 </td>
        <td> <input type="text" size="3" name="kor"> </td>
        <td> <input type="text" size="3" name="eng"> </td>
        <td> <input type="text" size="3" name="mat"> </td>
        <td> <input type="text" size="3" name="sci"> </td>
        <td> <input type="button" value="계산" onclick="cal(2)"> </td>
        <td> <input type="text" size="4" name="result"> </td>
      </tr>  
      <tr>
        <td> &nbsp; </td>
        <td> <input type="button" value="국어평균" onclick="average('kor')"> </td>
        <td> <input type="button" value="영어평균" onclick="average('eng')"> </td>
        <td> <input type="button" value="수학평균" onclick="average('mat')"> </td>
        <td> <input type="button" value="과학평균" onclick="average('sci')"> </td>
        <td> &nbsp; </td>
        <td> &nbsp; </td>
      </tr>
      <tr>
        <td> &nbsp; </td>
        <td> <input type="text" size="3" name="kor_result"> </td>
        <td> <input type="text" size="3" name="eng_result"> </td>
        <td> <input type="text" size="3" name="mat_result"> </td>
        <td> <input type="text" size="3" name="sci_result"> </td>
        <td> &nbsp; </td>
        <td> &nbsp; </td>
      </tr>
    </table>
  </form>
</body>
</html>
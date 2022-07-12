<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <script>
    // 자바스크립트에서 checkbox에 접근할 방법을 정해야 된다..
    function sub_change(my) // 호출되면 하위 체크박스의 해제,체크가 된다..
    {
    	var len=document.pkc.sub.length;
    	// alert(len);
    	if(my.checked)
    	{
       	  // 체크하기
    	  for(i=0;i<len;i++)
    	    document.pkc.sub[i].checked=true;
    	}
    	else
    	{	
    	  // 해제하기
    	  for(i=0;i<len;i++)
    	  document.pkc.sub[i].checked=false;
    	}
    	
    	price_total();
    }
    function main_change()
    {
    	var chk=0;
    	var len=document.pkc.sub.length;
    	
    	for(i=0;i<len;i++)
    	{	
    	  if(document.pkc.sub[i].checked)
    	  {	  
    		   chk++;
    	  }
    	}
    	
    	if(chk==len)
    	{ // 하위 체크박스가 전부 선택
    	  document.pkc.main.checked=true;
    	}
    	else
    	{ // 하나라도 해제되어 있다..
    	  document.pkc.main.checked=false;
    	}
    	
    	price_total();
    }
    // sub체크박스의 체크유무를 이용한 가격의 합 구하기
    var price=[1000,1500,2300,3400];
    function price_total()
    {
    	var total=0;
    	var len=document.pkc.sub.length;
        for(i=0;i<len;i++)
        {
    	  if(document.pkc.sub[i].checked)
    		total=total+price[i];
        }	
    	document.getElementById("total").innerText=new Intl.NumberFormat().format(total)+"원";	
    }
  </script>
</head>
<body> 
   
  <form name="pkc">
   <input type="checkbox" name="main" onclick="sub_change(this)"> 전체선택 <p>
   <hr>
   <input type="checkbox" name="sub" onclick="main_change()"> 첫번째 품목 1,000원 <p>
   <input type="checkbox" name="sub" onclick="main_change()"> 두번째 품목 1,500원 <p>
   <input type="checkbox" name="sub" onclick="main_change()"> 세번째 품목 2,300원 <p>
   <input type="checkbox" name="sub" onclick="main_change()"> 네번째 품목 3,400원 <p>
  </form>
  <div id="total">0원</div>
</body>
</html>
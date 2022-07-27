<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
   #main {
      width:200px;
      height:40px;
      border:1px solid red;
      margin-top:100px;
      margin-left:100px;
       
   }
   #sub {
      width:200px;
      height:330px;
      border:1px solid blue;
      padding-left:0px;
      margin-top:0px;
   }
   #sub li {
      list-style-type:none;
      width:200px;
      height:40px;
      display:flex;
      align-items:center; /* 상하정렬   flex-start, center, flex-end  */
      justify-content:center; /* 좌우정렬 */
   }
 </style>
 <script>
    window.onload=function()
    {
    	var name=["<li> 속초 해수욕장 </li>","<li> 장사 해수욕장 </li>","<li> 망상 해수욕장 </li>","<li> 울진 해수욕장 </li>",
    		"<li> 고래불 해수욕장 </li>","<li> 진하 해수욕장 </li>","<li> 일광 해수욕장 </li>","<li> 해운대 해수욕장</li>"];
    	var h=0;
    	setInterval(function()
    	{
    		ss=setInterval(function()
    		{
    			h--;
    			document.getElementById("sub").style.marginTop=h+"px";
    			if(h==-40)
    			{
    				clearInterval(ss);
    				var source="";
    				var first=name[0];
    				name=name.slice(1);
    				 
    				name.push(first);
    				for(i=0;i<name.length;i++)
    				{
    					source=source+name[i]+" ";
    				}	
    				h=0;
    				document.getElementById("sub").style.marginTop="0px";
    				document.getElementById("sub").innerHTML=source;
    			}	
    		},10);
    	},3000);
    };
 </script>
</head>
<body>
   <div id="main">
      <ul id="sub">
        <li> 속초 해수욕장 </li>
        <li> 장사 해수욕장 </li>
        <li> 망상 해수욕장 </li>
        <li> 울진 해수욕장 </li>
        <li> 고래불 해수욕장 </li>
        <li> 진하 해수욕장 </li>
        <li> 일광 해수욕장 </li>
        <li> 해운대 해수욕장</li>
      </ul>
   </div>
</body>
</html>
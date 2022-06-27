<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
function juso_search()  // 우편번호 버튼 클릭시 호출 함수명
{
  new daum.Postcode({
      oncomplete: function(data) {
          if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
              addr = data.roadAddress;
          } else { // 사용자가 지번 주소를 선택했을 경우(J)
              addr = data.jibunAddress;
          }

          // 우편번호와 주소 정보를 해당 필드에 넣는다.
          document.pkc.zip.value = data.zonecode; // 우편번호
          document.pkc.juso1.value = addr;  // 주소
          // 커서를 상세주소 필드로 이동한다.
          document.pkc.juso2.focus();
      }
  }).open();
}
function pwd_check()  // 두번째 비밀번호를 입력할때마다 첫번째와 두번째를 비교하여 같으면 같다, 틀리면 틀리다
{
	var pwd=document.pkc.pwd.value;
	var pwd2=document.pkc.pwd2.value;
	if(pwd==pwd2) // 조건에 따라 id="aa"인 곳에 innerText로 값을 부여
    {
		document.getElementById("aa").innerText="비밀번호가 일치합니다";
		document.getElementById("aa").style.color="blue";
    }
	else
	{
		document.getElementById("aa").innerText="비밀번호가 불일치합니다";
		document.getElementById("aa").style.color="red";
	}
}
 function userid_check() // 아이디를 서버로 보내어 체크
 {
	 var userid=document.pkc.userid.value;
	 //location="userid_check.jsp?userid="+userid;
	 // ajax를 통해 현재문서는 브라우저에 보이는 상태에서 백그라운드 작업
	 var chk=new XMLHttpRequest();
	 chk.open("get","userid_check.jsp?userid="+userid); // 어떤문서로 어떻게 갈것이냐
	 chk.send();
	 
	 chk.onreadystatechange=function() 
	 {
		 if(chk.readyState==4) // 호출한 jsp가 모든 동작을 완료
	     {
			 // 완료후에 출력내용을 가져온다..
			 var num=chk.responseText.trim();
			 // num은 0아니면 1입니다..
			 if(num==0)
			 {
				 document.getElementById("uc").innerText="사용 가능한 아이디";
				 document.getElementById("uc").style.color="blue";
				 ck=2;
			 }	 
			 else
			 {
				 document.getElementById("uc").innerText="사용 불가능한 아이디";
				 document.getElementById("uc").style.color="red";
				 ck=1;
			 }	 
	     }
	 }
 }
 var ck=1;
 function check()
 {
	 if(ck==1)
	 {
		 alert("중복체크를 하세요");
		 return false;
	 }	 
	 else
		 return true;
 }
</script>
<style>
  #aa {
    font-size:10px;
  }
  #uc {
    font-size:10px;
  }
</style>
</head>
<body> <!-- member_input.jsp => 회원정보 입력폼 -->
  <form name="pkc" method="post" action="member_input_ok.jsp" onsubmit="return check()">
   <table width="500" align="center">
     <caption> <h2> 회원 가입 </h2></caption>
     <tr>
       <td> 사용자아이디 </td>
       <td> <input type="text" name="userid" size="6"> 
            <input type="button" value="중복체크" onclick="userid_check()">
            <span id="uc"></span>
       </td>
     </tr>
     <tr>
       <td> 이 름 </td>
       <td> <input type="text" name="name" size="6"> </td>
     </tr>
     <tr>
       <td> 비밀번호 </td>
       <td> <input type="password" name="pwd" size="6"> </td>
     </tr>
     <tr>
       <td> 비밀번호확인 </td>
       <td> <input type="password" name="pwd2" size="6" onkeyup="pwd_check()"> <span id="aa"></span> </td>
     </tr>
     <tr>
       <td> 전화번호 </td>
       <td> <input type="text" name="phone" size="10"> </td>
     </tr>
     <tr>
       <td> 우편번호 </td>
       <td> 
            <input type="text" name="zip" size="4"> 
            <input type="button" value="찾기" onclick="juso_search()">
       </td>
     </tr>
     <tr>
       <td> 주 소 </td>
       <td> <input type="text" name="juso1" size="40"> </td>
     </tr>
     <tr>
       <td> 상세주소 </td>
       <td> <input type="text" name="juso2" size="40"> </td>
     </tr>
     <tr>
       <td colspan="2" align="center"> <input type="submit" value="회원가입"> </td>
     </tr>
   </table>
  </form>
</body>
</html>











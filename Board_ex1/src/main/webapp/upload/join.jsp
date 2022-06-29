<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>    
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="css/ex01.css">
<meta charset="UTF-8">
<title>회원가입</title>
<script>
	function pwchk()
	{
		
		if(document.joinchk.pwd.value == "" &&  document.joinchk.pwd_ok.value == "")
			{
				document.getElementById("pw_ck").innerText="";					
			}
		else if(document.joinchk.pwd.value == document.joinchk.pwd_ok.value) 
			{
				document.getElementById("pw_ck").innerText="비밀번호 OK";		
				document.getElementById("pw_ck").style.color="blue";		
				document.getElementById("chk_fi").value = "1";	
			}
		else
			{
				document.getElementById("pw_ck").innerText="비밀번호를 확인해주세요.";
				document.getElementById("chk_fi").value = "3";	
			}
	}
	
	function userid_chk()
	{
		var userid = document.joinchk.userid.value;
		var chk = new XMLHttpRequest();
		chk.open("get","userid_chk.jsp?userid="+userid);
		chk.send();
		
		chk.onreadystatechange=function()
		{
			if(chk.readyState==4)
				{
					 var num=chk.responseText.trim();
										
					if(num==0)
					{
						document.getElementById("id_ck").innerText="사용가능합니다.";
						document.getElementById("id_ck").style.color="blue";		
						document.getElementById("chk_fi").value = "1";		
					}
					else
					{
				  		document.getElementById("id_ck").innerText="중복입니다.";
				  		document.getElementById("id_ck").style.color="red";
				  		document.getElementById("chk_fi").value = "2";		
					}
				}
			
		}
	}
	function chk_final()
	{
		
		if(document.getElementById("chk_fi").value == 2)
			{
				alert("아이디 중복확인을 해주세요.");
				return false;
			}
		else if(document.getElementById("chk_fi").value == 3)
		{
			alert("비밀번호를 확인해주세요.");
			return false;
		}
		else if(document.getElementById("chk_fi").value == "")
			{
				alert("입력해주세요.");
				return false;
			}
		else if(document.getElementById("name_re").value == "")
			{
				alert("닉네임을 입력해주세요.");
				return false;
			}
		else if(document.getElementById("phone_re").value == "")
		{
			alert("전화번호를 입력해주세요.");
			return false;
		}
		else if(document.getElementById("address01_re").value == "" || document.getElementById("address_re").value == "" || document.getElementById("psad").value == "")
				{
					alert("주소를 입력해주세요.");
					return false;
				}
		else
			{
			
				return true;
			}
	}
	function back()
	{
		location.href="main.jsp";
	}
		
	
</script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script> // 카카오주소
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
          document.joinchk.postad.value = data.zonecode; // 우편번호
          document.joinchk.address.value = addr;  // 주소
          // 커서를 상세주소 필드로 이동한다.
          document.joinchk.address_01.focus();
      }
  }).open();
}
</script>

</head>
<body>

<div id="joinmain">
<div id="m1"> 회원가입</div>
<form name="joinchk" method="post" action="joinaction.jsp" onsubmit="return chk_final()">
<input type="text" name="userid"  size="20" placeholder="ID"  onblur="userid_chk()" > <span id="id_ck"> </span> <p>
<input type="text" name="name" id="name_re" size="20" placeholder="닉네임"><p>
<input type="password" name="pwd" size="20" placeholder="PASSWORD"><p>
<input type="password" name="pwd_ok" onkeyup="pwchk()" size="20" placeholder="PASSWORD 확인"> <span id="pw_ck"> </span>  <p>
<input type="text" name="phone" id="phone_re" size="20" placeholder="전화번호"><p>
<input type="text" name="postad" size="15" placeholder="우편번호" id="psad"> &nbsp;<input type="button" value="찾기" id="psad_scr" onclick="juso_search()"><p>
<input type="text" name="address" id= "address_re" size="20" placeholder="주소"><p>
<input type="text" name="address_01"  id= "address01_re"  size="20" placeholder="상세주소"><p>
<input type="button" value="뒤로가기" onclick="back()" style="margin-left:15%">
<input type="hidden" id="chk_fi" value="">
<input type="submit" value="화원가입"  ><p>
</form>
</div>
</body>
</html>
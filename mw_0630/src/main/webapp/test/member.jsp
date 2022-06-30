<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

	<script>
	
		function check(my){
			
			var pwd = my.pwd.value;
			var pwd2 = my.pwd2.value;
			
			if(pwd!=pwd2){
				
				alert("비밀번호가 틀렸습니다")
				
				document.getElementById("aa").innerText="비밀번호가 틀렸습니다";
				document.getElementById("aa").style.color="red";
				my.pwd2.focus();
				return false;
			}
			else{
				document.getElementById("aa").innerText="비밀번호가 확인되었습니다";
				document.getElementById("aa").style.color="blue";
				return true;
			}
		}
		function key_pwd(my){
			
			var pwd = my.pwd.value;
			var pwd2 = my.pwd2.value;
			
			if(pwd != pwd2){
				document.getElementById("aa").innerText="비밀번호가 틀렸습니다";
				document.getElementById("aa").style.color="red";
			}
			else{
				document.getElementById("aa").innerText="비밀번호가 확인되었습니다";
				document.getElementById("aa").style.color="blue";
			}
			
			
		}
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
	
	</script>
</head>
<body style="text-align:center;">
<h1>test</h1>

	<form name="pkc" method="post" action="member.jsp" onsubmit="return check(this)">
	아이디<input type="text" name="id" placeholder="아이디" size="15"> <input type="button" onclick="search_userid()" value="중복조회"><p>
	이름<input type="text" name="name" placeholder="이름"  size="15"><p>
	이메일<input type="text" name="mail" placeholder="이메일주소"  size="15"><p>
	비밀번호<input type="password" name="pwd"	placeholder="비밀번호"  size="15"><p>
	비밀번호확인<input type="password" name="pwd2"	placeholder="비밀번호확인" onkeyup="key_pwd(this.form)" size="8"><span id="aa" style="font-size:4px"></span><p>
	우편번호<input type="text" name="zip"  size="6"><input type="button" onclick="juso_search()" value="찾기"><p>
	주소<input type="text" name="juso1"  size="30"><p>
	상세주소<input type="text" name="juso2" size="30"><p>
	<input type="submit"  value="비밀번호체크확인용">
	</form>

</body>
</html>
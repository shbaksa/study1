<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- EL 표현식의 연산 -->
${"안녕하세요"} <p>
안녕하세요 <p>
<%
    request.setAttribute("kor", 90);
    request.setAttribute("eng", 80);
%>
<!-- 표현식으로 출력 -->
국어 : ${kor} <p>
영어 : ${eng} <p>

<!-- 표현식에서 산술연산 -->
국어+영어 : ${kor+eng} <p>
국어-영어 : ${kor-eng} <p>

<!-- 표현식에서 비교연산 -->
국어 > 영어 : ${kor>eng} <p>
국어 == 영어 : ${kor == eng} <p>
국어 < 영어 : ${kor<eng} <p>
국어 > 영어 : ${kor gt eng} <p>
국어 == 영어 : ${kor eq eng} <p>
국어 < 영어 : ${kor lt eng} <p>
국어 != 영어 :  ${kor ne eng} <p>

<!-- 논리연산자 -->
${true && true} <p>
${true and false} <p>
${true || false} <p>
${true or false} <p>

<%
   request.setAttribute("num","");
%>
<!-- null 과 빈값 -->
empty num : ${empty num} <p>
empty imsi : ${empty imsi } <p>
${num == null} <p>
${imsi == null} <p>

<!-- 삼항연산 -->
${kor>eng ? "국어가 크다":"영어가 크다"}







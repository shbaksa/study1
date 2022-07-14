<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    <!-- EL 표현식의 연산 -->
    
    <%
    	request.setAttribute("kor", 90);
    	request.setAttribute("eng", 80);
    	request.setAttribute("mat", 100);
    %>
    
    <!-- 표현식으로 출력 -->
    
    국어 : ${kor} <p>
    영어 : ${eng} <p>
    수학 : ${mat} <p>
    
    <hr>
    
    <!-- 표현식에서 산술연산 -->
    
    합 : ${hap=kor+eng+mat} <p>
    	${mat-eng } <p>
    	${hap/3 } <p>
    	${hap} <p>
    	${hi="안녕하세요"} <p>
    	${hi} <p>
    	${"hi" }<p>
    	
    	<hr>
    	
    <!-- 표현식에서 비교연산 -->
    
    국어 > 영어 : ${kor>eng} <p>
    영어 > 수학 : ${eng>mat} <p>
    
    국어 > 영어 : ${kor gt eng } <p>
    국어 == 영어 : ${kor eq eng+10 } ${eng } <p>
    국어 < 영어 : ${kor lt eng } <p>
    국어 != 영어 : ${kor ne eng } <p>
    
    <hr>
    <!-- 논리연산자 -->
    
    ${true && true } <p>
    ${true && false } <p>
    ${true || false } <p>
    ${false && false } <p>
    ${false || true } <p>
    
    <hr>
    <%
    	request.setAttribute("num", "");
    %>
    <!-- null 과 빈값 -->
    empty num : ${empty num} <p>
    empty imsi : ${empty imsi} <p>
    ${num == null } <p>
    ${imsi == null } <p>
    
    <hr>
    
    <!-- 삼향연산 -->
    ${kor>eng ? "국어가 크다":"영어가 크다" } <p>
    ${kor>eng+20 ? "국어가 크다":"영어가 크다" } <p>
    ${kor<eng ? "국어가 크다":"영어가 크다" } <p>
    
    
    
    
    
    <hr><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
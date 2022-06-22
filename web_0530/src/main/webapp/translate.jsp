<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <style>
    div {
       position:absolute;
       width:100px;
       height:100px;
       background:red;
    }
    #aa {
       transform:translate(0px,0px);
    }
    #bb {
       transform:translate(300px,300px);
    }
    #cc {
       transform:translateX(150px);
    }
    #dd {
       transform:translateY(400px);
    }
  </style>
</head>
<body>  <!-- translate.jsp -->
  <div id="aa">translate</div> <p>
  <div id="bb">translate</div> <p>
  <div id="cc">translate</div> <p>
  <div id="dd">translate</div> <p>
</body>
</html>
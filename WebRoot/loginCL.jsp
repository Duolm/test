<%@ page language="java" import="java.util.*" contentType="text/html; utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <title>Jsp实验2</title>
  </head>

<body>
	<script type="text/javascript">
	<%!
	boolean vUser(String name,String pwd)		//创建一个函数，用于验证输入的用户名和密码是否正确，如果有需求，可以连接数据库
	{
		if(name.equals("admin")&&pwd.equals("123")) //如果相等返回真
		{
			return true;
		}
		else 
		{
			return false;							//不然返回假
		}
	}
	 %>
	 
	 <%
	 	
	 	String name=request.getParameter("username");		//获取上一个页面输入的用户名
	 	String pwd=request.getParameter("password");		//获取密码
	 	
	 	if(name.equals("")||pwd.equals(""))				//如果为空，则输出一句话在下方
	 	{
	 		out.println("密码不能为空！");
	 		return;
	 	}
	 	if(!vUser(name,pwd))							//调用方法，如果为假则输出一句话
	 	{
	 	out.println("用户或者密码不正确！");
	 		return;
	 	}
	 response.sendRedirect("success.jsp?name="+name+"&pwd="+pwd);	//不然就调用方法，跳转页面，并传递参数
	  %>


    /*if(user_name=="admin"){
    	if(user_pwd="1234"){
    		form.submit();
       		 window.open("http://localhost:8082/JspProject/success.jsp");
    		
    	}
    	else{
    		 	alert("用户密码错误");
    	        form.password.focus();
    	        return;
    	 }
        
    }
    else{
    	alert("用户名不存在！");
        form.username.focus();
        return;
    }*/
  
}
	
	

	</script>
  </body>

</html>

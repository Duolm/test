<%@ tag language="java" pageEncoding="utf-8" %>
<h3>这是一个Tag文件，负责计算圆形的面积。</h3>
<%@ attribute name="radius" required="true" %>
  <%!   public String getArea(double a) {
           if(a>0) { 
             double area=Math.PI*a*a;
             return "<BR>圆形的面积:"+area;
          }
          else{ 
             return("<BR>"+a+"不能构成一个圆形,无法计算面积");
          }
       }
  %>
  <%  out.println("<BR>JSP页面传递过来的半径："+radius);
       double a=Double.parseDouble(radius);       
       out.println(getArea(a));
  %>

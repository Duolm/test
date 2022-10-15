package lk;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;
public class Rect extends SimpleTagSupport {
	private String Length;
	private String Width;

	public void doTag() throws JspException,IOException{

	getJspContext().getOut().write("Length="+this.Length+"," +
	"Width="+this.Width+getArea(Double.parseDouble(Length),Double.parseDouble(Width)));
	}

	public void setLength(String Length)
	{
		this.Length=Length;
	}

	public void setWidth(String Width)
	{
		this.Width=Width;
	}

	public String getArea(double a,double b)
		{
		if(a>0&&b>0)
		{

			double area=a*b;
			return "<br>长方形的面积是："+area;

		}else{
			
			return("<br>"+a+","+b+","+"不能构成一个长方形，无法计算面积");
		}

		}

	}

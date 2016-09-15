<%@ page language="java" import="java.util.*,java.sql.*"
	pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>My JSP 'UserPage_01.jsp' starting page</title>
</head>

<body>
	<%
    	int dispage = 1;//当前页码默认为1
    	String pages = request.getParameter("dispage");
    	if(pages == null){
    		pages = "1";
    	}
    	try{
    		dispage = Integer.parseInt(pages);
    	}catch(Exception e){
    		dispage = 1;
    	}
    	
    	String url = "jdbc:mysql://localhost:3306/mybatis";
    	String user1 = "root";
    	String password1 = "123456";
    	Connection con = null;
    	PreparedStatement pstmt = null;
    	ResultSet rs = null;
    	Statement sql;
    	try{
    		Class.forName("com.mysql.jdbc.Driver");//加载jdbc驱动
    		con = DriverManager.getConnection(url,user1,password1);
    	}catch(ClassNotFoundException e){
    		out.print("找不到驱动类");
    	}catch(SQLException e){
    		out.print("连接MySQL数据库失败");
    	}
    	try{
    		sql = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
    		rs = sql.executeQuery("select * from book");
    		int countRecord = 0;//总行数    
    		int countPageRecord = 5;   //每页显示多少行（每页有5条记录）要设置每页记录条数就更改这个变量的值
    		int countPage = 0;//总页数
    	
    		//得到记录的总条数（行数）
    		rs.last();//public void last() 将游标移到结果集的最后一行。 
    		countRecord = rs.getRow();//public int getRow() 得到当前游标所指向行的行号，行号从1开始，如果结果集没有行，返回0。 
    		//得到总页数
    		if(countRecord % countPageRecord == 0){
    			countPage = countRecord / countPageRecord;
    		}else{
    			countPage = countRecord / countPageRecord + 1;
    		}
    		//把记录指针移至到当前页第一条记录之前
    		if((dispage - 1) * countPageRecord == 0){
    			rs.beforeFirst();//public void beforeFirst 将游标移动到结果集的初始位置，即在第一行之前。
    		}else{
    			rs.absolute((dispage - 1) * countPageRecord);//public boolean absolute(int row) 将游标移到参数row指定的行号。
    		}
    	
    		out.print("<table border = '1'>");
    		out.print("<tr><td colspan = 3 align = center>用户数据</td></tr>");
    		out.print("<tr>");
    		out.print("<td width = 60>用户ID</td>");
    		out.print("<td width = 60>用户名</td>");
    		out.print("<td width = 60>用户密码</td>");
    		out.print("</tr>");
    		int i = 0;
    		while(rs.next()){
    			out.print("<tr>");
    			out.print("<td>" + rs.getInt(1) + "</td>");
    			out.print("<td>" + rs.getString(2) + "</td>");
    			out.print("<td>" + rs.getString(3) + "</td>");
    			out.print("</tr>");
    			i++;
    			if( i >= countPageRecord){
    				break;
    			}
    		}
    	
    		out.print("<tr><td colspan = 3 align = center>");
    		out.print("共" + countRecord + "条记录，共" + countPage + "页，当前第 " + dispage + "页，每页" + countPageRecord + "条记录，");
    		if(dispage == 1);//当前是首页
    		else{//当前不是首页
    			out.print("<a href=UserPage_01.jsp?dispage=1>首页</a>,");
    			out.print("<a href=UserPage_01.jsp?dispage=" + (dispage - 1) + ">上一页</a>,");    	
    		}
    		if(dispage == countPage);//当前是末页
    		else{//当前不是末页    		
    			out.print("<a href=UserPage_01.jsp?dispage=" + (dispage + 1) + ">下一页</a>,"); 
    			out.print("<a href=UserPage_01.jsp?dispage=" + countPage + ">末页</a>"); 	
    		}
    		out.print("</td></tr>");
    		out.print("</table>");
    		con.close();
    	}catch(Exception e){
    		out.print(e);
    	}
     %>

</body>
</html>

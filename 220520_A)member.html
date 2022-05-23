<%@page import="kr.or.ddit.member.vo.MemberVO"%>
<%@page import="java.util.List"%>
<%@page import="com.ibatis.sqlmap.client.SqlMapClient"%>
<%@page import="kr.or.ddit.ibatis.config.SqlMapClientFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//<%부터 있는것들은 Java이고, 그 외에은 JSON이다.

//요청시 데이터 받아서 CRUD로 처리한다.
// =>SqlClient가 있어야한다. 
SqlMapClient client = SqlMapClientFactory.getSqlMapClient();

List<MemberVO> list = client.queryForList("member.selectAll");

//처리결과로 응답데이터 생성 => jsonObject배열

%>
[
	<%
	for(int i = 0 ; i<list.size(); i++){
		
		MemberVO vo = list.get(i);
		if(i>0) out.print(",");
	%>
		
		{								
			"id"	:	"<%=vo.getMem_id() %>",
			"name"	:	"<%=vo.getMem_name() %>",
			"hp"	:	"<%=vo.getMem_hp() %>",
			"mail"	:	"<%=vo.getMem_mail() %>",
			"addr"	:	"<%=vo.getMem_add1() %> <%=vo.getMem_add2()%>",
			"bir"	:	"<%=vo.getMem_bir() %>"
		}
			
	<%
	}
	%>

]



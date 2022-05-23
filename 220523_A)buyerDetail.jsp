<%@page import="kr.or.ddit.buyer.vo.BuyerVO"%>
<%@page import="java.util.List"%>
<%@page import="kr.or.ddit.ibatis.config.SqlMapClientFactory"%>
<%@page import="com.ibatis.sqlmap.client.SqlMapClient"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
//요청시 데이터 받기
String buyer_id = request.getParameter("id");	//xhr.open('get','buyerDetail.jsp?id<== 이부분을 Parameter로 가져온다. 
//crud처리 -SqlMapClient필요
SqlMapClient client = SqlMapClientFactory.getSqlMapClient();

//mapper 를 통해서 sql문 실행
BuyerVO vo = (BuyerVO)client.queryForObject("buyer.detail", buyer_id);
%>
{
	"id"		:	"<%=vo.getBuyer_id() %>",
	"lgu"		:	"<%=vo.getBuyer_lgu() %>",
	"name"		:	"<%=vo.getBuyer_name() %>",
	"mail"		:	"<%=vo.getBuyer_mail() %>",
	"comtel"	:	"<%=vo.getBuyer_comtel() %>",
	"bank"		:	"<%=vo.getBuyer_bank() %>",
	"bankname"	:	"<%=vo.getBuyer_bankname() %>",
	"bankno"	:	"<%=vo.getBuyer_bankno() %>",
	"add"		:	"<%=vo.getBuyer_add1() %> <%=vo.getBuyer_add2() %>",
	"zip"		:	"<%=vo.getBuyer_zip() %>"
}


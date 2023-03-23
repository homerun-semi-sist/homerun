<%@page import="data.dao.FreeCommentDao"%>
<%@page import="data.dao.TeamDao"%>
<%@page import="java.util.Vector"%>
<%@page import="data.dao.UserDao"%>
<%@page import="data.dto.FreeBoardDto"%>
<%@page import="data.dao.FreeBoardDao"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String category = request.getParameter("category");

	FreeBoardDao fbDao = new FreeBoardDao();
	List<FreeBoardDto> fbList = new Vector<>();

	UserDao uDao = new UserDao();
	TeamDao tDao = new TeamDao();
	FreeCommentDao fcDao = new FreeCommentDao();
	
	JSONArray arr = new JSONArray();
	SimpleDateFormat sdf = new SimpleDateFormat("yy.MM.dd HH:mm");
	
	
	//

	// 페이징 처리		
		int totalCount;
		int totalPage;      // 총 페이지 수 
		int startPage;      // 각 블럭의 시작 페이지
		int endPage;        // 각 블럭의 마지막 페이지
		int start;          // 각 페이지의 시작 번호 
		int perPage = 15;    // 한 페이지에 보여질 글의 개수
		int perBlock = 5;   // 한 블럭당 보여지는 페이지 개수
		int currentPage = Integer.parseInt(request.getParameter("currentPage"));    // 현재 페이지
		int no;
		
		//if(category.equals("all"))
			fbList = fbDao.getFBList(start, perPage);
		//else
		//	fbList = fbDao.getAllFBs_category(start, perPage, category);
		
		// 총 개수 
		totalCount = fbList.size();

		// 총 페이지 개수
		totalPage = totalCount / perPage + (totalCount % perPage == 0 ? 0 : 1);
		  
		// 각 블럭의 시작 페이지 ex) 현재 페이지가 3일 때(start:1, end:5), 6일 때(start:6, end:10)
		startPage = (currentPage - 1) / perBlock * perBlock + 1;
		endPage = startPage + perBlock - 1;
		    
		// 총 페이지가 8일 때(6 ~ 10 -> endPage를 8로 수정해주어야 함)
		if(endPage > totalPage)
			endPage = totalPage;

		// 각 페이지에서 불러올 시작 번호
		start = (currentPage - 1) * perPage;
		
		no = totalCount - (currentPage - 1) * perPage;		
	
	
	//

	for(FreeBoardDto dto : fbList) {
		JSONObject ob = new JSONObject();		
		String nickname = uDao.getUser(dto.getUId()).getNickname();
		String teamLogoImg = tDao.getTeam(dto.getFbCategory()).getTeamLogo();
		
		int fcCnt = fcDao.getAllFCs(dto.getFbNum()).size();
				
		ob.put("fbNum", dto.getFbNum());
		ob.put("fbUId", dto.getUId());
		ob.put("nickname", nickname);
		ob.put("fbCategory", dto.getFbCategory());
		ob.put("fbSubject", dto.getFbSubject());
		ob.put("fbContent", dto.getFbContent());
		ob.put("fbReadCnt", dto.getFbReadCnt());
		ob.put("fbLike", dto.getFbLike());
		ob.put("fbDislike", dto.getFbDislike());
		ob.put("fbWriteday", sdf.format(dto.getFbWriteday()));
		ob.put("fbReport", dto.getFbReport());
		ob.put("teamLogoImg", teamLogoImg);
		ob.put("fcCnt", fcCnt);
		
		ob.put("startPage", startPage);
		ob.put("endPage", endPage);
		ob.put("totalPage", totalPage);
		
		arr.add(ob);
	}
%>

<%=arr.toString() %>
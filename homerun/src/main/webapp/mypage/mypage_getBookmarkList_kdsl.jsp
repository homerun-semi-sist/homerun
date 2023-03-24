<%@page import="java.sql.Timestamp"%>
<%@page import="data.dto.BookMarkDto"%>
<%@page import="data.dao.BookMarkDao"%>
<%@page import="data.dto.ReviewCommentDto"%>
<%@page import="data.dto.FreeCommentDto"%>
<%@page import="data.dao.ReviewCommentDao"%>
<%@page import="data.dto.GameDto"%>
<%@page import="data.dao.GameDao"%>
<%@page import="data.dto.ReviewBoardDto"%>
<%@page import="data.dao.ReviewBoardDao"%>
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
	int currentPage = Integer.parseInt(request.getParameter("currentPage"));
	String uId = request.getParameter("uId");
	
	int perPage = 10;
	int start = (currentPage - 1) * perPage;

	FreeBoardDao fbDao = new FreeBoardDao();
	ReviewBoardDao rbDao = new ReviewBoardDao();
	FreeCommentDao fcDao = new FreeCommentDao();
	ReviewCommentDao rcDao = new ReviewCommentDao();

	BookMarkDao bDao = new BookMarkDao();
	List<BookMarkDto> bList = bDao.getAllmyBMs(start, perPage, uId);
	
	UserDao uDao = new UserDao();
	TeamDao tDao = new TeamDao();

	JSONArray arr = new JSONArray();
	SimpleDateFormat sdf = new SimpleDateFormat("yy.MM.dd");
	
	for(BookMarkDto bDto : bList) {
		JSONObject ob = new JSONObject();		
		
		String num, pUId, nickname, subject, readCnt, like, dislike, board;
		Timestamp writeday;
		int cCnt;
		
		if(bDto.getFbNum() != null) {
			num = bDto.getFbNum();
			board = "자유";
			pUId = fbDao.getFB(bDto.getFbNum()).getUId();
			nickname = uDao.getUser(pUId).getNickname();
			subject = fbDao.getFB(bDto.getFbNum()).getFbSubject();
			readCnt = fbDao.getFB(bDto.getFbNum()).getFbReadCnt();					
			like = fbDao.getFB(bDto.getFbNum()).getFbLike();
			dislike = fbDao.getFB(bDto.getFbNum()).getFbDislike();
			writeday = fbDao.getFB(bDto.getFbNum()).getFbWriteday();
			cCnt = fcDao.getAllFCs(bDto.getFbNum()).size();
		} else {
			num = bDto.getRbNum();
			board = "후기";
			pUId = rbDao.getRB(bDto.getRbNum()).getUId();
			nickname = uDao.getUser(pUId).getNickname();
			subject = rbDao.getRB(bDto.getRbNum()).getRbSubject();
			readCnt = rbDao.getRB(bDto.getRbNum()).getRbReadCnt();					
			like = rbDao.getRB(bDto.getRbNum()).getRbLike();
			dislike = rbDao.getRB(bDto.getRbNum()).getRbDislike();
			writeday = rbDao.getRB(bDto.getRbNum()).getRbWriteday();
			cCnt = rcDao.getAllRCs(bDto.getRbNum()).size();
		}
		
		ob.put("bId", bDto.getbId());
		ob.put("pUId", pUId);
		ob.put("num", num);
		ob.put("bday", sdf.format(bDto.getbDay()));
		
		ob.put("nickname", nickname);
		ob.put("subject", subject);
		ob.put("readCnt", readCnt);
		ob.put("like", like);
		ob.put("dislike", dislike);
		ob.put("writeday", writeday);
		ob.put("cCnt", cCnt);
		ob.put("board", board);
		
		arr.add(ob);
	}
	
%>

<%=arr.toString() %>
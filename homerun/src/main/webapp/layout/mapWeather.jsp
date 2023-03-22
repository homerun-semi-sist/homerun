<%@page import="java.time.LocalTime"%>
<%@ page import="data.dao.TeamDao" %>
<%@ page import="data.dto.TeamDto" %>
<%@page import="org.jsoup.select.Elements"%>
<%@page import="org.jsoup.nodes.Element"%>
<%@page import="org.jsoup.Jsoup"%>
<%@page import="org.jsoup.nodes.Document"%>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
      <!DOCTYPE html>
      <html>

      <head>
        <meta charset="UTF-8">
        <link
          href="https://fonts.googleapis.com/css2?family=Dongle&family=Hi+Melody&family=Jua&family=Nanum+Gothic&family=Noto+Serif+KR&family=Poor+Story&family=Stylish&family=Sunflower&display=swap"
          rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.6.3.js"></script>

        <title>지도에 구단, 날씨 표시</title>

        <style>
        .box {
        position: absolute;
        padding: 10px;
        height: 635px;
        border: 1px solid gray;
        margin: 10px;
        }
        .mapBox {
        border: 0px solid gray;
        	margin-top: 15px;
        }
          .teamBox {
            border: 1px solid gray;
            width: 300px;
            height: 90px;
          }

          .team {
            font-weight: bold;
            text-align: center;
            color: white;
            height: 25px;
            line-height: 25px;
            margin-bottom: 7px;
          }

          .logo {
            float: left;
            margin-left: 5px;
            margin-right: 10px;
            width: 60px;
            height: 50px;
          }
          
          .weather {
	            border: 0px solid gray;
	            margin: 5px;
	            position: absolute;
	        }
	
	        .wBox {
	            width: 350px;
	            height: 245px;
	            text-align: center;
	            background-color: #F9F9F9;
	            border: 1px solid #F9F9F9;
	            border-radius: 20px;
	        }
	
	        .stadium {
	            width: 280px;
	            height: 40px;
	            margin-top: 10px;
	            margin-left: 35px;
	            line-height: 40px;
	            font-size: 14pt;
	            font-weight: bold;
	        }
	
	        .wImg {
	            width: 100px;
	            height: 100px;
	            margin-top: 50px;
	            margin-left: 70px;
	        }
	
	        .tem_text {
	            width: 150px;
	            height: 100px;
	            margin-top: 50px;
	            margin-left: 145px;
	            line-height: 100px;
	            font-weight: bold;
	            font-size: 45pt;
	            text-align: left;
	        }
	
	        .tem_info {
	            width: 80px;
	            height: 60px;
	            margin-top: 170px;
	            margin-left: 6px;
	            line-height: 60px;
	            border: 1px solid #8DB596;
	            border-radius: 10px;
	            background-color: #CFE5CF;
	            color: #73A9AD;
	            font-size: 10pt;
	            font-weight: bold;
	        }
	
	        .dust {
	            width: 80px;
	            height: 60px;
	            margin-top: 170px;
	            margin-left: 91px;
	            border: 1px solid #EFB08C;
	            border-radius: 10px;
	            background-color: #FAF1E6;
	            font-size: 10pt;
	            padding-top: 10px;
	        }
	
	        .humidity {
	            width: 80px;
	            height: 60px;
	            margin-top: 170px;
	            margin-left: 176px;
	            border: 1px solid #748DA6;
	            border-radius: 10px;
	            background-color: #DAEAF1;
	            font-size: 10pt;
	            padding-top: 10px;
	        }
	
	        .feel{
	            width: 80px;
	            height: 60px;
	            margin-top: 170px;
	            margin-left: 261px;
	            border: 1px solid #FFB3B3;
	            border-radius: 10px;
	            background-color: #FFE3E1;
	            font-size: 10pt;
	            padding-top: 10px;
	        }
        </style>
      </head>

      <body>
      <div class="box">
      <!-- 날씨 -->
		<% 
			String root = request.getContextPath();
			
    		TeamDao dao = new TeamDao(); 
			TeamDto dto = new TeamDto();

			// 현재 시간에 따라 낮, 밤
			LocalTime now = LocalTime.now();
			
			int hour = now.getHour();
			
			String str = "";
			
			if(hour > 7 && hour < 19)
				str = "낮";
			else 
				str = "밤";

			String[] team = {"KIA", "KT", "LG", "NC", "SSG", "두산", "롯데", "삼성", "키움", "한화"};

			int num = (int)(Math.random() * 10);
			String place = "";
			
			if(team[num].equals(team[4])) {
				place = "인천광역시 미추홀구 문학동";
			}
			else 
				place = dao.getTeam(team[num]).getStadium();
			
			System.out.println(hour);
			System.out.println(str);
			System.out.println(num);
		%>
		
		<!-- <script>
			// 5초마다 장소 바뀜
			var time =  setInter(fun, 5000);
			
			function fun() {
				
			}
			dao.getData(10).getStadium();
		</script> -->
		
		<%		
			String URL = "https://search.naver.com/search.naver?sm=tab_hty.top&where=nexearch&query=" + place + "+날씨&oquery=" +  place + "+날씨&tqi=isynnlprvxZsstNKUjhsssssszs-082509";
			Document doc; 

			doc = Jsoup.connect(URL).get();
			Elements temperature_text = doc.select("div.main_pack div.weather_info div._today div.temperature_text strong");
			Elements temperature_info_text = doc.select("div.main_pack div.weather_info div._today div.temperature_info span.weather");
			Elements finedust_text = doc.select("div.main_pack div.weather_info div.report_card_wrap ul.today_chart_list li.item_today span.txt");
			Elements feel_humidity = doc.select("div.main_pack div.weather_info div._today div.temperature_info dl.summary_list dd.desc");	
			
			String stadium = dao.getTeam(team[num]).getStadium();
			String temperature = temperature_text.text().substring(5);
			String temperature_info = temperature_info_text.text();
			String finedust = finedust_text.text().split(" ")[0];
			String src1 = "/assets/img/weather/" + temperature_info + "(" + str + ").png";
			String src2 = "../assets/img/weather/" + temperature_info + ".png";
			String feel = feel_humidity.text().split(" ")[0];
			String humidity = feel_humidity.text().split(" ")[1];
	
			double a = 36.317125;
			double b = 127.429168;
		%>  

		<div class="wBox">
	        <div class="weather stadium"><%=stadium %></div>
	        <div class="weather wImg"><img src="<%=root%>/assets/img/weather/<%=temperature_info %>(<%=str %>).png" onerror="this.src='<%=root%>/assets/img/weather/<%=temperature_info %>.png';"></div>
	        <div class="weather tem_text"><%=temperature %></div>
	        <div class="weather tem_info"><%=temperature_info %></div>
	        <div class="weather dust">미세먼지<br><span style="font-weight: bold; color: #F69E7B;"><%=finedust %></span></div>
	        <div class="weather humidity">습도<br><span style="font-weight: bold; color: #748DA6;"><%=humidity %></span></div>
	        <div class="weather feel">체감 온도<br><span style="font-weight: bold; color: #FF8787;"><%=feel %></span></div>
    	</div>
      
      	
			<!-- 지도 -->
          <div class="mapBox" id="map" style="width:350px;height:350px;"></div>

          <script type="text/javascript"
            src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5c284434bbcfaaeb8631c4edd7f52db3"></script>

          <script>
            var mapContainer = document.getElementById('map'), // 지도를 표시할 div
              mapOption = {
                center: new kakao.maps.LatLng(36.23786755357566, 127.91029037967681), // 지도의 중심좌표
                level: 13 // 지도의 확대 레벨
              };

            var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

            var position = [[36.317125, 127.429168]];
            var a = 36.317125;
            var b = 127.429168;
            
            // 경도 longitude 127
            var longitude = [37.299789, 35.168233, 35.194058, 37.512199, 37.512217, 37.498279, 37.437048, 35.222463, 36.317125, 35.841133];

            // 위도 latitude 37
            var latitude = [127.009773, 126.889005, 129.061547, 127.072078, 127.071767, 126.867086, 126.693273, 128.582086, 127.429168, 128.681661];
            
            // 마커를 표시할 위치와 title 객체 배열
           
        	var positions = [
				{
					// 1. KT WIZ
					team: "<%=dao.getTeam("KT").getTeamName() %>",
					color: "<%=dao.getTeam("KT").gettColor() %>",
					logo: "<%=dao.getTeam("KT").getTeamLogo() %>",
					stadium: "<%=dao.getTeam("KT").getStadium() %>",
					location: "<%=dao.getTeam("KT").getLocation() %>",
					latlng: new kakao.maps.LatLng(37.299789, 127.009773)               
				},
				{
					// 2. KIA TIGERS
					team: "<%=dao.getTeam("KIA").getTeamName()%>",
					color: "<%=dao.getTeam("KIA").gettColor() %>",
					logo: "<%=dao.getTeam("KIA").getTeamLogo() %>",
					stadium: "<%=dao.getTeam("KIA").getStadium() %>",
					location: "<%=dao.getTeam("KIA").getLocation() %>",
					latlng: new kakao.maps.LatLng(35.168233, 126.889005)
				},
				{
					// 3. LOTTE GIANTS
					team: "<%=dao.getTeam("롯데").getTeamName()%>",
					color: "<%=dao.getTeam("롯데").gettColor() %>",
					logo: "<%=dao.getTeam("롯데").getTeamLogo() %>",
					stadium: "<%=dao.getTeam("롯데").getStadium() %>",
					location: "<%=dao.getTeam("롯데").getLocation() %>",
					latlng: new kakao.maps.LatLng(35.194058, 129.061547)
				},
				{
					// 4. LG TWINS
					team: "<%=dao.getTeam("LG").getTeamName() %>",
					color: "<%=dao.getTeam("LG").gettColor() %>",
					logo: "<%=dao.getTeam("LG").getTeamLogo() %>",
					stadium: "<%=dao.getTeam("LG").getStadium() %>",
					location: "<%=dao.getTeam("LG").getLocation() %>",
					latlng: new kakao.maps.LatLng(37.512199, 127.072078)
				},
				{
					// 5. DOOSAN BEARS
					team: "<%=dao.getTeam("두산").getTeamName() %>",
					color: "<%=dao.getTeam("두산").gettColor() %>",
					logo: "<%=dao.getTeam("두산").getTeamLogo() %>",
					stadium: "<%=dao.getTeam("두산").getStadium() %>",
					location: "<%=dao.getTeam("두산").getLocation() %>",
					latlng: new kakao.maps.LatLng(37.299789, 127.009773)
				},
				{
					// 6. KIWOOM HEROS
					team: "<%=dao.getTeam("키움").getTeamName() %>",
					color: "<%=dao.getTeam("키움").gettColor() %>",
					logo: "<%=dao.getTeam("키움").getTeamLogo() %>",
					stadium: "<%=dao.getTeam("키움").getStadium() %>",
					location: "<%=dao.getTeam("키움").getLocation() %>",
					latlng: new kakao.maps.LatLng(37.498279, 126.867086)
				},
				{
					// 7.  LANDERS
					team: "<%=dao.getTeam("SSG").getTeamName() %>",
					color: "<%=dao.getTeam("SSG").gettColor() %>",
					logo: "<%=dao.getTeam("SSG").getTeamLogo() %>",
					stadium: "<%=dao.getTeam("SSG").getStadium() %>",
					location: "<%=dao.getTeam("SSG").getLocation() %>",
					latlng: new kakao.maps.LatLng(37.437048, 126.693273)
				},
				{
					// 8. NC DINOS
					team: "<%=dao.getTeam("NC").getTeamName()%>",
					color: "<%=dao.getTeam("NC").gettColor() %>",
					logo: "<%=dao.getTeam("NC").getTeamLogo() %>",
					stadium: "<%=dao.getTeam("NC").getStadium() %>",
					location: "<%=dao.getTeam("NC").getLocation() %>",
					latlng: new kakao.maps.LatLng(35.222463, 128.582086)
				},
				{
					// 9. HANHWA EAGLES
					team: "<%=dao.getTeam("한화").getTeamName()%>",
					color: "<%=dao.getTeam("한화").gettColor() %>",
					logo: "<%=dao.getTeam("한화").getTeamLogo() %>",
					stadium: "<%=dao.getTeam("한화").getStadium() %>",
					location: "<%=dao.getTeam("한화").getLocation() %>",
					latlng: new kakao.maps.LatLng(<%=a %>, <%=b %>)
				},
					{
					// 10. SAMSUNG LIONS 
					team: "<%=dao.getTeam("삼성").getTeamName()%>",
					color: "<%=dao.getTeam("삼성").gettColor() %>",
					logo: "<%=dao.getTeam("삼성").getTeamLogo() %>",
					stadium: "<%=dao.getTeam("삼성").getStadium() %>",
					location: "<%=dao.getTeam("삼성").getLocation() %>",
					latlng: new kakao.maps.LatLng(35.841133, 128.681661)
				}
			];
 
           <%--  var teams[positions.length];
            for(var i = 0; i < positions.length; i++) {
            	Team dto = dao.getData(i+1);
	             
            	//var team = dto.get
            	var teams = [ 
	                {
	                  // team: "HANHWA EAGLES",
	                  team: "<%=dto.getTeam() %>",
	                  color: "<%=dto.gettColor() %>",
	                  logo: "<%=dto.getTeamLogo()%>",
	                  stadium: "<%=dto.getStadium() %>",
	                  location: "<%=dto.getLocation() %>"
	                }
	            ]
            
            } --%>
            
            // 마커 이미지의 이미지 주소
            var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_red.png";

            for (var i = 0; i < positions.length; i++) {

              // 마커 이미지의 이미지 크기
              var imageSize = new kakao.maps.Size(30, 35);

              // 마커 이미지 생성
              var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);

              // 마커를 생성합니다
              var marker = new kakao.maps.Marker({
                map: map, // 마커를 표시할 지도
                position: positions[i].latlng, // 마커를 표시할 위치
                image: markerImage // 마커 이미지
              });


              // 마커에 표시할 인포윈도우 생성
              var infowindow = new kakao.maps.InfoWindow({
                // 인포윈도우에 표시할 내용
                content: "<div class='wrap'>" +
                  "<div class='teamBox'>" +
                  "<div class='team' style='background-color:" + positions[i].color + ";'>" + positions[i].team + "</div>" +
                  "<div class='body'>" +
                  "<div class='img'>" +
                  "<img class='logo' src='" + positions[i].logo + "'>" +
                  "</div>" +
                  "<div class='content'>" +
                  positions[i].stadium + "<br>" + positions[i].location +
                  "</div>" +
                  "</div>" +
                  "</div>" +
                  "</div>"
              });

              // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록
              // 이벤트 리스너로는 클로저를 만들어 등록
              // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록
              kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
              kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
              
              // 마커 클릭시 확대
              kakao.maps.event.addListener(marker, 'click', function () {
                map.setMinLevel(2);
				
                var level = map.getLevel();

                if (level == 13)
                  level = map.getLevel() - 11;
                else if (level == 2)
                  level = map.getLevel() + 11;

                map.setLevel(level, { anchor: this.getPosition() });
              });
            }

            // 인포윈도우를 표시하는 클로저를 만드는 함수
            function makeOverListener(map, marker, infowindow) {
              return function () {
                infowindow.open(map, marker);
              };
            }

            // 인포윈도우를 닫는 클로저를 만드는 함수
            function makeOutListener(infowindow) {
              return function () {
                infowindow.close();
              };
            }
          </script>
          
       </div>   
      </body>

      </html>
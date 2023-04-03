<div align='center'>
<img src='homerun/src/main/webapp/assets/img/logo.png' width="150" />
</div>

<div align='center'>

# 📢 9회말 2아웃 - 끝날때까지 끝난 게 아니다! 🔥
<br>
</div>

## 👋 소개

국내 야구 리그 팬들 간 정보 공유 사이트 ⚾ <br>
다양한 소통을 통한 건전한 야구문화 🧢 <br>
누구나 쉽게 입문할 수 있는 야구정보 사이트 🏏 <br>

### 국내 최대 KBO 커뮤니티! 🔥
<br><br>

## 📆 개발기간
2023/03/13 ~ 2023/03/29
<br><br><br>

## ⚙️ 사용언어 및 개발환경
<div align="left">
	<img src="https://img.shields.io/badge/Java-007396?style=flat&logo=Java&logoColor=white" />
	<img src="https://img.shields.io/badge/HTML5-E34F26?style=flat&logo=HTML5&logoColor=white" />
	<img src="https://img.shields.io/badge/CSS3-1572B6?style=flat&logo=CSS3&logoColor=white" />
  <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=flat&logo=JavaScript&logoColor=white" />
  
  <br>
  
  <img src="https://img.shields.io/badge/Bootstrap-7952B3?style=flat&logo=Bootstrap&logoColor=white" />
  <img src="https://img.shields.io/badge/jQuery-0769AD?style=flat&logo=jQuery&logoColor=white" />
  <img src="https://img.shields.io/badge/JSON-000000?style=flat&logo=JSON&logoColor=white" />
  
  <br>
  
  <img src="https://img.shields.io/badge/Eclipse IDE-2C2255?style=flat&logo=Eclipse IDE&logoColor=white" />
  <img src="https://img.shields.io/badge/Apache Tomcat-F8DC75?style=flat&logo=Apache Tomcat&logoColor=white" />
  <img src="https://img.shields.io/badge/Visual Studio Code-007ACC?style=flat&logo=Visual Studio Code&logoColor=white" />
  
  <br>
  
  <img src="https://img.shields.io/badge/MySQL-4479A1?style=flat&logo=MySQL&logoColor=white" />
  <img src="https://img.shields.io/badge/Amazon AWS-232F3E?style=flat&logo=Amazon AWS&logoColor=white" />
  <img src="https://img.shields.io/badge/Amazon RDS-527FFF?style=flat&logo=Amazon RDS&logoColor=white" />
  
  <br>
  
  <img src="https://img.shields.io/badge/Git-F05032?style=flat&logo=Git&logoColor=white" />
  <img src="https://img.shields.io/badge/GitHub-181717?style=flat&logo=GitHub&logoColor=white" />

</div>
<br><br><br>

## 📌 사용 API
⭐ 카카오 지도 API<br>
⭐ 도로명 주소 API
<br><br><br>

## 💡 크롤링
⛅ 네이버 날씨<br>
🏅 네이버 스포츠
<br><br><br>


## 🌳 역할분담
#### 🦙 YEEUN (조장) : 경기일정 및 응원용품 

#### 🐖 WOOHYUNG : 회원관리

#### 🐇 JIMIN : 날씨지도 및 게시판

#### 🐅 SUNGUNG : 장바구니 및 주문관리
<br><br>

## 🚀 구현기능
### 🐖 WOOHYUNG
🗸 메인 페이지 네브바 디자인 <br>

🗸 메인 페이지 로그인 & 로그아웃
<details>
<summary>마이페이지_ 회원관리</summary>
<div markdown="1">
<br>

|기능명|상세설명|
|------|------|
|로그인|아이디 & 비밀번호 유효성검사 / 아이디 저장 기능 / 로그인 처리 과정|
|회원 가입|입력 내용 유효성 검사 후 DB 저장 / 주소 기입 시 주소 API 사용|
|마이 페이지|회원 정보 수정 / 회원 탈퇴 기능|
|관리자 페이지|회원 강제 탈퇴 / 페이징처리|

</div>
</details>

<br>


### 🐇 JIMIN
🗸 메인 페이지 날씨 <br>
> 네이버 날씨 페이지를 크롤링하여 각 구단별 경기장의 위치에 따른 날씨 확인<br>
> 크롤링 URL https://search.naver.com/search.naver?sm=tab_hty.top&where=nexearch&query=" + place + "+날씨&oquery=" +  place + "+날씨&tqi=isynnlprvxZsstNKUjhsssssszs-082509 <br>

<br>

🗸 메인 페이지 지도 <br>
> 카카오 지도 API를 이용하여 각 구단별 위치를 마커로 표시 <br>

<br>

🗸 자유 게시판 게시글 작성 <br>
> 스마트 에디터를 이용하여 게시글 작성 <br>
> 전체, 각 구단별 탭으로 카테고리별 게시글 목록 조회 가능 <br>

<br>

🗸 후기 게시판 게시글 작성 <br>
> jQuery 위젯 datepicker를 이용하여 경기일 선택 후  스마트 에디터를 이용하여 게시글 작성 <br>

<br>

<details>
<summary>게시판 공통 기능</summary>
<div markdown="1">
<br>

|기능설명|
|------|
|게시글 작성 / 수정 / 삭제|
|게시글 추천 / 비추천 / 찜 / 신고|
|댓글 작성 / 수정 / 삭제|
|댓글 추천 / 비추천 / 찜 / 신고|
|관리자 글 작성 시 공지 카테고리로 고정되어 글 작성 가능|
|하단 페이징 처리|
|작성자 / 제목 / 내용으로 키워드 검색 가능|

<br>

</div>
</details>

<details>
<summary>마이 페이지_ 게시글 및 댓글 관리</summary>
<div markdown="1">
<br>

|기능명|상세설명|
|------|------|
|내 글 메뉴| 관리 버튼을 통해 게시글 수정과 삭제 가능|
|내 댓글 메뉴|관리 버튼을 통해 댓글 삭제 가능 |
|게시글 찜 메뉴|관리 버튼을 통해 찜했던 게시글 목록에서 제거 가능|

<br>

</div>
</details>

<details>
<summary>관리자 페이지_ 신고 관리</summary>
<div markdown="1">
<br>

|기능명|상세설명|
|------|------|
|신고 관리 메뉴|회원들이 신고한 게시글과 댓글 강제 삭제 가능, 회원 강제 탈퇴 가능|

<br>

</div>
</details>

<br>

### 🦙 YEEUN
🗸 메인페이지 구단 순위 <br>
> DB 내의 승수, 패수로 승률 계산하여 구단 순위 출력<br>
> 각 구단의 순위, 구단명, 총 경기수, 승수, 패수, 승률  한번에 조회 가능 <br>

<br>

🗸 메인페이지_ FOOTER <br>
> 깃허브 주소 / REGISTER & LOGIN(로그아웃 상태) / LOGOUT(로그인 상태) 표시 <br>

<br>

🗸 경기 일정<br>
> 네이버 스포츠 페이지를 크롤링하여 경기일, 홈/어웨이 팀 로고, 홈팀의 구장 출력 <br>
> 크롤링 URL https://sports.news.naver.com/kbaseball/schedule/index?date=20230401&month=03&year=2023&teamCode= <br>

<br>

<details>
<summary>응원 용품</summary>
<div markdown="1">
<br>

|메뉴|기능설명|
|------|------|
|메인|Best Sellers(최다 주문 순) / New Arrivals(신상품) / Shop to Category(카테고리별 상품) 조회 가능|
|목록|전체 & 두산 베어스 & 롯데 자이언츠 등 10개 구단별 / 팀웨어 & 응원용품 & 야구용품 & 기념상품 출력 / 페이징처리|
|상품 상세 페이지|구단명 및 카테고리 & 상품 이미지 & 금액 등 상품의 상세 설명 출력 / 해당 상품과 같은 구단의 상품이 뜨는 Related Products|

<br>

</div>
</details>

<details>
<summary>관리자 페이지_ 재고 관리</summary>
<div markdown="1">
<br>

|기능설명|
|------|
|상품 재고 목록 조회 가능|
|상품 재고별 수정 및 삭제 가능|
|하단 페이징 처리|
|상품ID, 팀, 카테고리 선택하여 키워드 검색 가능|


<br>

> 상품 재고 입력 시 상품 ID / 상품명 / 팀 / 카테고리 / 재고수 / 가격 / 상품설명 / 이미지 주소 기입 후 등록 가능 <br>

<br>

> 상품 ID는 'p+0000' 포맷으로만 등록 가능 / 상품 ID 중복확인 기능 <br>

<br>

> 상품 재고 수정 시 재고수 / 가격 / 상품 설명만 수정 가능 <br>

<br>

</div>
</details>

<br>

### 🐅 SUNGUNG
<details>
<summary>장바구니</summary>
<div markdown="1">

<br>

> 상품 장바구니에 등록 <br>

<br>

> 목록에서 상품정보, 상품 옵션, 상품금액 조회 가능  <br>

<br>

> 페이지 하단에 장바구니에 담긴 상품의 총금액과 총주문 금액 표시 <br>

<br>

> 장바구니에 담긴 상품의 수량 상품 up & down button으로 수량 변경 가능 <br>

<br>

> 상품 선택 삭제, 전체 삭제 가능 <br>

<br>

> 주문 버튼으로 주문 완료 시 주문번호(고유번호 +랜덤번호) 생성 <br>

<br>

</div>
</details>

<br>

<details>
<summary>마이페이지_ 주문 목록</summary>
<div markdown="1">

<br>

> 주문 시 주문 상품 DB에 저장 <br>

<br>

> 구매한 상품 정보, 상품 옵션, 상품 금액과 총 금액 확인 가능 <br>

<br>

> 주문 내역 삭제 가능 <br>

<br>

</div>
</details>

<br>

## 🏠 메인 페이지

<img src="https://user-images.githubusercontent.com/77319040/229453127-83e2cb6d-b2a9-427c-8d7e-b55f389a7363.png" width="700"/>


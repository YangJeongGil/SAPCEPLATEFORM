<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="top.jsp"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>게스트정보 화면</title>
<script src="resources/js/guest2.js"></script>
</head>
<body>


	<div class="container">
		<div class="row">
		
		<div class="col-md-3 mb-4">
		<div class="col-md ">
			<div class="list-group">
				  <a href="guest_my_info.do" class="list-group-item list-group-item-action">내 정보</a>
				  <a href="guest_my_passwd_edit.do" class="list-group-item list-group-item-action">비밀번호 수정</a>
				  <a href="guest_reservelist.do" class="list-group-item list-group-item-action">예약리스트</a>
				  <a href="guest_my_review.do" class="list-group-item list-group-item-action">내 리뷰</a>
				  <a href="guest_dibs.do" class="list-group-item list-group-item-action">찜 목록</a>
			</div>
		</div>
		</div>

			<div class="col-md-9">
			
			<div class="col-md-8">
				<h4 class="mb-3"><b>내정보</b></h4>

					<div class="mb-3">
						<label for="member_email"><b>Email</b></label>
							<input type="text" class="form-control" id="member_email" value="${memberdto.member_email}" style="background-color: white;" disabled>
					</div>

					<div class="mb-3">
						<label for="current_nm"><b>닉네임</b></label>	
						<div class="input-group mb-3">
							<input type="text" class="form-control" id="current_nm" value="${memberdto.member_nm}" style="background-color: white;"	disabled>
							<div class="input-group-append">
								<button type="button" class="btn btn-info" data-toggle="modal" data-target="#nickEdit" style="width: 100px;">수정</button>
								<!-- 닉네임 수정 Modal -->
								<div class="modal fade" id="nickEdit" data-backdrop="static" data-keyboard="false" tabindex="-1"  aria-hidden="true">
								  <div class="modal-dialog modal-dialog-centered">
								    <div class="modal-content">
								    <!-- Modal Header -->
								      <div class="modal-header">
								        <h5 class="modal-title" >닉네임 수정</h5>
								        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
								          <span aria-hidden="true">&times;</span>
								        </button>
								      </div>
								      
								      <!-- Modal Body -->
								      	<form class="needs-validation" method="post" action="member_nm_edit.do" name="n">
								      <div class="modal-body">
								      <input type="hidden" name="mode" value="nick">
									    <div class="mb-3">
									      <label for="member_nm">닉네임</label>
										      <input type="text" class="form-control" id="member_nm" name="member_nm" placeholder="닉네임 입력" required>
										      <div class="invalid-feedback">
										        수정 할 닉네임을 입력해주세요.
										      </div>
									    </div>
									
									    <div class="mb-3">
									      <label for="member_pw">비밀번호</label>
										      <input type="password" class="form-control" id="member_pw" name="nickMember_pw" placeholder="비밀번호 입력" required>
										      <div class="invalid-feedback">
										        비밀번호를 입력해주세요.
										      </div>
									  	</div>
								      </div>
								      <!-- Modal footer -->
								      <div class="modal-footer">
								      <button type="submit" class="btn btn-info" style="width:80px;">저장</button>
								      <button type="button" class="btn btn-secondary" style="width:80px;" data-dismiss="modal">취소</button>
								      </div>
									</form>
									
								    </div>
								    
								  </div>
								</div>
								
							</div>
						</div>
					</div>

					<div class="mb-3">
						<label for="current_pno"><b>전화번호</b></label>
						<div class="input-group mb-3">
							<input type="text" class="form-control" id="current_pno" name="member_pno" value="${memberdto.member_pno}"	style="background-color: white;" disabled>
							<div class="input-group-append">
								<button type="button" class="btn btn-info" data-toggle="modal" data-target="#telEdit" style="width: 100px;">수정</button>
							</div>
							<!-- 전화번호 수정 Modal -->
								<div class="modal fade" id="telEdit" data-backdrop="static" data-keyboard="false" tabindex="-1"  aria-hidden="true">
								  <div class="modal-dialog modal-dialog-centered">
								    <div class="modal-content">
								    <!-- Modal Header -->
								      <div class="modal-header">
								        <h5 class="modal-title" >전화번호 수정</h5>
								        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
								          <span aria-hidden="true">&times;</span>
								        </button>
								      </div>
								      
								      <!-- Modal Body -->
								      	<form class="needs-validation" method="post" action="member_nm_edit.do" name="t" novalidate>
								      	<input type="hidden" name="mode" value="tel">
								      <div class="modal-body">
									    <div class="mb-3">
									      <label for="member_pno">전화번호</label>
										      <input type="text" class="form-control" id="member_pno" name="member_pno" placeholder="전화번호 입력" required>
										      <div class="invalid-feedback">
										        수정 할 전화번호를 입력해주세요.
										      </div>
									    </div>
									
									    <div class="mb-3">
									      <label for="telMember_pw">비밀번호</label>
										      <input type="password" class="form-control" id="telMember_pw" name="telMember_pw" placeholder="비밀번호 입력" required>
										      <div class="invalid-feedback">
										        비밀번호를 입력해주세요.
										      </div>
									  	</div>
								      </div>
								      <!-- Modal footer -->
								      <div class="modal-footer">
								      <button type="submit" class="btn btn-primary" style="width:80px;">저장</button>
								      <button type="button" class="btn btn-secondary" style="width:80px;" data-dismiss="modal">취소</button>
								      </div>
									</form>
									
								    </div>
								    
								  </div>
								</div>
						</div>
					</div>

					<hr class="mb-4">
				</div>
			</div>
		</div>
	</div>
	
</body>
<%@ include file="bottom.jsp"%>
</html>
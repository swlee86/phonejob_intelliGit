<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!--     
<div class="normalheader transition animated fadeIn">
	<div class="hpanel">
		<div class="panel-body" style="text-align: left;">
			<h2 class="font-light m-b-xs">구직 등록</h2>
		</div>
	</div>
</div>
 -->
<div class="content animate-panel" style="width: 1200px; text-align:left; display:inline-block">
	<div class="row">
    	<div class="col-lg-12">
			<div class="hpanel">
				<div class="panel-body">
					<form class="form-horizontal" method="POST" id="googicRegister">
 						<div class="row">
 							
							<div class="form-group col-lg-12">
								<label class="col-sm-3 control-label" style="text-align: right;"></label>
								<div class="col-sm-7">
									<p style="text-align: left;">ㅁ개인 기본 정보</p>
									<hr style="border: 1px solid #ddd;">
								</div>
							</div>
 						
 						
 							<div class="form-group col-lg-12">
								<label class="col-sm-3 control-label" style="text-align: right;">제목</label>
								<div class="col-sm-7">
									<input type="text" class="form-control" id="title" name="title" value="">
								</div>
							</div>
 						
 							<div class="form-group col-lg-12">
								<label class="col-sm-3 control-label" style="text-align: right;">사진</label>
								<div class="col-sm-7">
									<img src="default.jsp" alt="이력서 사진">
									<input type="hidden" value="${loginData.pic}" id="pic" name="pic">
								</div>
							</div>
							<div class="form-group col-lg-12">
								<label class="col-sm-3 control-label" style="text-align: right;">이름</label>
								<div class="col-sm-7">
									<input type="text" class="form-control" id="username" name="username" value="${loginData.username}">
									<input type="hidden" value="${loginData.userid}" id="userid" name="userid">
								</div>
							</div>
							
							<div class="form-group col-lg-12">
								<label class="col-sm-3 control-label" style="text-align: right;">나이</label>
									<div class="col-sm-7">
										<input type="text" id="age" class="form-control" name="age">
									</div>
							</div>
							
							
							<div class="form-group col-lg-12">
								<label class="col-sm-3 control-label" style="text-align: right;">연락처</label>
								<div class="col-sm-7">
									<input type="text" class="form-control" name=userphone id="userphone" value="${loginData.userphone}">
								</div>
							</div>
							
							<div class="form-group col-lg-12">
								<label class="col-sm-3 control-label" style="text-align: right;">이메일</label>
								<div class="col-sm-7">
									<input type="email" class="form-control"  placeholder="example@gmail.com" name="useremail" id="useremail" value="${loginData.usermail}">
								</div>
							</div>
							
							<div class="form-group col-lg-12">
								<label class="col-sm-3 control-label" style="text-align: right;">주소</label>
								<div class="col-sm-7">
									<input type="text" class="form-control" value="${loginData.useraddr1} ${loginData.useraddr2 }">
									<input type="hidden" value="${loginData.useraddr1}" id="useraddr1" name="useraddr1">
									<input type="hidden" value="${loginData.useraddr2}" id="useraddr2" name="useraddr2">
								</div>
							</div>
							
							
							<div class="form-group col-lg-12">
								<label class="col-sm-3 control-label" style="text-align: right;">짧은한마디</label>
								<div class="col-sm-7">
									<input type="text" class="form-control" id="sprofiletext" name="sprofiletext" value="" placeholder="자신을 소개할 수 있는 짧은 한마디">
								</div>
							</div>
							
							
							
							
							
							<div class="form-group col-lg-12">
								<label class="col-sm-3 control-label" style="text-align: right;"></label>
								<div class="col-sm-7">
								</div>
							</div>
							<div class="form-group col-lg-12">
								<label class="col-sm-3 control-label" style="text-align: right;"></label>
								<div class="col-sm-7">
								</div>
							</div>
							
							
							
							<div class="form-group col-lg-12">
								<label class="col-sm-3 control-label" style="text-align: right;"></label>
								<div class="col-sm-7">
									<p style="text-align: left;">ㅁ지원정보</p>
									<hr style="border: 1px solid #ddd;">
								</div>
							</div>
							
							<div class="form-group col-lg-12">
								<label class="col-sm-3 control-label" style="text-align: right;">희망급여</label>
								<div class="col-sm-7">
								<table>
										<tr>
											<td>
                               					<select class="form-control" name="salary_detail" id="salary_detail" style="width: 75px;">
													<option>선택</option>
													<option value="01">연</option>
													<option value="02">월</option>
												</select>
											</td>
											<td>
												<input type="text" class="form-control" name="salary_min" id="salary_min" style="text-align: left;">
											</td>
											<td>
												&nbsp;~&nbsp;
											</td>
											<td>
												<input type="text" class="form-control" name="salary_max"  id="salary_max" style="text-align: left;">
											</td>
											<td style="width: 30px;">
												&nbsp;만원
											</td>
										</tr>
									</table>
								</div>
							</div>
							
							<div class="form-group col-lg-12">
								<label class="col-sm-3 control-label" style="text-align: right;">근무형태</label>
								<div class="col-sm-7">
									<select class="form-control" name="wantjob" id="wantjob">
										<option>선택</option>
										<option value="01">정규직</option>
										<option value="02">비정규직</option>
										<option value="03">아르바이트</option>
										<option value="04">단기아르바이트</option>
									</select>
								</div>
							</div>

							
							<div class="form-group col-lg-12">
								<label class="col-sm-3 control-label" style="text-align: right;">희망근무지역</label>
								<div class="col-sm-7">
									<select class="form-control" name="sido" id="sido"><option value="">-시도-</option></select>
									<select class="form-control" name="gugun" id="gugun"><option value="">-구군-</option></select>
									<select class="form-control" name="dong" id="dong"><option value="">-동-</option></select>
								</div>
							</div>
							
							
							<div class="form-group col-lg-12">
								<label class="col-sm-3 control-label" style="text-align: right;">선호하는 업무</label>
								<div class="col-sm-7">
									<select class="form-control" name="wantjob" id="wantjob">
											<option>선택</option>
											<option value="cs">CS</option>
											<option value="seller">판매사</option>
											<option value="csseller">CS / 판매사</option>
									</select>
								</div>
							</div>

							<div class="form-group col-lg-12">
								<label class="col-sm-3 control-label" style="text-align: right;">근무가능일자</label>
								<div class="col-sm-7">
									<select class="form-control" name="possibledate" id="possibledate">
											<option>선택</option>
											<option value="A001">즉시 가능</option>
											<option value="A002">일주일 이내</option>
											<option value="A003">15일 이내</option>
											<option value="A004">한달 이내</option>
											<option value="A005">협의 후 결정</option>
									</select>
								</div>
							</div>
							
							
							
							<div class="form-group col-lg-12">
								<label class="col-sm-3 control-label" style="text-align: right;">근무경험</label>
								<div class="col-sm-7">
									<input type="checkbox" class="i-checks approveCheck" value="sk" id="skhistory" name="skhistory">SK
									<input type="checkbox" class="i-checks approveCheck" value="lg" id="lghistory" name="lghistory">LG
									<input type="checkbox" class="i-checks approveCheck" value="kt" id="kthistory" name="kthistory">KT
								</div>
							</div>
							
							
							
							
							
							<div class="form-group col-lg-12">
								<label class="col-sm-3 control-label" style="text-align: right;"></label>
								<div class="col-sm-7">
								</div>
							</div>
							<div class="form-group col-lg-12">
								<label class="col-sm-3 control-label" style="text-align: right;"></label>
								<div class="col-sm-7">
								</div>
							</div>
							
							
							
							<div class="form-group col-lg-12">
								<label class="col-sm-3 control-label" style="text-align: right;"></label>
								<div class="col-sm-7">
									<p style="text-align: left;">ㅁ취업 우대사항</p>
									<hr style="border: 1px solid #ddd;">
								</div>
							</div>
							
							
							<div class="form-group col-lg-12">
								<label class="col-sm-3 control-label" style="text-align: right;">보훈대상 여부</label>
								<div class="col-sm-7">
									<select class="form-control" name="bohun" id="bohun">
											<option value="B000">선택</option>
											<option value="B001">대상</option>
											<option value="B002">미대상</option>
									</select>
								</div>
							</div>
							
							<div class="form-group col-lg-12">
								<label class="col-sm-3 control-label" style="text-align: right;">취업보호대상여부</label>
								<div class="col-sm-7">
									<select class="form-control" name="chuiboho" id="chuiboho">
											<option value="B000">선택</option>
											<option value="B001">대상</option>
											<option value="B002">미대상</option>
									</select>
								</div>
							</div>
							
							<div class="form-group col-lg-12">
								<label class="col-sm-3 control-label" style="text-align: right;">고용지원금대상여부</label>
								<div class="col-sm-7">
									<select class="form-control" name="goji" id="goji">
											<option value="B000">선택</option>
											<option value="B001">대상</option>
											<option value="B002">미대상</option>
									</select>
								</div>
							</div>
							
							<div class="form-group col-lg-12">
								<label class="col-sm-3 control-label" style="text-align: right;">병역사항</label>
								<div class="col-sm-7">
									<select class="form-control" name="army" id="army">
											<option value="B000">선택</option>
											<option value="B001">전역</option>
											<option value="B002">미필</option>
											<option value="B003">미대상</option>
									</select>
								</div>
							</div>
							
							<div class="form-group col-lg-12">
								<label class="col-sm-3 control-label" style="text-align: right;">장애여부</label>
								<div class="col-sm-7">
									<select class="form-control" name="handicap" id="handicap">
											<option value="B000">선택</option>
											<option value="B001">장애</option>
											<option value="B002">비장애</option>
									</select>
								</div>
							</div>
							
							
							
							<div class="form-group col-lg-12">
								<label class="col-sm-3 control-label" style="text-align: right;">자기소개</label>
								<div class="col-sm-7">
									<textarea rows="8" cols="75" style="resize: none;" id="profiletext" name="profiletext"></textarea>
								</div>
							</div>
							
						</div>
						
						<div class="text-center">
								<button class="btn btn-success">등록하기</button>
								<input type="button" class="btn btn-default" onclick="javascript:goPage()" value="취소하기">	
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
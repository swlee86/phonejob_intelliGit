<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"  %>


<div class="row">
	<div class="col-lg-12" style="text-align: center;">
		<div class="hpanel" style="width:1200px; display:inline-block;">
			<div class="panel-heading">
				<div class="panel-tools">
					<a class="showhide"><i class="fa fa-chevron-up"></i></a> <a
						class="closebox"><i class="fa fa-times"></i></a>
				</div>
				개인회원 가입하기
			</div>
			<div class="panel-body">

				<form name="privateregisterform" id="privateregisterform" method="post">

					<div class="text-center m-b-md" id="wizardControl">
						<a class="btn btn-primary" data-toggle="tab" id="step1on">Step 1 - 약관동의</a>
						<a class="btn btn-default" data-toggle="tab" id="step1off" style="display: none">Step 1 - 약관동의</a> 
						<a class="btn btn-primary" data-toggle="tab" id="step2on" style="display:none">Step 2 - 회원가입정보</a>
						<a class="btn btn-default" data-toggle="tab" id="step2off">Step 2 - 회원가입정보</a> 
						<a class="btn btn-primary" data-toggle="tab" id="step3on" style="display:none">Step 3 - 회원기본정보</a> 
						<a class="btn btn-default" data-toggle="tab" id="step3off">Step 3 - 회원기본정보</a>
					</div>



					<div class="tab-content">
					 	<div id="step1" class="p-m tab-pane active">
							<div class="row text-center m-t-lg m-b-lg">
								<div class="col-lg-12">
									<i class="pe-7s-check fa-5x text-muted"></i>
									<p class="small m-t-md">
										<strong>There are many</strong> variations of passages of
										Lorem Ipsum available, but the majority have suffered
									</p>
								</div>
								<div class="checkbox col-lg-12">
									<input type="checkbox" class="i-checks approveCheck" name="approveCheck" id="approveCheck">
									약관 동의
								</div>
							</div>

							<div class="text-right m-t-xs">
								<a class="btn btn-default prev" href="login.do">로그인화면 돌아가기</a> 
								<a class="btn btn-default next" href="#step2" data-toggle="tab" id="moveStep2">Next</a>
							</div>

						</div>

						<div id="step2" class="p-m tab-pane">
							<div class="row">
								<div class="col-lg-3 text-center">
									<i class="pe-7s-user fa-5x text-muted"></i>
									<p class="small m-t-md">로그인 정보 입력</p>
								</div>
								<div class="col-lg-9">
									<div class="row">
										<div class="form-group col-lg-12">
											<label>아이디</label> <input type="text" value="" id="userid" class="form-control" name="userid" placeholder="아이디">
										</div>
										<div class="form-group col-lg-6">
											<label>패스워드</label> 
												<input type="password" value="" id="userpwd" class="form-control" placeholder="******" name="userpwd">
										</div>
										<div class="form-group col-lg-6">
											<label>패스워드 확인</label> <input type="password" value="" id="confirmpassword"	class="form-control" name="confirmpassword" placeholder="******">
										</div>
										<div class="form-group col-lg-6">
											<label>이름</label><input type="text" id="username" class="form-control" placeholder="이름" name="username">
										</div>
										<div class="form-group col-lg-6">
											<label>이메일</label> <input type="text" id="usermail" class="form-control" placeholder="user@email.com" name="usermail">
										</div>
									</div>
								</div>
							</div>

							<div class="text-right m-t-xs">
								<a class="btn btn-default prev" href="#step1" data-toggle="tab" id="moveStep1">Previous</a>
								<a class="btn btn-default next" href="#step3" data-toggle="tab" id="moveStep3">Next</a>
							</div>

						</div>
						<div id="step3" class="tab-pane">
							<div class="row">
								<div class="col-lg-3 text-center">
									<i class="pe-7s-credit fa-5x text-muted"></i>
									<p class="small m-t-md">필수정보 입력</p>
								</div>
								<div class="col-lg-9">
									<div class="row">
										<div class="form-group col-lg-12">
											<div class="col-xs-4 form-group">
												<div class="row">
													<label>우편주소</label>
														<table>
															<td>
																<input class="form-control" placeholder="442-720" type="text" id="addrnum" name="addrnum"  onclick="daumPostcode()">															
															</td>
															<td>&nbsp;&nbsp;</td>
															<td>
																<a class="btn btn-default next" href="javascript:void(0);" onclick="daumPostcode()" id="addrnumsearch">우편번호검색</a>
															</td>
														</table>
												</div>
											</div>
										</div>
										<div class="form-group col-lg-6">
											<label>기본 주소</label>
											<input type="text" value="" id="useraddr1" class="form-control" name="useraddr1" onclick="daumPostcode()">
										</div>
										<div class="form-group col-lg-6">
											<label>상세 주소</label> 
											<input type="text" value="" id="useraddr2" class="form-control" name="useraddr2" id="useraddr2">
										</div>
										<div class="form-group col-lg-12">
											<div class="row">
												<table>
													<tr>
														<td>
															<div class="col-xs-4 form-group">
																<label>사진</label> 
																	<input type="file" name="pic" id="pic">
															</div>
														</td>
													</tr>
												<tr>
													<td>
														<div class="col-lg-12 form-group">
															<label>생일</label> 
																<input class="form-control"	placeholder="1986-12-14" type="text" name="userbirth" id="userbirth">
														</div>
													</td>
												</tr>
												</table>
											</div>
										</div>
										<div class="form-group col-lg-12">
											<label>휴대전화번호</label> 
											<table>
											<tr>
												<td>
													<select name="telecom" id="telecom" class="form-control">
    													<option value="01">KT</option>
    													<option value="02">SKT</option>
    													<option value="03">LGT</option>
    													<option value="04">KT 알뜰폰</option>
    													<option value="05">SKT 알뜰폰</option>
    													<option value="06">LGT 알뜰폰</option>
													</select>
												</td>
												<td>&nbsp;</td>
												<td>
													<select name="phnum01" id="phnum01" class="form-control">
    													<option value="010">010</option>
    													<option value="011">011</option>
    													<option value="016">016</option>
    													<option value="019">019</option>
													</select>
												</td>
												<td>&nbsp;</td>												
												<td>
													<input type="text" value="" id="phnum" class="form-control" name="phnum" placeholder="-생략된 나머지 번호 입력">	
												</td>
												<td>&nbsp;</td>
												<td>
													<a class="btn btn-default next" href="javascript:void(0);" onclick="smsValidation()" id="smsFirstgo">SMS 인증</a>
												</td>
											</tr>
											<tr>
												<td id="smsGo"></td>
											</tr>
											
											<tr>
												<td id="smsSecondButton"></td>
											</tr>
											</table>
										</div>

											<div class="form-group col-lg-12">
												<div class="row">
													<div class="col-xs-4 form-group">
														<label>정보성 연락 수신 동의</label>
														<table>
															<tr>
																<td>			
																	<input type="checkbox" class="i-checks approveCheck" name='mailok' id='mailok'>											
																</td>
																<td>&nbsp;&nbsp;</td>
																<td>
																	이메일 수신에 동의 합니다
																</td>
															</tr>
															<tr>
																<td>			
																	<input type="checkbox" class="i-checks approveCheck" name='smsok' id='smsok'>											
																</td>
																<td>&nbsp;&nbsp;</td>
																<td>
																	정보성 문자 수신에 동의 합니다
																</td>
															</tr>
														</table>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							<div class="text-right m-t-xs">
								<a class="btn btn-default prev" href="#step2" data-toggle="tab" id="moveStepback">Previous</a>
								<a class="btn btn-success submitWizard" href="#" id="registerOk" name="registerOk">회원 가입</a>
							</div>
						</div>
					</div>
				</form>

				<div class="m-t-md">

					<p>This is an example of a wizard form which can be easy
						adjusted. Since each step is a tab, and each clik to next tab is a
						function you can easily add validation or any other functionality.
					</p>

				</div>

			</div>
		</div>
	</div>

</div>



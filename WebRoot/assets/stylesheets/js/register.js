$("#inputEmail").change(function(){
	var emailRegex = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
	if (!emailRegex.test($(this).val())) {
		$('#icon-email').removeClass("icon-ok").addClass("icon-remove").show();
		$('#tip-email').text("请输入正确的邮箱地址!");
	} else {
		$('#icon-email').removeClass("icon-remove").addClass("icon-ok").show();
		$('#tip-email').text("");
	}
});

$('#inputPasswd').change(function(){
	if ($(this).val().length < 6 || $(this).val().length > 12) {
		$('#icon-passwd').removeClass("icon-ok").addClass("icon-remove").show();
		$('#tip-passwd').text("请输入由6-12个字符构成的密码！");
	} else {
		$('#icon-passwd').removeClass("icon-remove").addClass("icon-ok").show();
		$('#tip-passwd').text("");
	}
	$('#inputConfirmPwd').change();
});

$('#inputConfirmPwd').change(function() {
	if ($(this).val() == $('#inputPasswd').val()) {
		$('#icon-confirm').removeClass("icon-remove").addClass("icon-ok").show();
		$('#tip-confirm').text("");
	} else {
		$('#icon-confirm').removeClass("icon-ok").addClass("icon-remove").show();
		$('#tip-confirm').text("两次输入密码不一致!");
	}
});
var formCount = 0;

$(document).ready(function(){
	var array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20];
	for (var i in array) {
		$('#showForm_' + i).live("click", {i:i}, showFormHandler);
		$('#inputName_' + i).live("change", {i:i}, nameChangeHandler);
	}
	
	function showFormHandler(event) {
		var i = event.data.i;
		$('#showFormIcon_' + i).toggleClass("icon-chevron-down").toggleClass("icon-chevron-right");
		$('#signupFormDiv_' + i).toggle(300);
		if ($('#inputName_' + i).val() == "") {
			$('#displayName_' + i).text("请输入姓名...");
		} else {
			$('#displayName_' + i).text($('#inputName_' + i).val());
		}
	}
	
	function nameChangeHandler(event) {
		var i = event.data.i;
		if ($(this).val().length < 1) {
			$('#icon-name-' + i).removeClass("icon-ok").addClass("icon-remove").show();
			$('#tip-name-' + i).text("姓名不能为空!");
		} else {
			$('#icon-name-' + i).removeClass("icon-remove").addClass("icon-ok").show();
			$('#tip-name-' + i).text("");
		}
	}
	
	$('#inputMobile').live("change", function() {
		var index = $(this).parent().attr('id');
		var mobileRegex =  /^([0-9]{11})?$/;
		if (!mobileRegex.test($(this).val())) {
			$('#icon-mobile-' + index).removeClass("icon-ok").addClass("icon-remove").show();
			$('#tip-mobile-' + index).text("请输入正确的手机号!");
		} else {
			$('#icon-mobile-' + index).removeClass("icon-remove").addClass("icon-ok").show();
			$('#tip-mobile-' + index).text("");
		}
	});
	
	$('#inputEmail').live("change", function() {
		var index = $(this).parent().attr('id');
		var emailRegex = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
		if (!emailRegex.test($(this).val())) {
			$('#icon-email-' + index).removeClass("icon-ok").addClass("icon-remove").show();
			$('#tip-email-' + index).text("请输入正确的邮箱地址!");
		} else {
			$('#icon-email-' + index).removeClass("icon-remove").addClass("icon-ok").show();
			$('#tip-email-' + index).text("");
		}
	});
	
	$('#inputWorkdep').live("change", function() {
		var index = $(this).parent().attr('id');
		if ($(this).val().length < 1) {
			$('#icon-company-' + index).removeClass("icon-ok").addClass("icon-remove").show();
			$('#tip-company-' + index).text("工作单位不能为空!");
		} else {
			$('#icon-company-' + index).removeClass("icon-remove").addClass("icon-ok").show();
			$('#tip-company-' + index).text("");
		}
	});
	
	$('#inputPostcode').live("change", function() {
		var index = $(this).parent().attr('id');
		var postcodeRegex = /^[1-9][0-9]{5}$/;
		if (!postcodeRegex.test($(this).val())) {
			$('#icon-postcode-' + index).removeClass("icon-ok").addClass("icon-remove").show();
			$('#tip-postcode-' + index).text("请输入正确的邮政编码!");
		} else {
			$('#icon-postcode-' + index).removeClass("icon-remove").addClass("icon-ok").show();
			$('#tip-postcode-' + index).text("");
		}
	});
	
	$('#inputAddress').live("change", function() {
		var index = $(this).parent().attr('id');
		if ($(this).val().length < 1) {
			$('#icon-address-' + index).removeClass("icon-ok").addClass("icon-remove").show();
			$('#tip-address-' + index).text("地址不能为空!");
		} else {
			$('#icon-address-' + index).removeClass("icon-remove").addClass("icon-ok").show();
			$('#tip-address-' + index).text("");
		}
	});
	
});

// $('#submitFormBtn').click(function() {
// 	//submitForm();
// });

// function submitForm(){
// 	for (var i = 0; i <= formCount; ++i) {
// 		$('#signupForm_' + i).submit();
// 	}
// }



$('#addFormBtn').click(function() {
	if (formCount > 20) {
		alert("每次最多添加20人！");
		return;
	}
	++formCount;
	var formTxt = "<span class='btn-controls'>" +
						"<button type='button' class='btn btn-mini'><i class='icon-minus'></i></button>" +
						"<button type='button' class='btn btn-mini' id='showForm_" + formCount + "'><i class='icon-chevron-down' id='showFormIcon_" + formCount + "'></i></button>" +
						"<strong id='displayName_" + formCount + "'>正在填写...</strong>" +
				  	"</span>" +
				  	"<div class='row well' id='signupFormDiv_" + formCount + "'>" +
				  		"<div class='control-group pull-left'>" +
				  			"<label class='control-label' for='inputName'>姓名</label>" +
				  			"<div class='controls'>" +
				  				"<input type='text' id='inputName_" + formCount + "' name='name' placeholder='姓名...'>" +
				  				"<span><i class='' id='icon-name-" + formCount + "'></i></span>" +
		                  		"<span><small id='tip-name-" + formCount + "'></small></span>" +
				  			"</div>" +
				  		"</div>" +
				  		"<div class='control-group pull-left'>" +
				  			"<label class='control-label' for='inputGender'>性别</label>" +
				  			"<div class='controls'>" +
				  				"<div class='btn-group' id='inputGender' data-toggle='buttons-radio'>" +
				  					"<button type='button' class='btn btn-inverse'>男</button>" +
				  					"<button type='button' class='btn btn-inverse'>女</button>" +
				  				"</div>" +
				  			"</div>" +
				  		"</div>" +
				  		"<div class='control-group pull-left'>" +
				  			"<label class='control-label' for='inputMobile'>手机</label>" +
				  			"<div class='controls' id='" + formCount + "'>" +
				  				"<input type='text' id='inputMobile' name='phone' placeholder='手机...'>" +
				  				"<span><i class='' id='icon-mobile-" + formCount + "'></i></span>" +
		                  		"<span><small id='tip-mobile-" + formCount + "'></small></span>" +
				  			"</div>" +
				  		"</div>" +
				  		"<div class='control-group pull-left'>" +
				  			"<label class='control-label' for='inputEmail'>邮箱</label>" +
				  			"<div class='controls' id='" + formCount +"'>" +
				  				"<input type='text' id='inputEmail' name='email' placeholder='邮箱...'>" +
				  				"<span><i class='' id='icon-email-" + formCount + "'></i></span>" +
	                  			"<span><small id='tip-email-" + formCount + "'></small></span>" +
				  			"</div>" +
				  		"</div>" +
				  		"<div class='control-group pull-left'>" +
				  			"<label class='control-label' for='inputWorkdep'>工作单位</label>" +
				  			"<div class='controls' id='" + formCount + "'>" +
				  				"<input type='text' id='inputWorkdep' name='company' placeholder='工作单位...'>" +
				  				"<span><i class='' id='icon-company-" + formCount + "'></i></span>" +
	                  			"<span><small id='tip-company-" + formCount + "'></small></span>" +
				  			"</div>" +
				  		"</div>" +
				  		"<div class='control-group pull-left'>" +
				  			"<label class='control-label' for='inputPostcode'>邮编</label>" +
				  			"<div class='controls' id='" + formCount + "'>" +
				  				"<input type='text' id='inputPostcode' name='com_postCode' placeholder='邮编...'>" +
				  				"<span><i class='' id='icon-postcode-" + formCount + "'></i></span>" +
	                  			"<span><small id='tip-postcode-" + formCount + "'></small></span>" +
				  			"</div>" +
				  		"</div>" +
				  		"<div class='control-group pull-left'>" +
				  			"<label class='control-label' for='inputAddress'>地址</label>" +
				  			"<div class='controls' id='" + formCount + "'>" +
				  				"<input type='text' class='input-xlarge' id='inputAddress' name='com_address' placeholder='地址...'>" +
				  				"<i class='' id='icon-address-" + formCount + "'></i>" +
	                  			"<span><small id='tip-address-" + formCount + "'></small></span>" +
				  			"</div>" +
				  		"</div>" +
				  "</div>";
	$('#addForm').before(formTxt);
});

var upFileInput = '<div>' + 
					'长传文件:<input class="" type="file" name="uploadFile">' + 
					'<a id="delete" href="javascript:void(0)">删除</a><br/>' +
				  '</div>';
$(document).ready(function(){
	$('#delete').live("click", function() {
		console.log('hi');
		$(this).parent().remove();
	});
});

$('#add-file').click(function() {
	$(this).before(upFileInput);
});
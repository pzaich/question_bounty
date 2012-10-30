// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(function () {
	$('#image_url_query_topics').blur(function () {
		$('#circleG').fadeIn(300);
		$.ajax({
			url: 'https://ajax.googleapis.com/ajax/services/search/images',
			dataType: 'jsonp',
			data: {
				v: "1.0",
				q: $(this).val(),
				safe: 'active'
			},
			success: function (data) {
				//console.log(data);
				clearImage();
				$('#circleG').hide();
				var img = '<img id="suggested-image" src="' + data.responseData.results[1].url + '" />';
				$('#question_image_url').val(data.responseData.results[1].url);
				console.log($('#image_url').val());
				$('#question-image').append(img);
			}
		});
	});

	var clearImage = function () {
		$('#suggested-image').remove();
	}
});
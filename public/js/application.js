function switchOutSurvey(HTMLResponse) {
	$('.your-survey-content').replaceWith(HTMLResponse);
}

$(document).ready(function() {
	$('.blades').on('click', function() { $('.blades').removeClass('active'); $(this).addClass('active'); })
	$('#create').on('click', function(e) { 
		var input = $(this).serialize();
		e.preventDefault();
		$.post('/new_survey', input, switchOutSurvey); 
	});
});

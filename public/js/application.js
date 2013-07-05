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

	$('.blades').on('click', function() { $('.blades').removeClass('active'); $(this).addClass('active'); })

	$('form.signup').on('submit', function(e) {
		e.preventDefault();
		$.ajax({
			url: '/signup',
			type: 'post',
			data: $(this).serialize()
		}).done( function(response) {
			$('#confirmation').html(response);
		});
	});

	$('form.signin').on('submit', function(e) {
		e.preventDefault();
		$.ajax({
			url: '/signin',
			type: 'post',
			data: $(this).serialize()
		}).done( function(response) {
			if (response === 'nope') {
				$('#confirmation').html('Invalid Username and Password Combination');
			}
			else {
				response;
			}
		});
	});


});

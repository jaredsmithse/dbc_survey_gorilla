function switchOutSurvey(HTMLResponse) {
	$('.your-survey-content').replaceWith(HTMLResponse);
	addQuestion();
}

function addQuestion() {
	var question = $.trim($('#question-template').html());
	$('.question-list').append(question);
}

$(document).ready(function() {
	

	$("body").on('click','button.add', function (e) {
		e.preventDefault();
		addQuestion();
	});

	//switching sizes of the blades
	$('.blades').on('click', function() { $('.blades').removeClass('active'); $(this).addClass('active'); })
	
	//switch out the partial for a new survey
	$('#create').on('click', function(e) { 
		var input = $(this).serialize();
		e.preventDefault();
		$.post('/new_survey', input, switchOutSurvey); 

	});




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
				window.location.replace('/main');
			}
		});
	});


});

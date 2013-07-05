$(document).ready(function() {
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

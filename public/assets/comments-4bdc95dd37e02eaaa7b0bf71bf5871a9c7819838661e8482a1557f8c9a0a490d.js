$(window).load(function(){
  var comments =  $('.comments_number').html();
  $('#new_comment').on('submit', function(e){
    e.preventDefault();
    data = $(this).serialize();
    var url = $(this).attr('action');
    $.ajax({
      url: url,
      type: 'POST',
      dataType: 'JSON',
      data: data,
      success: function(result) {
        var comments =  $('.comments_number').html();
        var comments_number =  parseInt(comments.split(' ')[0]);
        comments_number += 1;
        if(comments_number == 1) {
          $('.comments_number').html(comments_number + ' comment');
        }else {
          $('.comments_number').html(comments_number + ' comments');
        }

        var html = '<div class="comment">';
        html += '<p><strong>' + result.name +'</strong></p>';
        html += '<p>' + result.content + '</p></div>';
        $('.comments').append(html);

      },
      error: function(error) {
        alert(error);
      },
      complete: function(){
        $('#new_comment')[0].reset();
      }

    })
  })
})


;

$(document).ready(function(){

  var form;
  
  form = [
  '<div class="shift">',
  'Date of shift: <input type="text">',
  'Start time: <input type="text">',
  'Position: <input type="text">', //needs a name or an id? name...
  'Rate per hour: <input type="text" class="rate" placeholder="rate"></br>',
  'Hours this shift: <input type="text" class="hours" placeholder="hours"></br>',
  'Subtotal: <input type="text" class="subtotal" placeholder="subtotal">',
  '</div>',
  ];

  function appendForm() {
    $('.container').append(form.join("\n"));  
  }

  (function(){
    appendForm();
    console.log('working');
  })();
  
  var addForm   = $('.add-form'),
  shiftForm = $('.shift');

  addForm.click(function(){
    appendForm();
  });
  


  $('.container').on('keyup', '.rate', function(){    
    var subtotalElement = $(this).closest('.shift').children('.subtotal');    
    var subtotalNumber =  $(this).val() * $(this).closest('.shift').children('.hours').val();   
    subtotalElement.val(subtotalNumber);
  });
//could refactor function underneath, which repeats function above except switching '.hours' and '.rate'
   $('.container').on('keyup', '.hours', function(){
    var subtotalElement = $(this).closest('.shift').children('.subtotal');
    var subtotalNumber =  $(this).val() * $(this).closest('.shift').children('.rate').val();
    subtotalElement.val(subtotalNumber);
  });


   $('.container').on('keyup', '.rate', function(){
    var grandTotalElement = $('#grand_total'),
    subtotalArray = [],
    subtotalCount = $('.subtotal').length;
    grandTotalValue = 0;

    $('.subtotal').each(function(index, elem){
      var s = parseFloat($(elem).val());
      if (s){
      grandTotalValue += s;
    }

      $(grandTotalElement).val(grandTotalValue);
    });
  });
//could refactor function underneath, which repeats function above except switching '.hours' and '.rate'

  $('.container').on('keyup', '.hours', function(){
    var grandTotalElement = $('#grand_total'),
    subtotalArray = [],
    subtotalCount = $('.subtotal').length;
    grandTotalValue = 0;

    $('.subtotal').each(function(index, elem){
      var s = parseFloat($(elem).val());
      if (s){
      grandTotalValue += s;
    }
      $(grandTotalElement).val(grandTotalValue);
    });
  }); 
}); 
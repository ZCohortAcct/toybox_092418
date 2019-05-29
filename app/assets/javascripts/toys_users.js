$(document).ready(function(){
  console.log('in toys_user.js file')

  $('a#rentToy').on('click', displayRentalForm)
})

function displayRentalForm(e) {
  e.preventDefault();
  const toyId = parseInt(e.target.dataset.toyId);
  // debugger

  const form = $('#hidden').html()
  $(`#formRentToy-${toyId}`).html(form)
  
  $('#hidden').html('')

  $('form').submit(function(event) {
    createRentObj(event, toyId)
  })
}

function createRentObj(e, idToy){
  // debugger
  e.preventDefault();
  // let body = { 
  //   toys_user: {
  //     toy_rent_date:  $('input#toys_user_toy_rent_date').val();
  //   }
  // }

  let value = $('form').serialize() 

  value += `&toys_user%5Btoy_id=${idToy}`

  $.post('/rental', value, function(resp_obj){
    debugger
  })
}
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

  // let value = $('form').serialize() 
  // value += `&toys_user%5Btoy_id=${idToy}`

  let value = $('form').serializeArray() 
  value.push({name: "toys_user[toy_id]", value: idToy})

  $.post('/rental', value, function(resp_obj){
    // debugger
    let rental = new ToysUsers(resp_obj)
    rental.rentalConfirmation()
  })
}

class ToysUsers {
  // {id: 3, toy_rent_date: "2019-06-10T00:00:00.000Z", toy_return_date: null, functional: true, user_id: 3, …}
  constructor(obj) {
    this.id = obj.id
    this.userObj = obj.user
    this.toyObj = obj.toy
    this.rentDate = obj.toy_rent_date
    this.functional = obj.functional
  }

  rentalConfirmation(){
    // THANK YOU MSG
    alert(`${this.userObj.username} we hope you enjoy ${this.toyObj.name}`)

    // Confirmation: USERNAME (rented/will rent) TOY on DATE
    let strRentDate = this.rentDate.split('Z')[0]
    const convertedDate = new Date(strRentDate).toDateString()
    const todayDate = new Date().toDateString()
    
    let confirmMSg = `${this.userObj.username}`
    if (convertedDate === todayDate) {
      confirmMSg += ' rented'
    } else {
      confirmMSg += ' will rent'
    }
    
    const rentalLength = this.daysBetween(todayDate, convertedDate)
    // debugger
    confirmMSg += ` ${this.toyObj.name} in ${rentalLength} days.`

    $('#confirmMessage').html(`<b>${confirmMSg}</b>`)
  }

  treatAsUTC(date) {
    var result = new Date(date);
    result.setMinutes(result.getMinutes() - result.getTimezoneOffset());
    return result;
  }

  daysBetween(startDate, endDate) {
    var millisecondsPerDay = 24 * 60 * 60 * 1000;
    return (this.treatAsUTC(endDate) - this.treatAsUTC(startDate)) / millisecondsPerDay;
  }
}
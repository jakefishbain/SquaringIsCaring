$(document).ready(function(){
  var numPool = document.getElementById("num_pool");

  flatpickr(".flatpickr", {
    enableTime: true,
    altInput: true,
    altFormat: "F j, Y h:i K",
    minDate: new Date(), // "today" / "2016-12-20" / 1477673788975
    utc: true,
    dateFormat: ("D, d M Y H:i:s")
  });

  // $("div.container").on('click', "button#display_board", function(e){
  var numString = $("div#num_pool").text();
  numString = numString.replace(/\n/g, "");
  numString = numString.match(/\d{1,2}/g)
  // console.log(numString)
  for (i = 0; i < 100; i++) {
    if (!numString.includes(i.toString() )) {
      console.log(i.toString())
      var taken = document.getElementById(addZeros(i).toString())
      $(taken).parent().parent().addClass( "black");
      $(taken).attr("disabled", "disabled")
    }
  };

  for (i=0; i < 100; i++) {
    var element = document.getElementById(addZeros(numString[i]));
    $(element).attr("enabled", "enabled")
    $(element).parent().parent().addClass( "green");
  };

  function addZeros(n) {
  return (n < 10 ? '0' : '') + n;
  };


  $("div.container").on('click', "div.contest-card", function(e){
    var id = $("div.contest-card").attr("contest_id");
  });
  


  $("div.container").on("click", "div.square", function(){
    // var contestId = $("form#form").attr("action").match(/\d+/);
    $(this).removeClass('green');
    $(this).css("background-color", "brown");
    $("input[type=checkbox]", this).attr("checked", "checked");
  });

$('button#random2').on('click', function(event){
  event.preventDefault();
  console.log(numString)
  selectRandom(numString, 2)
})
$('button#random5').on('click', function(event){
  event.preventDefault();
  console.log(numString)
  selectRandom(numString, 5)
})

function selectRandom(array, count){
  for (var i = 0; i < count; i++) {

  var randomNumInPool = addZeros(array[Math.floor ( Math.random() * array.length )])
  var randomElement = document.getElementById(randomNumInPool)
  console.log(randomElement)
    $(randomElement).parent().parent().removeClass('green');
    $(randomElement).parent().parent().css("background-color", "brown");
    $(randomElement).attr("checked", "checked");

  };
}
// console.log(numString)

});
















    // $("div.container").on("click", "a#view_board", function(){
    //   populateNums();
    // });


  // $("div.container").on('click', "div.square", function(event){
  //  var contestId = $("form#form").attr("action").charAt(10);
  //        // console.log(JSON.stringify(numPool))

  //        alert($(this).html());
  //        // event.preventDefault();
  //         var test = $(this).find("input[disabled='disabled']").attr("id")
  //         console.log("Test - " + this)
  //         // if (this.children().children().attr("disabled").val("disabled")) {};
  //         $(this).css('background', 'blue');

  //         var cellId = $(this).children().attr("id");
  //         var cellRoute = "/contests/" + contestId + "/cells";
  //       });





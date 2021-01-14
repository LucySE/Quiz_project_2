console.log('HELLO JS- reece!');
console.log('Zara is my friend')
const question = 0

$(document).ready(function(){
    console.log('hello')

    $( "#next" ).click(function() {
  console.log( "First item clicked" )
  const question = question+1
})

    $( "#back" ).click(function() {
  console.log( "First item clicked" );
  const question = question-1

})

})

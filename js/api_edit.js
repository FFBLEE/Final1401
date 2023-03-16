// Jquery
$(document).ready(function(){
    let id = location.search.split('id=')[1];
    $.ajax({
        url: "http://localhost/coe1401/final1401/coe1401/read_one.php?id="+id
    }).then(function(data) {
        $('input[name=id]').val(data.id);
        $('input[name=name]').val(data.name);
        $('input[name=phone]').val(data.phone);
        $('input[name=email]').val(data.email);
        $('input[name=country]').val(data.country);
        $('input[name=currency]').val(data.currency);
    });

});
// JAVA Script
function edit(){
        let postObj = { 
            id: $('input[name=id]').val(), 
            name:  $('input[name=name]').val(),
            phone:  $('input[name=phone]').val(),
            email:  $('input[name=email]').val(),
            country:  $('input[name=country]').val(),
            currency:  $('input[name=currency]').val(),

        }
        let post = JSON.stringify(postObj)
        const url = "http://localhost/coe1401/final1401/coe1401/update.php"
        let xhr = new XMLHttpRequest()
        xhr.open('POST', url, true)
        xhr.setRequestHeader('Content-type', 'application/json; charset=UTF-8')
        xhr.send(post);
        xhr.onload = function () {
            if(xhr.status === 200) {
                console.log("Post successfully update!") 
                window.location.replace("index.html");
            }
        }
    
}


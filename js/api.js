// Jquery
$(document).ready(function(){
    $.ajax({
        url: "http://localhost/coe1401/final1401/coe1401/read.php"
    }).then(function(data) {
        console.log(data); // log the server response to the console
        $.each(data.records, function(d, results) {
            let id = d+1;
            $("#data tbody").append(
                "<tr>"
                    +"<td>"+results.id+"</td>"
                    +"<td>"+results.name+"</td>"
                    +"<td>"+results.phone+"</td>"
                    +"<td>"+results.email+"</td>"
                    +"<td>"+results.country+"</td>"
                    +"<td>"+results.currency+"</td>"
                    +"<td><a href='edit.html?id="+results.id+"' id='edit'  class='btn btn-primary' >EDIT</a> <button type='button' class='btn btn-danger' onclick='del("+results.id+")' >DEL</button></td>"
                +"</tr>"
            );
        });
    });
});

// JAVA Script
function add(){
    let postObj = {
        name :$('input[name=name]').val(),
        phone:$('input[name=phone]').val(),
        email:$('input[name=email]').val(),
        country:$('input[name=country]').val(),
        currency:$('input[name=currency]').val()
    }
    let data = JSON.stringify(postObj)
    $.ajax({
        type: "POST",
        dataType: 'json',
        data:data,
        url:"http://localhost/coe1401/final1401/coe1401/create.php"
}).then(function(data){
    location.reload();
});
}
function del(id){
    let text = "Delete  id "+id;
    if (confirm(text) == true) {
        // request dell
        let postObj = { 
            id: id, 
        }
        let post = JSON.stringify(postObj)
        const url = "http://localhost/coe1401/final1401/coe1401/delete.php"
        let xhr = new XMLHttpRequest()
        xhr.open('POST', url, true)
        xhr.setRequestHeader('Content-type', 'application/json; charset=UTF-8')
        xhr.send(post);
        xhr.onload = function () {
            if(xhr.status === 200) {
                console.log("Post successfully created!") 
                alert("delete data id "+id+" Succeeded");
                location.reload();
            }
        }
      } 
}
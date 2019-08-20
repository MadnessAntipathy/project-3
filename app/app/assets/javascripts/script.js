$(document).ready(function(){
  Paloma.start();
});

Paloma.controller('Items', {
    index: function(){
        // Executes when Rails Items#index is executed.
        $(".button").click(function() {
            $.ajax({
                url: `/items/optionajax?category="${$(this).text()}"`,
                type: 'GET',
                dataType: 'json',
                success: function(data, textStatus, xhr) {
                    console.log(data[0]);
                    $(".name").text(data[0].name);
                    $(".price").text(data[0].price);
                    $(".picture").attr("src",data[0].picture);

                    let output = document.getElementById('output');
                    while (output.firstChild) {
                        output.firstChild.remove();
                    }
                    for(let i = 0; i < data.length; i++){
                        var newdiv = document.createElement('div');
                        newdiv.innerHTML = `<h2>${data[i].name}</h2> <br /> <p>Price: ${data[i].price}</p> <img src=${data[i].picture} />`;
                        output.appendChild(newdiv);
                    }
                },
                error: function(xhr, textStatus, errorThrown) {
                    console.log('Error in Database');
                }
            })
        })
    }
});
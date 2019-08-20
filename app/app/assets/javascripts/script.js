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
                        var newform = document.createElement("form");
                        newform.setAttribute('method',"POST");
                        newform.setAttribute('action',"/orders");
                        newdiv.innerHTML = `<h2>${data[i].name}</h2> <p>Price: ${data[i].price}</p> <img src=${data[i].picture} />`;
                        var idinput = document.createElement('input');
                        idinput.setAttribute("type", "hidden");
                        idinput.setAttribute("value", `${data[i].id}`);
                        newform.appendChild(idinput);
                        var qtyinput = document.createElement('input');
                        qtyinput.setAttribute("type", "number");
                        qtyinput.setAttribute("min", "0");
                        qtyinput.setAttribute("max", "10");
                        newform.appendChild(qtyinput);
                        var submitbtn = document.createElement('button');
                        submitbtn.setAttribute("type", "submit");
                        submitbtn.setAttribute("value", "submit");
                        submitbtn.innerHTML = "Submit";
                        newform.appendChild(submitbtn);
                        newdiv.appendChild(newform);
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
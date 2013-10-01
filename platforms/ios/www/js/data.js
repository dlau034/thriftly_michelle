var data = [];

var template = Handlebars.compile( $('#template').html() );            

$.getJSON("data.json", function(d) {
    data = d.items

    $("#container").append( template(data) );
});

function addName() {
    console.log("HEREEEE");
    
    var nameElement = document.getElementById("someInput");
    var theName = nameElement.value;
    
    var brandElement = document.getElementById("brand");
    var theBrand = brandElement.value;            
    
    var sizeElement = document.getElementById("size");
    var theSize = sizeElement.value;
                
    var categoryElement = document.getElementById("category");
    var theCategory = categoryElement.value;
    
    var buyElement = document.getElementById("buyInput");
    var theBuy = buyElement.value;
    
    var bidElement = document.getElementById("bidInput");
    var theBid = bidElement.value;

    var descriptionElement = document.getElementById("descriptionInput");
    var theDescription = descriptionElement.value;            
    
    var theImage = smallImage.src;
    
    //var descriptionElement = document.getElementById("endingsoonest");
    //var theMinutes = descriptionElement.value;
    
    data.unshift({ name: theName, brand: theBrand, size: theSize, tag: theCategory, buy_price: theBuy, auction_start: theBid, image: theImage, description: theDescription, time_left:"24h", store: "Housing Works", minutes:"1440" });

    $("#container").html( template(data) );
    filter();
    slider();
    
};  
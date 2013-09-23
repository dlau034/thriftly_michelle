$.ui.blockPageScroll()
$.ui.useOSThemes=false;
$.ui.backButtonText="Back";           

$(".filters").click(function(){
    $.ui.toggleSideMenu(false);
});

var pictureSource;  

function camerapull() {
    $("#addphoto").bind("tap", function(){
                        console.log("CAMERA");
                        getPhoto(pictureSource.PHOTOLIBRARY);
                        });
};


function getPhoto(source) {
    // Retrieve image file location from specified source
    navigator.camera.getPicture(onPhotoURISuccess, onFail, { quality: 50,
                                destinationType: destinationType.FILE_URI,
                                sourceType: source });
}




function doStuff()
{
    var nameElement = document.getElementById("someInput");
    var theName = nameElement.value;
    document.getElementById("someDiv").innerHTML += theName;
}




// Index and applies the filters to the data

function filter(){
    var options = {
        valueNames: [ 'name', 'price', 'category', 'brand' ]
    };

    var featureList = new List('list_feed', options);

    $('#filter-skirt').click(function() {
        console.log("skirt");
         // $.ui.toggleSideMenu(false)
        featureList.filter(function(item) {
            if (item.values().category == "skirt") {                
                return true;
            } else {
                return false;
            }
        });
        return false;
    });

    $('#filter-dress').click(function() {
        console.log("dress");
        // $.ui.toggleSideMenu(false)
        featureList.filter(function(item) {
            if (item.values().category == "dress") {                
                return true;
            } else {
                return false;
            }
        });
        return false;
    });

    $('#filter-shoes').click(function() {
        console.log("shoes");
        // $.ui.toggleSideMenu(false)
        featureList.filter(function(item) {
            if (item.values().category == "shoes") {                
                return true;
            } else {
                return false;
            }
        });
        return false;
    });    

    $('#filter-accessories').click(function() {
        console.log("accessories");
        // $.ui.toggleSideMenu(false)
        featureList.filter(function(item) {
            if (item.values().category == "accessories") {                
                return true;
            } else {
                return false;
            }
        });
        return false;
    });        

    $('#filter-none').click(function() {
        featureList.filter();
        console.log("show all");
        return false;
    });       
    console.log("filter")              
};




// Appframework Carousal 

function slider(){
    var options={
       vertical:false, // page up/down
       horizontal:true, // page left/right
       // pagingDiv:null, // div to hold the dots for paging
       // pagingCssName:"carousel_paging", //classname for the paging dots
       // pagingCssNameSelected: "carousel_paging_selected", //classname for the selected page dots
       wrap:false //Creates a continuous classnamearousel
    }
    var carousel = $(".slide_main").carousel(options);     
    console.log("slider")         
}; 

// When data.json is loaded, filter and slider is index

$(window).load(function() {
    filter();
    slider();
    camerapull();
});
        



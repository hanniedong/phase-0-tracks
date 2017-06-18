$(document).ready(function(){
    $("#button2").click(function(){
        $("ul").hide();
        $("table").hide();
        $("p").hide();
    });
    $("#button1").click(function(){
        $("ul").show();
        $("table").show();
        $("p").show();
    });

    $("img").hover(function(){
        alert("2017 NBA CHAMPIONS.");
    },
    function(){
        alert("THE BEST DANCE TEAM IN THE LEAGUE");
    }); 

});
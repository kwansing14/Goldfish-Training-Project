 console.log("hello world")

document.addEventListener('DOMContentLoaded', function() {

    let elems = document.querySelectorAll('.carousel');
    console.log(elems)
    var instances = M.Carousel.init(elems, {
        fullWidth: true,
        indicators: true
    });

    setInterval(()=>{
        M.Carousel.getInstance(elems[0]).next();
    },5000);

    let elems2 = document.querySelectorAll('.collapsible');
    let instances2 = M.Collapsible.init(elems2);

    let change2 = document.querySelectorAll(".indicator-item");
    change2.forEach((element) => {
        element.setAttribute("style","margin:4px")
    })
});




console.log("hello worlddddddddd")
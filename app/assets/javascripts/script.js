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
});

  console.log("hello worlddddddddd")
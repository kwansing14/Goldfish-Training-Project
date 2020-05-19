 console.log("hello world")

document.addEventListener('DOMContentLoaded', function() {

    let elems = document.querySelectorAll('.carousel');
    console.log(elems)
    var instances = M.Carousel.init(elems, {
        fullWidth: true,
        indicators: true
    });

    // var instance = M.Carousel.init({
    //     fullWidth: true
    // });
    // console.log(instance)
});

  console.log("hello worlddddddddd")
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

    let elems3 = document.querySelectorAll('.materialboxed');
    let instances3 = M.Materialbox.init(elems3);

    var elems4 = document.querySelectorAll('.modal');
    var instances4 = M.Modal.init(elems4);

    // const sideNav = new Sidenav(document.querySelector('.sidenav.sidenav-fixed'));
    // window.addEventListener('resize', (e) => {
    //     if (sideNav.isOpen) {
    //         sideNav.close();
    //         sideNav.open();
    //     }
    // });

    var elems5 = document.querySelectorAll('.sidenav');
    var instances = M.Sidenav.init(elems5);



});

console.log("hello end of the worlddddddddd")
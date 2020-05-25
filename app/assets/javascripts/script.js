console.log("hello world")

document.addEventListener('DOMContentLoaded', function() {

    let elems = document.querySelectorAll('.carousel');
    console.log(elems)
    var instances = M.Carousel.init(elems, {
        fullWidth: true,
        indicators: true
    });

    if (elems.length > 0) {
        console.log()
        setInterval(()=>{
            M.Carousel.getInstance(elems[0]).next();
        },5000);
    }
    let elems2 = document.querySelectorAll('.collapsible');
    let instances2 = M.Collapsible.init(elems2);

    let change2 = document.querySelectorAll(".indicator-item");
    change2.forEach((element) => {
        element.setAttribute("style","margin:4px")
    })

    let elems3 = document.querySelectorAll('.materialboxed');
    let instances3 = M.Materialbox.init(elems3);

    let elems4 = document.querySelectorAll('.modal');
    let instances4 = M.Modal.init(elems4);

    // const sideNav = new Sidenav(document.querySelector('.sidenav.sidenav-fixed'));
    // window.addEventListener('resize', (e) => {
    //     if (sideNav.isOpen) {
    //         sideNav.close();
    //         sideNav.open();
    //     }
    // });

    let elems5 = document.querySelectorAll('.sidenav');
    let instances5 = M.Sidenav.init(elems5);

    //ellipsis detection
    function isEllipsisActive(e) {
     return (e.offsetWidth < e.scrollWidth);
    }

    let elems6 = document.querySelectorAll('.truncate');;
    for(var i=0; i < elems6.length; i++) {
        if ( isEllipsisActive(elems6.item(i)) ) {
            elems6.item(i).setAttribute("class","truncate scrolling")
            console.log(elems6.item(i), elems6.item(i).className);
        }
    }


    console.log("Success!")
});
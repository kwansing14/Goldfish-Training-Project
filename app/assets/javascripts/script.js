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

    let elems5 = document.querySelectorAll('.sidenav');
    let instances5 = M.Sidenav.init(elems5);

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

    console.log(window.matchMedia("(max-width:700px)").matches)

    function myFunction(x) {
        const temp = document.querySelectorAll('.btnflex')
        if (x.matches) { // If media query matches
            temp[0].innerHTML = "<i class='material-icons right'>create</i>";
            temp[1].innerHTML = "<i class='material-icons right'>home</i>";
            temp[2].innerHTML = "<i class='material-icons right'>keyboard_backspace</i>";
            console.log('123')
        } else {
            temp[0].innerHTML = "<i class='material-icons right'>create</i>Comment";
            temp[1].innerHTML = "<i class='material-icons right'>home</i>Home";
            temp[2].innerHTML = "<i class='material-icons right'>keyboard_backspace</i>Back";
            console.log('321')
        }
    }
    var x = window.matchMedia("(max-width: 700px)")
    myFunction(x)
    x.addListener(myFunction)


    console.log("Success!")
});
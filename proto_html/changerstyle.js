function changeStylelight() {
    document.body.style.backgroundColor ="#CDE6F5";
    document.body.style.color = "#554635";
    document.body.style.margin =0;
    document.body.style.padding = 0;
    document.body.style.fontFamily = "Poppins";
    const elem = document.querySelectorAll('h2');
    Array.from(elem).forEach(el => el.style.color = "#554640");
  }
function changeStyledark() {
    document.body.style.backgroundColor ="#111830";
    document.body.style.color = "#b5d0cf";
    document.body.style.margin =0;
    document.body.style.padding = 0;
    document.body.style.fontFamily = "Poppins";
    const elem = document.querySelectorAll('h2');
    Array.from(elem).forEach(el => el.style.color = "#e4e5e7");
}
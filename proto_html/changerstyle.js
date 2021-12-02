function changeStylelight() {
    document.body.style.backgroundColor ="#CDE6F5";
    document.body.style.color = "#554635";
    document.body.style.display = "flex";
    document.body.style.flexDirection = "column";
    document.body.style.alignItems = "center";
    document.body.style.marginLeft = "15px";
    document.body.style.marginRight = "15px";
    document.body.style.paddingRight = "15px";
    document.body.style.paddingLeft = "15px";
    const elem = document.querySelectorAll('h2');
    Array.from(elem).forEach(el => el.style.color = "#554640");
  }
function changeStyledark() {
    document.body.style.backgroundColor ="#111830";
    document.body.style.color = "#b5d0cf";
    document.body.style.display = "flex";
    document.body.style.flexDirection = "column";
    document.body.style.alignItems = "center";
    document.body.style.marginLeft = "15px";
    document.body.style.marginRight = "15px";
    document.body.style.paddingRight = "15px";
    document.body.style.paddingLeft = "15px";
    const elem = document.querySelectorAll('h2');
    Array.from(elem).forEach(el => el.style.color = "#e4e5e7");
}
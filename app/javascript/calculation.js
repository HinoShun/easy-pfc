function calculation (){
  const submit = document.getElementById("submit");
  submit.addEventListener("click", (e) => {
    e.preventDefault();
    
    const form = document.getElementById("form");
    const formData = new FormData(form);
    const XHR = new XMLHttpRequest();

    XHR.open("POST", "/body_data", true);
    XHR.responseType = "json";
    XHR.send(formData);
  });
}
 
 window.addEventListener('load', calculation);
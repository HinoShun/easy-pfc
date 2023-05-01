const buildHTML = (XHR) => {
  const item = XHR.response.body_datum;
  const html = `
    <div class="col_">
      <div class="">基礎代謝</div>
      <div class="">kcal</div>
    </div>

    <div class="col_">
      <div class="">消費カロリー</div>
      <div class="">kcal</div>
    </div>

    <div class="col_">
      <div class="">目標摂取カロリー</div>
      <div class="">kcal</div>
    </div>

    <div class="col_">
      <div class="">P(タンパク質)</div>
      <div class="">g</div>
      <div class="">kcal</div>
    </div>

    <div class="col_">
      <div class="">C(炭水化物)</div>
      <div class="">g</div>
      <div class="">kcal</div>
    </div>

    <div class="col_">
      <div class="">F(脂質)</div>
      <div class="">g</div>
      <div class="">kcal</div>
    </div>`;
  return html;
};


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

    XHR.onload = () => {
      if (XHR.status != 200) {
        alert(`Error ${XHR.status}: ${XHR.statusText}`);
        return null;
      };
      
      const list = document.getElementById("list");
      list.insertAdjacentHTML("afterend", buildHTML(XHR));

      formText.value = "";
    };
  });
}
 
 window.addEventListener('load', calculation);
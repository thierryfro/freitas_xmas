(function main() {
  let gift;
  let address;
  let name;
  let send = false;

  (function getInfo() {
    document.getElementById("gift-product").addEventListener('submit', (e) => {
    e.preventDefault();

    if(document.querySelector('input[name="gift-radio-input"]:checked') === null) {
      return document.getElementById("gift-product").scrollIntoView();
    }
    else if(document.getElementById("name-info").value.length === 0) {
      return alert('Por favor, informe o seu nome!')
    }
    else if(document.getElementById("address").value.length === 0) {
      return alert('Por favor, informe o seu endereço!')
    } else {
        gift = document.querySelector('input[name="gift-radio-input"]:checked');
        name = document.getElementById("name-info").value;
        address = document.getElementById("address").value;
    
        document.getElementById("gift-name").innerText = gift.title;
        document.getElementById("user-address").innerText = address;
        send = true
        return document.querySelector("footer").scrollIntoView();
      };
    });
  })();

  (function sendInfo() {
    document.getElementById("send-info").addEventListener('click', (e) => {
      e.preventDefault();
      if(send) {
        gift = gift.value
        let _data = {
          gift,
          name,
          address,
        }
        fetch('./leeds/create_leed', {
          method: "POST",
          body: JSON.stringify(_data),
          headers: {"Content-type": "application/json; charset=UTF-8"}
        })
        .then(() => window.location.href = "./thanks") 
        .catch(() => alert('Algo saiu errado!'));
      };
    });
  })();
})();

export default main();
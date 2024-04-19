let button = document.getElementById("handleSubmit");

button.onclick = async function(e) {
    e.preventDefault();
    let nome = document.getElementById("nome").value;
    let email = document.getElementById("email").value;
    let telefone = document.getElementById("telefone").value;
    let data = {nome, email, telefone}

    const response = await fetch('http://localhost:3000/api/store/task', {
        method: "POST",
        headers: {"Content-type": "application/json;charset=UTF-8"},
        body: JSON.stringify(data)
    });

    let content = await response.json();
    console.log(content)
    if (content.success) {
        alert("Sucesso")
        window.location.reload();
    } else {
        alert("Não");
    }
}
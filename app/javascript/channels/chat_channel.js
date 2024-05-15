import consumer from "channels/consumer"

const chat = new URLSearchParams(window.location.search).get("chat")
const usuario = new URLSearchParams(window.location.search).get("usuario")

consumer.subscriptions.create({ channel: "ChatChannel", chat: chat, usuario: usuario }, {
    connected() {
        this.input = document.getElementById("input")
        this.chat = document.getElementById("chat")
        const button = document.getElementById("button")
        button.addEventListener("click", this.enviar_mensagem.bind(this))
    },

    disconnected() {
        // Called when the subscription has been terminated by the server
    },

    received(dados) {
        console.log(dados)
        if (dados.usuario != null) {
            this.chat.innerHTML += `<p>${dados.usuario}: ${dados.mensagem}</p>`
        } else {
            this.chat.innerHTML += `<p>${dados.mensagem}</p>`
        }
    },

    enviar_mensagem() {
        this.perform("receive", { mensagem: input.value })
        input.value = ""
    }
});

import { createHash } from "crypto";

function criaHash(senha) {
  return createHash("sha256").update(senha).digest("hex");
}

console.log(criaHash("uma string qualquer"));

class Usuario {
  constructor(nome, senha) {
    this.nome = nome;
    this.hash = criaHash(senha);
  }

  autentica(nome, senha) {
    if (nome === this.nome && this.hash === criaHash(senha)) {
      console.log("usuario autenticado com sucesso");
      return true;
    }
    console.log("Usuario ou senha incorretos");
    return false;
  }
}

const usuario = new Usuario("jenifer", "1234");
console.log(usuario);

//Caso de sucesso
usuario.autentica("jenifer", "1234");

//Caso de fracesso
usuario.autentica("maya", "1234")
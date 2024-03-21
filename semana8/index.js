import User from "./User.js";
import Docente from "./Docente.js";
import Admin from "./Admin.js";

const novoUser = new User("Jenifer", "j@j.com", "2021-01-01");
console.log(novoUser.exibirInfos());

// const novoAdmin = new Admin("Maya", "m@m.com", "2021-02-02");
// console.log(novoAdmin.nome);
// novoAdmin.nome = "teste";
// console.log(novoAdmin.nome);

const novoDocente = new Docente("Maria", "ma@ma.com", "2021-01-01");
console.log(novoDocente.exibirInfos());

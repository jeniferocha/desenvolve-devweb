const user = {
  nome: "Jenifer",
  email: "j@j.com",
  nascimento: "20/05/1991",
  role: "estudante",
  ativo: true,
  exibirInfos: function () {
    console.log(this.nome, this.email);
  },
};

const admin = {
  nome: "Maya",
  email: "m@m.com",
  role: "admin",
  criarCurso() {
    console.log("cruso criado!");
  },
};

Object.setPrototypeOf(admin, user);
admin.criarCurso();
admin.exibirInfos();

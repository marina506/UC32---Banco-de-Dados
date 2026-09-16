CREATE TABLE `livros` (
  `id_livro` integer PRIMARY KEY,
  `titulo` varchar(255) NOT NULL,
  `ano_publicacao` integer,
  `genero` varchar(255),
  `quantidade` integer,
  `id_autor` integer NOT NULL
);

CREATE TABLE `autores` (
  `id_autor` integer PRIMARY KEY,
  `nome` varchar(255) NOT NULL,
  `nacionalidade` varchar(255)
);

CREATE TABLE `leitores` (
  `id_leitor` integer PRIMARY KEY,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255),
  `telefone` varchar(255)
);

CREATE TABLE `emprestimos` (
  `id_emprestimo` integer PRIMARY KEY,
  `id_livro` integer NOT NULL,
  `id_leitor` integer NOT NULL,
  `data_emprestimo` date NOT NULL,
  `data_devolucao` date
);

ALTER TABLE `livros` ADD FOREIGN KEY (`id_autor`) REFERENCES `autores` (`id_autor`);

ALTER TABLE `emprestimos` ADD FOREIGN KEY (`id_livro`) REFERENCES `livros` (`id_livro`);

ALTER TABLE `emprestimos` ADD FOREIGN KEY (`id_leitor`) REFERENCES `leitores` (`id_leitor`);

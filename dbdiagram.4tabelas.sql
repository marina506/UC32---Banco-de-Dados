CREATE TABLE `alunos` (
  `id` integer PRIMARY KEY,
  `nome` varchar(255),
  `email` varchar(255),
  `created_at` timestamp
);

CREATE TABLE `professor` (
  `id` integer PRIMARY KEY,
  `username` varchar(255),
  `role` varchar(255),
  `created_at` timestamp
);

CREATE TABLE `disciplina` (
  `id` integer PRIMARY KEY,
  `title` varchar(255),
  `user_id` integer NOT NULL,
  `status` varchar(255),
  `created_at` timestamp
);

CREATE TABLE `matricula` (
  `id` integer PRIMARY KEY,
  `aluno_id` integer NOT NULL,
  `disciplina_id` integer NOT NULL,
  `professor_id` integer NOT NULL,
  `created_at` timestamp
);

ALTER TABLE `disciplina` ADD FOREIGN KEY (`user_id`) REFERENCES `professor` (`id`);

ALTER TABLE `matricula` ADD FOREIGN KEY (`aluno_id`) REFERENCES `alunos` (`id`);

ALTER TABLE `matricula` ADD FOREIGN KEY (`disciplina_id`) REFERENCES `disciplina` (`id`);

ALTER TABLE `matricula` ADD FOREIGN KEY (`professor_id`) REFERENCES `professor` (`id`);

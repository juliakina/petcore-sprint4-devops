-- Senha padrao dos usuarios de teste: Petcore123
-- Hash BCrypt: $2y$10$XZG0OV7wJTj2DRVbZy/.7eIPAG.97nD2X9DaNyri.vXf2R95ry7hS


-- =========================================================
-- TUTORES
-- =========================================================

insert into tutor_petcore
(nome,data_nascimento,telefone,email,sexo,senha,url_img)
values
('Ana Souza', DATE '1991-04-12','11981000001','ana.souza@petcore.com','F',
'$2y$10$XZG0OV7wJTj2DRVbZy/.7eIPAG.97nD2X9DaNyri.vXf2R95ry7hS',null);

insert into tutor_petcore
(nome,data_nascimento,telefone,email,sexo,senha,url_img)
values
('Bruno Lima', DATE '1988-11-23','11981000002','bruno.lima@petcore.com','M',
'$2y$10$XZG0OV7wJTj2DRVbZy/.7eIPAG.97nD2X9DaNyri.vXf2R95ry7hS',null);

insert into tutor_petcore
(nome,data_nascimento,telefone,email,sexo,senha,url_img)
values
('Camila Rocha', DATE '1995-02-18','11981000003','camila.rocha@petcore.com','F',
'$2y$10$XZG0OV7wJTj2DRVbZy/.7eIPAG.97nD2X9DaNyri.vXf2R95ry7hS',null);

insert into tutor_petcore
(nome,data_nascimento,telefone,email,sexo,senha,url_img)
values
('Diego Martins', DATE '1987-07-30','11981000004','diego.martins@petcore.com','M',
'$2y$10$XZG0OV7wJTj2DRVbZy/.7eIPAG.97nD2X9DaNyri.vXf2R95ry7hS',null);

insert into tutor_petcore
(nome,data_nascimento,telefone,email,sexo,senha,url_img)
values
('Fernanda Alves', DATE '1993-09-05','11981000005','fernanda.alves@petcore.com','F',
'$2y$10$XZG0OV7wJTj2DRVbZy/.7eIPAG.97nD2X9DaNyri.vXf2R95ry7hS',null);


-- =========================================================
-- MEDICOS
-- =========================================================

insert into medico_petcore
(nome,data_nascimento,telefone,email,sexo,senha,especialidade,url_img)
values
('Mariana Costa', DATE '1984-03-14','11982000001','mariana.costa@petcore.com','F',
'$2y$10$XZG0OV7wJTj2DRVbZy/.7eIPAG.97nD2X9DaNyri.vXf2R95ry7hS',
'Clinica Geral',null);

insert into medico_petcore
(nome,data_nascimento,telefone,email,sexo,senha,especialidade,url_img)
values
('Beatriz Nunes', DATE '1989-06-27','11982000002','beatriz.nunes@petcore.com','F',
'$2y$10$XZG0OV7wJTj2DRVbZy/.7eIPAG.97nD2X9DaNyri.vXf2R95ry7hS',
'Dermatologia Veterinaria',null);

insert into medico_petcore
(nome,data_nascimento,telefone,email,sexo,senha,especialidade,url_img)
values
('Rafael Mendes', DATE '1981-12-09','11982000003','rafael.mendes@petcore.com','M',
'$2y$10$XZG0OV7wJTj2DRVbZy/.7eIPAG.97nD2X9DaNyri.vXf2R95ry7hS',
'Cardiologia Veterinaria',null);

insert into medico_petcore
(nome,data_nascimento,telefone,email,sexo,senha,especialidade,url_img)
values
('Lucas Ferreira', DATE '1986-08-16','11982000004','lucas.ferreira@petcore.com','M',
'$2y$10$XZG0OV7wJTj2DRVbZy/.7eIPAG.97nD2X9DaNyri.vXf2R95ry7hS',
'Ortopedia Veterinaria',null);

insert into medico_petcore
(nome,data_nascimento,telefone,email,sexo,senha,especialidade,url_img)
values
('Juliana Prado', DATE '1990-01-21','11982000005','juliana.prado@petcore.com','F',
'$2y$10$XZG0OV7wJTj2DRVbZy/.7eIPAG.97nD2X9DaNyri.vXf2R95ry7hS',
'Diagnostico por Imagem',null);


-- =========================================================
-- HISTORICOS
-- =========================================================

insert into historico_petcore(data,status)
values (TIMESTAMP '2026-08-10 09:00:00',0);

insert into historico_petcore(data,status)
values (TIMESTAMP '2026-08-11 10:00:00',0);

insert into historico_petcore(data,status)
values (TIMESTAMP '2026-08-12 11:00:00',0);

insert into historico_petcore(data,status)
values (TIMESTAMP '2026-08-13 09:30:00',0);

insert into historico_petcore(data,status)
values (TIMESTAMP '2026-08-14 14:00:00',0);

insert into historico_petcore(data,status)
values (TIMESTAMP '2026-08-15 15:30:00',0);

insert into historico_petcore(data,status)
values (TIMESTAMP '2026-08-16 08:45:00',0);

insert into historico_petcore(data,status)
values (TIMESTAMP '2026-08-17 13:15:00',0);

insert into historico_petcore(data,status)
values (TIMESTAMP '2026-08-18 16:20:00',0);


-- =========================================================
-- PETS
-- =========================================================

insert into pet_petcore
(nome,especie,raca,data_nascimento,pelagem,porte,sexo,status,url_img,"ID_hist_(FK)")
values
('Thor','Cachorro','Golden Retriever',DATE '2021-03-10','Dourada','GRANDE','M',0,null,1);

insert into pet_petcore
(nome,especie,raca,data_nascimento,pelagem,porte,sexo,status,url_img,"ID_hist_(FK)")
values
('Mel','Cachorro','Shih Tzu',DATE '2022-07-18','Branca e marrom','PEQUENO','F',0,null,2);

insert into pet_petcore
(nome,especie,raca,data_nascimento,pelagem,porte,sexo,status,url_img,"ID_hist_(FK)")
values
('Nina','Gato','Siames',DATE '2020-01-25','Clara e escura','MEDIO','F',0,null,3);

insert into pet_petcore
(nome,especie,raca,data_nascimento,pelagem,porte,sexo,status,url_img,"ID_hist_(FK)")
values
('Bob','Cachorro','Beagle',DATE '2019-11-03','Tricolor','MEDIO','M',0,null,4);

insert into pet_petcore
(nome,especie,raca,data_nascimento,pelagem,porte,sexo,status,url_img,"ID_hist_(FK)")
values
('Luna','Gato','Persa',DATE '2023-02-11','Cinza longa','PEQUENO','F',0,null,5);

insert into pet_petcore
(nome,especie,raca,data_nascimento,pelagem,porte,sexo,status,url_img,"ID_hist_(FK)")
values
('Simba','Gato','Maine Coon',DATE '2018-06-22','Marrom longa','GRANDE','M',0,null,6);

insert into pet_petcore
(nome,especie,raca,data_nascimento,pelagem,porte,sexo,status,url_img,"ID_hist_(FK)")
values
('Theo','Cachorro','Bulldog Frances',DATE '2021-09-14','Caramelo','MEDIO','M',0,null,7);

insert into pet_petcore
(nome,especie,raca,data_nascimento,pelagem,porte,sexo,status,url_img,"ID_hist_(FK)")
values
('Amora','Cachorro','Border Collie',DATE '2020-05-30','Preta e branca','MEDIO','F',0,null,8);

insert into pet_petcore
(nome,especie,raca,data_nascimento,pelagem,porte,sexo,status,url_img,"ID_hist_(FK)")
values
('Bento','Cachorro','Labrador',DATE '2022-12-08','Preta curta','GRANDE','M',0,null,9);


-- =========================================================
-- RELACIONAMENTO TUTOR / PET
-- =========================================================

insert into tut_pet_petcore("ID_tut_(FK)","ID_pet_(FK)") values (1,1);
insert into tut_pet_petcore("ID_tut_(FK)","ID_pet_(FK)") values (1,2);
insert into tut_pet_petcore("ID_tut_(FK)","ID_pet_(FK)") values (1,3);
insert into tut_pet_petcore("ID_tut_(FK)","ID_pet_(FK)") values (2,4);
insert into tut_pet_petcore("ID_tut_(FK)","ID_pet_(FK)") values (2,5);
insert into tut_pet_petcore("ID_tut_(FK)","ID_pet_(FK)") values (3,6);
insert into tut_pet_petcore("ID_tut_(FK)","ID_pet_(FK)") values (4,7);
insert into tut_pet_petcore("ID_tut_(FK)","ID_pet_(FK)") values (5,8);
insert into tut_pet_petcore("ID_tut_(FK)","ID_pet_(FK)") values (5,9);


-- =========================================================
-- ENDERECOS
-- =========================================================

insert into endereco_petcore(cep,complemento) values ('04309010','Sala 12');
insert into endereco_petcore(cep,complemento) values ('04037002','Bloco B');
insert into endereco_petcore(cep,complemento) values ('01503001',null);
insert into endereco_petcore(cep,complemento) values ('05001000','Conjunto 51');
insert into endereco_petcore(cep,complemento) values ('03310000','Sala terrea');


-- =========================================================
-- CLINICAS
-- =========================================================

insert into clinica_petcore(cnpj,nome,"ID_end_(FK)")
values ('12345678000101','PetCare Jabaquara',1);

insert into clinica_petcore(cnpj,nome,"ID_end_(FK)")
values ('23456789000112','Vet Saude Paulista',2);

insert into clinica_petcore(cnpj,nome,"ID_end_(FK)")
values ('34567890000123','Clinica Animal Vida',3);

insert into clinica_petcore(cnpj,nome,"ID_end_(FK)")
values ('45678901000134','Centro Veterinario Oeste',4);

insert into clinica_petcore(cnpj,nome,"ID_end_(FK)")
values ('56789012000145','Pet Mais Tatuape',5);


-- =========================================================
-- MEDICAMENTOS
-- =========================================================

insert into medicamento_petcore(nome,dosagem) values ('Dipirona','500mg');
insert into medicamento_petcore(nome,dosagem) values ('Amoxicilina','250mg');
insert into medicamento_petcore(nome,dosagem) values ('Cefalexina','500mg');
insert into medicamento_petcore(nome,dosagem) values ('Prednisona','20mg');
insert into medicamento_petcore(nome,dosagem) values ('Meloxicam','2mg');
insert into medicamento_petcore(nome,dosagem) values ('Omeprazol','20mg');
insert into medicamento_petcore(nome,dosagem) values ('Doxiciclina','100mg');
insert into medicamento_petcore(nome,dosagem) values ('Metronidazol','250mg');
insert into medicamento_petcore(nome,dosagem) values ('Carprofeno','25mg');
insert into medicamento_petcore(nome,dosagem) values ('Gabapentina','100mg');


-- =========================================================
-- PRONTUARIOS
-- =========================================================

insert into prontuario_petcore(data,descricao,"ID_med_(PK)","ID_hist_(PK)")
values (TIMESTAMP '2026-08-25 10:30:00',
'Consulta clinica e avaliacao dos resultados do hemograma.',1,1);

insert into prontuario_petcore(data,descricao,"ID_med_(PK)","ID_hist_(PK)")
values (TIMESTAMP '2026-08-27 12:00:00',
'Avaliacao dermatologica com orientacoes para tratamento de pele.',2,2);

insert into prontuario_petcore(data,descricao,"ID_med_(PK)","ID_hist_(PK)")
values (TIMESTAMP '2026-08-29 15:00:00',
'Avaliacao cardiologica apos realizacao de ecocardiograma.',3,3);

insert into prontuario_petcore(data,descricao,"ID_med_(PK)","ID_hist_(PK)")
values (TIMESTAMP '2026-09-01 11:30:00',
'Avaliacao ortopedica apos exame de imagem da pata traseira.',4,4);

insert into prontuario_petcore(data,descricao,"ID_med_(PK)","ID_hist_(PK)")
values (TIMESTAMP '2026-09-02 17:00:00',
'Consulta de retorno com analise do exame de ultrassom abdominal.',5,5);

insert into prontuario_petcore(data,descricao,"ID_med_(PK)","ID_hist_(PK)")
values (TIMESTAMP '2026-09-04 09:30:00',
'Consulta clinica para acompanhamento de alteracoes hematologicas.',1,6);

insert into prontuario_petcore(data,descricao,"ID_med_(PK)","ID_hist_(PK)")
values (TIMESTAMP '2026-09-05 14:00:00',
'Avaliacao ortopedica por dificuldade leve de locomocao.',4,7);

insert into prontuario_petcore(data,descricao,"ID_med_(PK)","ID_hist_(PK)")
values (TIMESTAMP '2026-09-07 16:00:00',
'Consulta preventiva e avaliacao clinica geral anual.',1,8);


-- =========================================================
-- EXAMES
-- No Oracle: false = 0
-- =========================================================

insert into exame_petcore
(nome_ex,data,tp_ex,removido,"ID_med_(PK)","ID_pront_(PK)","ID_pet_(FK)")
values ('Hemograma completo',TIMESTAMP '2026-08-25 09:00:00',
'Laboratorial',0,1,1,1);

insert into exame_petcore
(nome_ex,data,tp_ex,removido,"ID_med_(PK)","ID_pront_(PK)","ID_pet_(FK)")
values ('Avaliacao dermatologica',TIMESTAMP '2026-08-27 11:00:00',
'Dermatologico',0,2,2,2);

insert into exame_petcore
(nome_ex,data,tp_ex,removido,"ID_med_(PK)","ID_pront_(PK)","ID_pet_(FK)")
values ('Ecocardiograma',TIMESTAMP '2026-08-29 14:00:00',
'Cardiologico',0,3,3,3);

insert into exame_petcore
(nome_ex,data,tp_ex,removido,"ID_med_(PK)","ID_pront_(PK)","ID_pet_(FK)")
values ('Radiografia da pata',TIMESTAMP '2026-09-01 10:30:00',
'Imagem',0,4,4,4);

insert into exame_petcore
(nome_ex,data,tp_ex,removido,"ID_med_(PK)","ID_pront_(PK)","ID_pet_(FK)")
values ('Ultrassom abdominal',TIMESTAMP '2026-09-02 16:00:00',
'Imagem',0,5,5,5);

insert into exame_petcore
(nome_ex,data,tp_ex,removido,"ID_med_(PK)","ID_pront_(PK)","ID_pet_(FK)")
values ('Hemograma de controle',TIMESTAMP '2026-09-04 08:30:00',
'Laboratorial',0,1,6,6);

insert into exame_petcore
(nome_ex,data,tp_ex,removido,"ID_med_(PK)","ID_pront_(PK)","ID_pet_(FK)")
values ('Avaliacao ortopedica',TIMESTAMP '2026-09-05 13:00:00',
'Ortopedico',0,4,7,7);

insert into exame_petcore
(nome_ex,data,tp_ex,removido,"ID_med_(PK)","ID_pront_(PK)","ID_pet_(FK)")
values ('Avaliacao clinica anual',TIMESTAMP '2026-09-07 15:00:00',
'Clinico Geral',0,1,8,8);

insert into exame_petcore
(nome_ex,data,tp_ex,removido,"ID_med_(PK)","ID_pront_(PK)","ID_pet_(FK)")
values ('Retorno dermatologico',TIMESTAMP '2026-09-15 10:00:00',
'Dermatologico',0,2,null,9);

insert into exame_petcore
(nome_ex,data,tp_ex,removido,"ID_med_(PK)","ID_pront_(PK)","ID_pet_(FK)")
values ('Ecocardiograma de retorno',TIMESTAMP '2026-09-20 09:00:00',
'Cardiologico',0,3,null,1);


-- =========================================================
-- RECEITAS
-- No Oracle: false = 0
-- =========================================================

insert into receita_petcore
(nome,descricao,instrucao,data,validade,removida,"ID_med_(PK)","ID_pront_(PK)","ID_pet_(FK)")
values
('Tratamento pos-exame',
'Medicacao para controle de dor e prevencao de infeccao.',
'Administrar apos alimentacao.',
TIMESTAMP '2026-08-25 11:00:00',
DATE '2026-10-25',
0,1,1,1);

insert into receita_petcore
(nome,descricao,instrucao,data,validade,removida,"ID_med_(PK)","ID_pront_(PK)","ID_pet_(FK)")
values
('Tratamento dermatologico',
'Tratamento para irritacao e infeccao superficial da pele.',
'Administrar conforme orientacao medica.',
TIMESTAMP '2026-08-27 13:00:00',
DATE '2026-10-27',
0,2,2,2);

insert into receita_petcore
(nome,descricao,instrucao,data,validade,removida,"ID_med_(PK)","ID_pront_(PK)","ID_pet_(FK)")
values
('Suporte cardiologico',
'Medicacao de suporte durante acompanhamento cardiologico.',
'Administrar nos horarios prescritos.',
TIMESTAMP '2026-08-29 16:00:00',
DATE '2026-11-29',
0,3,3,3);

insert into receita_petcore
(nome,descricao,instrucao,data,validade,removida,"ID_med_(PK)","ID_pront_(PK)","ID_pet_(FK)")
values
('Controle de dor ortopedica',
'Tratamento para dor e inflamacao decorrente de lesao leve.',
'Administrar junto com alimento.',
TIMESTAMP '2026-09-01 12:00:00',
DATE '2026-10-01',
0,4,4,4);

insert into receita_petcore
(nome,descricao,instrucao,data,validade,removida,"ID_med_(PK)","ID_pront_(PK)","ID_pet_(FK)")
values
('Protecao gastrica',
'Medicacao para protecao gastrica durante o tratamento.',
'Administrar antes da primeira refeicao.',
TIMESTAMP '2026-09-02 17:30:00',
DATE '2026-10-02',
0,5,5,5);

insert into receita_petcore
(nome,descricao,instrucao,data,validade,removida,"ID_med_(PK)","ID_pront_(PK)","ID_pet_(FK)")
values
('Tratamento de controle',
'Medicacao complementar para acompanhamento hematologico.',
'Administrar uma vez ao dia.',
TIMESTAMP '2026-09-04 10:00:00',
DATE '2026-10-04',
0,1,6,6);

insert into receita_petcore
(nome,descricao,instrucao,data,validade,removida,"ID_med_(PK)","ID_pront_(PK)","ID_pet_(FK)")
values
('Tratamento ortopedico',
'Medicacao para controle de dor durante a recuperacao.',
'Administrar a cada doze horas.',
TIMESTAMP '2026-09-05 14:30:00',
DATE '2026-10-05',
0,4,7,7);

insert into receita_petcore
(nome,descricao,instrucao,data,validade,removida,"ID_med_(PK)","ID_pront_(PK)","ID_pet_(FK)")
values
('Prevencao anual',
'Medicacao preventiva apos avaliacao clinica de rotina.',
'Administrar conforme prescricao.',
TIMESTAMP '2026-09-07 16:30:00',
DATE '2026-11-07',
0,1,8,8);


-- =========================================================
-- RECEITA / MEDICAMENTO
-- =========================================================

insert into rec_medic_petcore("ID_rec_(FK)","ID_medic_(FK)") values (1,1);
insert into rec_medic_petcore("ID_rec_(FK)","ID_medic_(FK)") values (1,2);
insert into rec_medic_petcore("ID_rec_(FK)","ID_medic_(FK)") values (2,3);
insert into rec_medic_petcore("ID_rec_(FK)","ID_medic_(FK)") values (2,4);
insert into rec_medic_petcore("ID_rec_(FK)","ID_medic_(FK)") values (3,6);
insert into rec_medic_petcore("ID_rec_(FK)","ID_medic_(FK)") values (3,10);
insert into rec_medic_petcore("ID_rec_(FK)","ID_medic_(FK)") values (4,5);
insert into rec_medic_petcore("ID_rec_(FK)","ID_medic_(FK)") values (4,9);
insert into rec_medic_petcore("ID_rec_(FK)","ID_medic_(FK)") values (5,6);
insert into rec_medic_petcore("ID_rec_(FK)","ID_medic_(FK)") values (5,8);
insert into rec_medic_petcore("ID_rec_(FK)","ID_medic_(FK)") values (6,1);
insert into rec_medic_petcore("ID_rec_(FK)","ID_medic_(FK)") values (6,7);
insert into rec_medic_petcore("ID_rec_(FK)","ID_medic_(FK)") values (7,5);
insert into rec_medic_petcore("ID_rec_(FK)","ID_medic_(FK)") values (7,10);
insert into rec_medic_petcore("ID_rec_(FK)","ID_medic_(FK)") values (8,1);
insert into rec_medic_petcore("ID_rec_(FK)","ID_medic_(FK)") values (8,6);


-- =========================================================
-- RELATORIOS
-- =========================================================

insert into relatorio_petcore
(observacao,data,"ID_hist_(PK)","ID_med_(PK)")
values
('Animal apresentou boa resposta ao tratamento e deve manter acompanhamento de rotina.',
TIMESTAMP '2026-08-25 11:30:00',1,1);

insert into relatorio_petcore
(observacao,data,"ID_hist_(PK)","ID_med_(PK)")
values
('Lesao dermatologica em melhora, mantendo tratamento e retorno programado.',
TIMESTAMP '2026-08-27 13:30:00',2,2);

insert into relatorio_petcore
(observacao,data,"ID_hist_(PK)","ID_med_(PK)")
values
('Exame cardiologico sem alteracoes graves, recomendado acompanhamento periodico.',
TIMESTAMP '2026-08-29 16:30:00',3,3);

insert into relatorio_petcore
(observacao,data,"ID_hist_(PK)","ID_med_(PK)")
values
('Quadro ortopedico leve e com boa evolucao durante o tratamento.',
TIMESTAMP '2026-09-01 12:30:00',4,4);

insert into relatorio_petcore
(observacao,data,"ID_hist_(PK)","ID_med_(PK)")
values
('Ultrassom sem alteracoes importantes, manter acompanhamento preventivo.',
TIMESTAMP '2026-09-02 18:00:00',5,5);

insert into relatorio_petcore
(observacao,data,"ID_hist_(PK)","ID_med_(PK)")
values
('Resultados laboratoriais estaveis e dentro do esperado para o acompanhamento.',
TIMESTAMP '2026-09-04 10:30:00',6,1);

insert into relatorio_petcore
(observacao,data,"ID_hist_(PK)","ID_med_(PK)")
values
('Mobilidade apresentou melhora apos tratamento e periodo de repouso.',
TIMESTAMP '2026-09-05 15:00:00',7,4);

insert into relatorio_petcore
(observacao,data,"ID_hist_(PK)","ID_med_(PK)")
values
('Consulta preventiva sem alteracoes clinicas relevantes no momento.',
TIMESTAMP '2026-09-07 17:00:00',8,1);


-- =========================================================
-- CLINICA / RELATORIO
-- =========================================================

insert into cli_rel_petcore("ID_cli_(FK)","ID_rel_(FK)") values (1,1);
insert into cli_rel_petcore("ID_cli_(FK)","ID_rel_(FK)") values (1,6);
insert into cli_rel_petcore("ID_cli_(FK)","ID_rel_(FK)") values (2,2);
insert into cli_rel_petcore("ID_cli_(FK)","ID_rel_(FK)") values (2,8);
insert into cli_rel_petcore("ID_cli_(FK)","ID_rel_(FK)") values (3,3);
insert into cli_rel_petcore("ID_cli_(FK)","ID_rel_(FK)") values (4,4);
insert into cli_rel_petcore("ID_cli_(FK)","ID_rel_(FK)") values (4,7);
insert into cli_rel_petcore("ID_cli_(FK)","ID_rel_(FK)") values (5,5);

COMMIT;
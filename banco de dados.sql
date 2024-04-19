create table db_tasks;
use db_tasks;
create table tasks(
	id INT PRIMARY KEY auto_increment, 
    nome VARCHAR(255),
    telefone VARCHAR(255) NOT NULL
);
select*from tasks;
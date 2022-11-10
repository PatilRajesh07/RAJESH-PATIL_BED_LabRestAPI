insert into users (user_id,password, username) values (1,'$2a$15$87ZyZrg37tqCz20Z9b6QjeNtBm55zqXFVqSmfrkioYaq7Bjw7qai6', 'admin');
insert into users (user_id,password, username) values (2,'$2a$15$Su1lrxlFLbkrKdUhaUfew.IqWNxOnvaLMDdBYbhbt7Rzg7mxkUmnK', 'user');

insert into roles (role_id,name) values(1,'ADMIN');
insert into roles (role_id,name) values(2,'USER');

insert into users_roles (user_id, role_id) values (1, 1);
insert into users_roles (user_id, role_id) values (2, 2);


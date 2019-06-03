use codeup_test_db;
show tables;

-- CREATE
insert into quotes (content, author_id) values('It''s quote', 1);
insert into quotes (content, author_id) values(1, "asdadasd");

insert into quotes (id, content, author_id) values(8, "asdadasd", 1);


-- READ

select * from quotes;

select id,content,author_id -- what
from quotes  -- from where, which table
where content = 'My quote'; -- where conditions are met

-- if(author_id >= 2 && author_id <= 3)
select *
from quotes
where author_id >= 2
  and author_id <= 3;

SELECT 'I am output!' AS 'Info';


update quotes
set content = 'Something important' where id = 7;

update quotes
set content = 'fer' , author_id = 3
where id = 8;

delete from quotes where author_id = 11;

show tables;

select * from users;

truncate users;






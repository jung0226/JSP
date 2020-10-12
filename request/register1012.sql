--테이블 목록확인
select *from tab;
select  * from user_sequences;

create SEQUENCE a_sq
start with 1
increment by 1;

select * from register;
insert into register values(a_sq.nextval, 'hong1234','1234','홍길동','M',
to_date('2012-10-10','YYYY-MM-DD'),'010-1234-5678','honggildong@nate.com',
'서울시 종로구 숭인로','1234-5555',sysdate);

commit;

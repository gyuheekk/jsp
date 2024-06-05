show tables;

create table WebMessage (
	idx int not null auto_increment, 		/* 메세지 고유번호 */
	title varchar(100) not null, 		 		/* 메세지 제목 */
	content text not null, 					 		/* 메세지 내용 */
	sendId varchar(20) not null,		 		/* 보내는 사람 아이디 */
	sendSw char(1) not null default 's',				 		/* 보낸메세지(s), 휴지통(g), 휴지통삭제(x) 표시 */
	sendDate datetime default now(), 		/* 메세지 보낸날짜 */ 
	receiveId varchar(20) not null ,  		/* 받는 사람 아이디 */
	receiveSw char(1) not null default 'n',			 		/* 받은메세지(n), 읽은메세지(r), 휴지통(g), 휴지통삭제(x) 표시 */
	receiveDate datetime default now(), /* 메세지 받은날짜/읽은날짜 */
	primary key(idx),
	foreign key(sendId) references member(mid),
	foreign key(receiveId) references member(mid)
);
drop table webMessage; 
desc webMessage;

insert into webMessage values (default,'안녕 아톰!','이번주 주말에 뭐하니?','hkd1234',default,default,'atom','r',default);
insert into webMessage values (default,'반가워 길동아!','이번주 주말프로젝트 작업으로 바빠 ㅠㅠ','atom',default,default,'hkd1234','r',default);
insert into webMessage values (default,'놀자고 할라했지','그치만 바쁘면 다음에 보자','hkd1234',default,default,'atom',default,default);
insert into webMessage values (default,'으아익 아쉬워','프로젝트 끝나면 만나자','atom',default,default,'hkd1234','r',default);
insert into webMessage values (default,'비톰바보','비톰 연락을 왜 이렇게 안봐!!','atom',default,default,'btom',default,default);
insert into webMessage values (default,'아톰안녕','니가 더 바보같아','btom',default,default,'atom','r',default);
insert into webMessage values (default,'미워','바보라니 진짜 상처받았어 나','atom',default,default,'btom',default,default);

select *,timestampdiff(hour, sendDate, now()) as hour_diff from webMessage where receiveId='atom' and (receiveSw='n' or receiveSw='r') order by idx desc;

select * from webMessage;

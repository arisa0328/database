create table message(message_id integer,contents text,usermoto_id text,usersaki_id text,team_id text,datatime text);
create table team(team_id text,teamname text);
create table note(note_id text,contents text,user_id text,datatime text);
create table album(album_id text,user_id text,team_id text);
create table photo(photo_id text,user_id text,album_id text);
create table user(user_id text,phonenumber integer,username text,mailadress text);
create table read(message_id integer,user_id text);
create table belong(team_id text,user_id text);
create table append(usermoto_id text,usersaki_id text);
create table call(usermoto_id text,usersaki_id text,datatime text);
create table favorite(note_id text,user_id text);
create table friends(me_id text,others_id text);

insert into message values(1,'ありがとう','kane_1','arisa_1','NULL','2019-3-3');
insert into message values(2,'お誕生日おめだとう','arisa_2','kotono_3','NULL','2019-12-3');
insert into message values(3,'早く元気になってね','arisa_2','kana_1','NULL','2019-12-14');
insert into message values(4,'皆に会いたいな','kotono_3','NULL','banana_3','2018-3-9');
insert into message values(5,'入り口で待ってるね','kotono_3','arisa_2','NULL','2018-4-5');
insert into message values(6,'プレゼントありがとう','kotono_3','arisa_2','NULL','2019-12-3');
insert into message values(7,'お腹が痛い','arisa_2','kotono_3','NULL','2017-11-8');
insert into message values(8,'風邪ひいた','kana_1','arisa_2','NULL','2019-12-2');
insert into message values(9,'初めまして','kotono_3','kana_1','NULL','2019-10-9');
insert into message values(10,'これから仲良くしてね','kana_1','kotono_3','NULL','2019-10-12');
insert into message values(11,'寒いね','kotono_3','kana_1','NULL','2019-11-11');

insert into friends values('kana_1','arisa_2');
insert into friends values('kana_1','kotono_3');
insert into friends values('arisa_2','kana_1');
insert into friends values('arisa_2','kotono_3');
insert into friends values('kotono_3','kana_1');
insert into friends values('kotono_3','arisa_2');








insert into team values('ringo_1','ringo');
insert into team values('ichigo_2','ichigo');
insert into team values('banana_3','banana');

insert into note values('note_1','予定調整','kotono_3','2018/1/1');
insert into note values('note_2','夜ごはん','kana_1','2019/2/2');
insert into note values('note_3','ケーキ練の連絡','arisa_2','2019/10/10');


insert into album values('album_1','kana_1','ichigo_2');
insert into album values('album_2','arisa_2','ringo_1');
insert into album values('album_3','kotono_3','banana_3');

insert into photo values('photo_1','kotono_3','album_3');
insert into photo values('photo_2','kana_1','album_1');
insert into photo values('photo_3','arisa_2','album_2');	


insert into user values('kana_1',08011111111,'kana','kana0125@gmai.com');
insert into user values('arisa_2',080222222222,'arisa','arisa0328@gmai.com');
insert into user values('kotono_3',08033333333,'kotono','kotono1203@gmai.com');
  

insert into read values(1,'arisa_2');
insert into read values(2,'kotono_3');
insert into read values(3,'kana_1');
  	
insert into belong values('ringo_1','arisa_2');
insert into belong values('ichigo_2','kana_1');
insert into belong values('banana_3','kotono_3');
insert into belong values('ringo_1','kotono_3');
insert into belong values('ringo_1','kana_1');
insert into belong values('ichigo_2','arisa_2');
insert into belong values('banana_3','arisa_2');

insert into append values('arisa_2','kana_1');
insert into append values('kotono_3','arisa_2');
insert into append values('kana_1','kotono_3');

insert into call values('kana_1','kotono_3','2018/3/3');
insert into call values('arisa_2','kana_1','2017/3/3');
insert into call values('kotono_3','arisa_2','2013/2/1');

insert into favorite values('note_2','kana_1');
insert into favorite values('note_3','kana_1');
insert into favorite values('note_1','kotono_3');
insert into favorite values('note_3','kotono_3');
insert into favorite values('note_1','arisa_2');
insert into favorite values('note_2','arisa_2');



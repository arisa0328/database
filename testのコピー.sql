create table message(message_id integer,contents text,usermoto_id text,usersaki_id text,group_id text);
create table gru(gru_id text,gruname text);
create table note(note_id text,contents text,user_id text,datatime text);
create table album(album_id text,user_id text,group_id text);
create table photo(photo_id text,user_id text,album_id text);
create table user(user_id text,phonenumber integer,username text,mailadress text);
create table read(message_id integer,user_id text);
create table belong(group_id text,user_id text);
create table append(usermoto_id text,usersaki_id text);
create table call(usermoto_id text,usersaki_id text,datatime text);

insert into message values(1,'ありがとう','kane_1','arisa_1','NULL');
insert into message values(2,'お誕生日おめだとう','arisa_2','kotono_3','NULL');
insert into message values(3,'早く元気になってね','arisa_2','kana_1','NULL');
insert into message values(4,'皆に会いたいな','kotono_3','NULL','ばなな_3');

insert into group values('りんご_1','りんご');
insert into group values('いちご_2','いちご');
insert into group values('ばなな_3','ばなな');

insert into note values('note_1','予定調整','kotono_3','2018/1/1');
insert into note values('note_2','夜ごはん','kana_1','2019/2/2');
insert into note values('note_3','ケーキ練の連絡','arisa_2','2019/10/10');


insert into album values('album_1','kana_1','いちご_2');
insert into album values('album_2','arisa_2','りんご_1');
insert into album values('album_3','kotono_3','ばなな_3');

insert into photo values('photo_1','kotono_3','album_3');
insert into photo values('photo_2','kana_1','album_1');
insert into photo values('photo_3','arisa_2','album_2');	


insert into user values('kana_1',08011111111,'かな','kana0125@gmai.com');
insert into user values('arisa_2',080222222222,'ありさ','arisa0328@gmai.com');
insert into user values('kotono_3',08033333333,'ことの','kotono1203@gmai.com');
  

insert read values(1,'arisa_2');
insert read values(2,'kotono_3');
insert read values(3,'kana_1');
  	
insert belong values('りんご_1','arisa_2');
insert belong values('いちご_2','kana_1');
insert belong values('ばなな_3','kotono_3');

insert add values('arisa_2','kana_1');
insert add values('kotono_3','arisa_2');
insert add values('kana_1','kotono_3');

insert call values('kana_1','kotono_3','2018/3/3');
insert call values('arisa_2','kana_1','2017/3/3');
insert call values('kotono_3','arisa_2','2013/2/1');






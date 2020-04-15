
create table Collection(State varchar(20), District varchar(20), Male tinyint, Female tinyint);

insert into Collection values('Tamilnadu', 'Chennai', 60, 30);
insert into Collection values('Tamilnadu', 'Coimbatore', 25, 10);
insert into Collection values('AP', 'Chitoor', 15, 20);
insert into Collection values('AP', 'Vijayawada', 45, 31);
insert into Collection values('Kerala', 'Cochin', 75, 45);
insert into Collection values('Kerala', 'Wayanad', 15, 15);

select * from Collection;
select SUM(Male + Female) from Collection where State = 'Tamilnadu';
select SUM(Male) from Collection where State = 'Tamilnadu';
select SUM(Female) from Collection where State = 'Tamilnadu';

select SUM(Male + Female) from Collection where State = 'AP';
select SUM(Male) from Collection where State = 'AP';
select SUM(Female) from Collection where State = 'AP';

select SUM(Male + Female) from Collection where State = 'Kerala';
select SUM(Male) from Collection where State = 'Kerala';
select SUM(Female) from Collection where State = 'Kerala';

select SUM(Male + Female) from Collection;
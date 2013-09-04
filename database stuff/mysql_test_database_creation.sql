create database test_data;

use test_data;

-- create tables

delimiter $$

CREATE TABLE `jobs` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT,
  `imei` varchar(30) NOT NULL,
  `model_id` int(11) NOT NULL,
  `line_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7000000 DEFAULT CHARSET=latin1$$



delimiter $$

CREATE TABLE `lines` (
  `line_id` int(11) NOT NULL AUTO_INCREMENT,
  `line_name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  PRIMARY KEY (`line_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1$$

delimiter $$

CREATE TABLE `manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `manufacturer_name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(45) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(45) NOT NULL,
  PRIMARY KEY (`manufacturer_id`),
  UNIQUE KEY `manufacturer_name_UNIQUE` (`manufacturer_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1$$


delimiter $$

CREATE TABLE `models` (
  `model_id` int(11) NOT NULL AUTO_INCREMENT,
  `model_name` varchar(255) NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  PRIMARY KEY (`model_id`),
  UNIQUE KEY `model_name_UNIQUE` (`model_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1$$


delimiter $$

CREATE TABLE `statuses` (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `status_name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  PRIMARY KEY (`status_id`),
  UNIQUE KEY `status_name_UNIQUE` (`status_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1$$



delimiter $$

CREATE TABLE `transaction_types` (
  `transaction_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_type_name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  PRIMARY KEY (`transaction_type_id`),
  UNIQUE KEY `transaction_type_name_UNIQUE` (`transaction_type_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1$$



delimiter $$

CREATE TABLE `transactions` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) DEFAULT NULL,
  `transaction_type_id` int(11) NOT NULL,
  `notes` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1$$



delimiter $$

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name_UNIQUE` (`user_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1$$



delimiter $$

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `role_name_UNIQUE` (`role_name`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1$$




delimiter $$

CREATE TABLE `user_roles` (
  `user_role_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  PRIMARY KEY (`user_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1$$



delimiter $$

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `role_name_UNIQUE` (`role_name`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1$$


delimiter $$

CREATE TABLE `faults` (
  `fault_id` int(11) NOT NULL AUTO_INCREMENT,
  `fault_code` varchar(255) NOT NULL,
  `fault_description` varchar(255) NOT NULL,
  `fault_level_route` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  PRIMARY KEY (`fault_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=latin1$$





delimiter $$

CREATE TABLE `job_faults` (
  `job_fault_id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` int(11) NOT NULL,
  `fault_id` int(11) NOT NULL,
  `fault_order` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  PRIMARY KEY (`job_fault_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1$$




delimiter $$

CREATE TABLE `model_on_line` (
  `model_on_line_id` int(11) NOT NULL AUTO_INCREMENT,
  `model_id` int(11) NOT NULL,
  `line_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  PRIMARY KEY (`model_on_line_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1$$



delimiter $$

CREATE TABLE `fault_repair_reason_map` (
  `fault_repair_reason_map_id` int(11) NOT NULL AUTO_INCREMENT,
  `fault_id` int(11) NOT NULL,
  `repair_id` int(11) NOT NULL,
  `reason_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  PRIMARY KEY (`fault_repair_reason_map_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1$$







-- propegate tables

insert users
(user_name, created_at, created_by, updated_at, updated_by)
select 'Administrator', now(), 'Administrator', now(), 'Administrator' union
select 'Steven Woodhouse', now(), 'Administrator', now(), 'Administrator';







insert `lines`
(line_name, created_at, created_by, updated_at, updated_by)
select 'EE HTC Non-Warranty', now(), 'Steven Woodhouse', now(), 'Steven Woodhouse';
select 'EE HTC Warranty', now(), 'Steven Woodhouse', now(), 'Steven Woodhouse';


insert statuses
(status_name, created_at, created_by, updated_at, updated_by)
select 'awaiting delivery', now(), 'Administrator', now(), 'Administrator' 	union
select 'awaiting screen', now(), 'Administrator', now(), 'Administrator' 	union
select 'awaiting repair', now(), 'Administrator', now(), 'Administrator' 	union
select 'awaiting debug', now(), 'Administrator', now(), 'Administrator' 	union
select 'awaiting refurbishment', now(), 'Administrator', now(), 'Administrator' 	union
select 'awaiting quality checks', now(), 'Administrator', now(), 'Administrator' 	union
select 'awaiting out of box checks', now(), 'Administrator', now(), 'Administrator' 	union
select 'awaiting pack out', now(), 'Administrator', now(), 'Administrator' 	union
select 'awaiting dispatch', now(), 'Administrator', now(), 'Administrator' 	union
select 'dispatched', now(), 'Administrator', now(), 'Administrator' 	union
select 'completed', now(), 'Administrator', now(), 'Administrator' 	union
select 'claimed', now(), 'Administrator', now(), 'Administrator';	


insert models
(model_name, manufacturer_id, created_at, created_by, updated_at, updated_by)
select 'Desire HD', 1, now(), 'Administrator', now(), 'Administrator' union
select 'Desire One', 1, now(), 'Administrator', now(), 'Administrator';




insert manufacturer
(manufacturer_name, created_at, created_by, updated_at, updated_by)
select 'HTC', now(), 'Administrator', now(), 'Administrator';



insert transaction_types
(transaction_type_name, created_at, created_by, updated_at, updated_by)
select 'prealerted', now(), 'Administrator', now(), 'Administrator' 	union
select 'booked in', now(), 'Administrator', now(), 'Administrator' 	union
select 'bounce check', now(), 'Administrator', now(), 'Administrator' 	union
select 'screened', now(), 'Administrator', now(), 'Administrator' 	union
select 'customer damage found', now(), 'Administrator', now(), 'Administrator' 	union
select 'part added', now(), 'Administrator', now(), 'Administrator' 	union
select 'part replaced', now(), 'Administrator', now(), 'Administrator' 	union
select 'part resoldered', now(), 'Administrator', now(), 'Administrator' 	union
select 'repaired', now(), 'Administrator', now(), 'Administrator' 	union
select 'debugged', now(), 'Administrator', now(), 'Administrator' 	union
select 'qa passed', now(), 'Administrator', now(), 'Administrator' 	union
select 'qa failed', now(), 'Administrator', now(), 'Administrator' 	union
select 'send to repair', now(), 'Administrator', now(), 'Administrator' 	union
select 'send to debug', now(), 'Administrator', now(), 'Administrator' 	union
select 'out of box passed', now(), 'Administrator', now(), 'Administrator' 	union
select 'packed', now(), 'Administrator', now(), 'Administrator' 	union
select 'dispatched', now(), 'Administrator', now(), 'Administrator' 	union
select 'claimed', now(), 'Administrator', now(), 'Administrator' 	




insert into roles(role_name, created_by, created_at)
select 'admin', 'Administrator', now() union
select 'prealert', 'Administrator', now() union
select 'book_in', 'Administrator', now() union
select 'repair', 'Administrator', now() union
select 'debug', 'Administrator', now() union
select 'qa', 'Administrator', now() union
select 'oob', 'Administrator', now() union
select 'dispatch', 'Administrator', now() 




-- insert for the user roles

insert into user_roles(user_id, role_id, created_by, created_at)
select 2, 1, 'Administrator', now() union
select 2, 2, 'Administrator', now() union
select 2, 3, 'Administrator', now() union
select 2, 4, 'Administrator', now() union
select 2, 5, 'Administrator', now() union
select 2, 6, 'Administrator', now() union
select 2, 7, 'Administrator', now() union
select 2, 8, 'Administrator', now() union
select 2, 9, 'Administrator', now();



insert into user_roles(user_id, role_id, created_by, created_at)
select 1, 1, 'Administrator', now() union
select 1, 2, 'Administrator', now() union
select 1, 3, 'Administrator', now() union
select 1, 4, 'Administrator', now() union
select 1, 5, 'Administrator', now() union
select 1, 6, 'Administrator', now() union
select 1, 7, 'Administrator', now() union
select 1, 8, 'Administrator', now() union
select 1, 9, 'Administrator', now();



insert into model_on_line(model_id, line_id, created_at, created_by, updated_at, updated_by)
select 1, 1, now(), 'Administrator', now(), 'Administrator' union
select 2, 1, now(), 'Administrator', now(), 'Administrator'





-- initial job creation script

delimiter $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `create_job_prealert`
(in imei_in varchar(30), model_name_in varchar(255), line_name_in varchar(255), 
user_name varchar(255), fault_1 varchar(255), fault_2 varchar(255), fault_3 varchar(255))
BEGIN
-- get some variables
set @date_time_stamp = (select convert(now(), char));
set @model_id = (select m.model_id from models m where m.model_name = model_name_in);
set @line_id = (select l.line_id from `lines` l  where l.line_name = line_name_in);

-- create the job
insert jobs (imei, model_id, line_id, status_id, 
created_at, created_by, updated_at, updated_by)
select imei_in, @model_id, @line_id, 1,  @date_time_stamp,
user_name, @date_time_stamp, user_name;

-- get the jobid
set @jobid = (select max(job_id) from jobs j where j.imei = imei_in);

-- create the first transaction - prealert
insert transactions
(job_id, transaction_type_id, notes, created_at, created_by)
select @jobid, 1, '', @date_time_stamp, user_name;

-- get the transactionid from the prealert
set @transaction_id = (select max(transaction_id) from transactions t where t.job_id = @jobid);

-- insert the faults
set @fault_1_id = (select fault_id from faults where fault_description = fault_1);
set @fault_2_id = (select fault_id from faults where fault_description = fault_2);
set @fault_3_id = (select fault_id from faults where fault_description = fault_3);

insert job_faults (transaction_id, fault_id, fault_order, created_at, created_by)
select @transaction_id, @fault_1_id, 1, @date_time_stamp, user_name;
if @fault_2_id is not null then
    insert job_faults (transaction_id, fault_id, fault_order, created_at, created_by)
    select @transaction_id, @fault_2_id, 2, @date_time_stamp, user_name;

    if @fault_3_id is not null then
        insert job_faults (transaction_id, fault_id, fault_order, created_at, created_by)
        select @transaction_id, @fault_3_id, 3, @date_time_stamp, user_name;

    end  if;
end if;

END$$




-- get a 'this monday' date stored proc
DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `this_monday`() RETURNS datetime
return (select date_add(curdate(), interval  -  weekday(curdate())  day))$$



-- select * from jobs where updated_at > this_monday();


insert faults (fault_code, fault_description, created_at, created_by)
select 'POW-01', 'No Power Up', 3,  now(), 'Administrator' union
select 'DIS-01', 'No Display', 2, now(), 'Administrator' union
select 'CHG-01', 'No Charging', 2, now(), 'Administrator' union
select 'KEY-01', 'Faulty Keypad', 2, now(), 'Administrator' union
select 'SIG-01', 'No Signal', 3, now(), 'Administrator' union
select 'AUD-01', 'No Audio Out', 2, now(), 'Administrator' union
select 'MIC-01', 'Microphone Fault', 2, now(), 'Administrator' union
select 'SIM-01', 'Sim Card Fault', 2, now(), 'Administrator' union
select 'MEM-01', 'Memory Fault', 2, now(), 'Administrator' union
select 'FEA-01', 'Feature Fault', 2, now(), 'Administrator' 


select * from faults

-- create a couple of jobs


call create_job_prealert ('345456567678789', 'Desire HD', 'EE HTC Warranty', 'Steven Woodhouse');
call create_job_prealert ('345233434565665', 'Desire One', 'EE HTC Warranty', 'Steven Woodhouse');



call create_job_prealert ('345456654543345', 'Desire One', 'EE HTC Warranty', 'Steven Woodhouse', 'No Power Up','No Display', Null);





select * from jobs



-- job book in script
delimiter $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `book_job_in`(in imei_in varchar(30), model_name_in varchar(255), line_name_in varchar(255), user_name varchar(255))
BEGIN
-- get some variables
set @date_time_stamp = (select convert(now(), char));
set @model_id = (select m.model_id from models m where m.model_name = model_name_in);
set @line_id = (select l.line_id from `lines` l  where l.line_name = line_name_in);

-- get the jobid
set @jobid = (select max(job_id) from jobs j where j.imei = imei_in);

-- update the status
update jobs set status_id = 2, updated_by = user_name, updated_at = @date_time_stamp
where job_id = @jobid;

-- create the book_in transaction
insert transactions
(job_id, transaction_type_id, notes, created_at, created_by)
select @jobid, 2, '', @date_time_stamp, user_name;


END$$


-- book in a job
call book_in_job ('345456567678789', 'Desire HD', 'EE HTC Warranty', 'Steven Woodhouse');




-- get a list of roles

delimiter $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_roles`(in login varchar(255))
BEGIN
select r.role_name 
from users u inner join 
user_roles ur on u.user_id = ur.user_id inner join 
roles r on ur.role_id = r.role_id 
where user_name = login
order by r.role_process_order;;
END$$




-- get the user name from the login

delimiter $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `return_user`(in login varchar(30))
BEGIN

select ifnull(user_name, 'No User') as user_name from users u where user_login = login;

END$$



-- new user

delimiter $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `new_user`(in user_name_in varchar(255), user_login_in varchar(255), init_line_in varchar(255), init_role_in varchar(255), 
user_name varchar(255))
BEGIN
-- get some variables
set @date_time_stamp = (select convert(now(), char));
set @role_id = (select r.role_id from roles r where r.role_name = init_role_in);
set @line_id = (select l.line_id from `lines` l  where l.line_name = init_line_in);

-- create the user
insert users (user_name, user_login, created_at, created_by, updated_at, updated_by)
select user_name_in, user_login_in, @date_time_stamp, user_name,@date_time_stamp, user_name;


set @user_id = (select u.user_id from users u where u.user_name = user_name_in);

-- create the intitial user_role for line
insert user_roles(user_id, role_id, line_id, created_at, created_by)
select @user_id, @role_id, @line_id, @date_time_stamp, user_name;



END$$



call new_user ('bob', 'bob', 'EE HTC Warranty', 'book_in', 'Steven Woodhouse');



-- repairs table

delimiter $$

CREATE TABLE `repairs` (
  `repair_id` int(11) NOT NULL AUTO_INCREMENT,
  `repair_code` varchar(255) NOT NULL,
  `repair_description` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  PRIMARY KEY (`repair_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1$$


-- repair reasons
delimiter $$

CREATE TABLE `repair_reasons` (
  `repair_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `repair_reason` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  PRIMARY KEY (`repair_reason_id`),
  UNIQUE KEY `repair_reason_UNIQUE` (`repair_reason`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1$$

-- populate repair reasons
insert repair_reasons (repair_reason,  created_by, created_at)
select 'missing', 'Administrator', now() union
select 'dry joint', 'Administrator', now() union
select 'wrongly assembled', 'Administrator', now() union
select 'defective', 'Administrator', now() union
select 'unrepairable', 'Administrator', now() union
select 'customer perception', 'Administrator', now() union
select 'parts exceed ceiling price', 'Administrator', now() union
select 'no fault found', 'Administrator', now() union
select 'liquid ingress', 'Administrator', now() union
select 'customer damage', 'Administrator', now() union
select 'corrupt software', 'Administrator', now() union
select 'loose', 'Administrator', now();


-- populate repairs
insert repairs (repair_code, repair_description,  created_at, created_by)
select 'replec', 'replace electrical',  now(), 'Administrator' union
select 'repmec', 'replace mechanical',  now(), 'Administrator' union
select 'repcos', 'replace cosmetic',  now(), 'Administrator' union
select 'reslec', 'resolder electrical',  now(), 'Administrator' union
select 'reasmbl', 'replace cosmetic',  now(), 'Administrator' union
select 'nff', 'no fault found',  now(), 'Administrator' union
select 'ber', 'beyond economical repair', now(), 'Administrator' union
select 'reflash', 'reflash software',  now(), 'Administrator';


/*
-- populate repairs based on repair reasons
insert repairs (repair_code, repair_description, repair_reason_id, created_at, created_by)
select 'reflash', 'reflash software', 1, now(), 'Administrator'
select 'replec', 'replace electrical', 1, now(), 'Administrator' union
select 'replec', 'replace electrical', 4, now(), 'Administrator' union
select 'repmec', 'replace mechanical', 1, now(), 'Administrator' union
select 'repmec', 'replace mechanical', 4, now(), 'Administrator' union
select 'repcos', 'replace cosmetic', 1, now(), 'Administrator' union
select 'repcos', 'replace cosmetic', 4, now(), 'Administrator' union
select 'reslec', 'resolder electrical', 2, now(), 'Administrator' union
select 'reasmbl', 'replace cosmetic', 1, now(), 'Administrator' union
select 'nff', 'no fault found', 6, now(), 'Administrator' union
select 'nff', 'no fault found', 8, now(), 'Administrator' union
select 'ber', 'beyond economical repair', 7, now(), 'Administrator' union
select 'ber', 'beyond economical repair', 9, now(), 'Administrator' union
select 'ber', 'beyond economical repair', 10, now(), 'Administrator' ;
*/
-- select * from repair_reasons

-- select * from repairs

-- select * from faults

insert fault_repair_reason_map(fault_id, repair_id, reason_id, created_at, created_by)
select 1, 1, 1, now(), 'Administrator' union
select 1, 1, 4, now(), 'Administrator' union
select 1, 8, 11, now(), 'Administrator' union
select 1, 4, 2, now(), 'Administrator' union
select 1, 4, 12, now(), 'Administrator' union
select 1, 6, 6, now(), 'Administrator' union
select 1, 6, 8, now(), 'Administrator' union
select 1, 7, 5, now(), 'Administrator' union
select 1, 7, 7, now(), 'Administrator' union
select 1, 7, 9, now(), 'Administrator' union
select 1, 7, 10, now(), 'Administrator' union
select 2, 1, 4, now(), 'Administrator' union
select 2, 5, 3, now(), 'Administrator' union
select 2, 4, 2, now(), 'Administrator' union
select 2, 6, 6, now(), 'Administrator' union
select 2, 6, 8, now(), 'Administrator' union
select 2, 7, 5, now(), 'Administrator' union
select 2, 7, 7, now(), 'Administrator' union
select 2, 7, 9, now(), 'Administrator' union
select 2, 7, 10, now(), 'Administrator' union
select 2, 8, 11, now(), 'Administrator' union
select 3, 1, 1, now(), 'Administrator' union
select 3, 4, 2, now(), 'Administrator' union
select 3, 4, 12, now(), 'Administrator' union
select 3, 6, 6, now(), 'Administrator' union
select 3, 6, 8, now(), 'Administrator' union
select 3, 7, 5, now(), 'Administrator' union
select 3, 7, 7, now(), 'Administrator' union
select 3, 7, 9, now(), 'Administrator' union
select 3, 7, 10, now(), 'Administrator' union
select 4, 1, 1, now(), 'Administrator' union
select 4, 1, 4, now(), 'Administrator' union
select 4, 2, 4, now(), 'Administrator' union
select 4, 3, 1, now(), 'Administrator' union
select 4, 3, 4, now(), 'Administrator' union
select 4, 4, 2, now(), 'Administrator' union
select 4, 5, 3, now(), 'Administrator' union
select 4, 6, 6, now(), 'Administrator' union
select 4, 6, 8, now(), 'Administrator' union
select 4, 7, 5, now(), 'Administrator' union
select 4, 7, 7, now(), 'Administrator' union
select 4, 7, 9, now(), 'Administrator' union
select 4, 7, 10, now(), 'Administrator' union
select 5, 1, 1, now(), 'Administrator' union
select 5, 1, 4, now(), 'Administrator' union
select 5, 4, 2, now(), 'Administrator' union
select 5, 4, 12, now(), 'Administrator' union
select 5, 5, 3, now(), 'Administrator' union
select 5, 5, 12, now(), 'Administrator' union
select 5, 6, 6, now(), 'Administrator' union
select 5, 6, 8, now(), 'Administrator' union
select 5, 7, 5, now(), 'Administrator' union
select 5, 7, 7, now(), 'Administrator' union
select 5, 7, 9, now(), 'Administrator' union
select 5, 7, 10, now(), 'Administrator' union
select 6, 1, 1, now(), 'Administrator' union
select 6, 1, 4, now(), 'Administrator' union
select 6, 4, 2, now(), 'Administrator' union
select 6, 4, 12, now(), 'Administrator' union
select 6, 5, 3, now(), 'Administrator' union
select 6, 5, 12, now(), 'Administrator' union
select 6, 6, 6, now(), 'Administrator' union
select 6, 6, 8, now(), 'Administrator' union
select 6, 7, 5, now(), 'Administrator' union
select 6, 7, 7, now(), 'Administrator' union
select 6, 7, 9, now(), 'Administrator' union
select 6, 7, 10, now(), 'Administrator' union
select 7, 1, 1, now(), 'Administrator' union
select 7, 1, 4, now(), 'Administrator' union
select 7, 4, 2, now(), 'Administrator' union
select 7, 4, 12, now(), 'Administrator' union
select 7, 5, 3, now(), 'Administrator' union
select 7, 5, 12, now(), 'Administrator' union
select 7, 6, 6, now(), 'Administrator' union
select 7, 6, 8, now(), 'Administrator' union
select 7, 7, 5, now(), 'Administrator' union
select 7, 7, 7, now(), 'Administrator' union
select 7, 7, 9, now(), 'Administrator' union
select 7, 7, 10, now(), 'Administrator' union
select 8, 1, 1, now(), 'Administrator' union
select 8, 1, 4, now(), 'Administrator' union
select 8, 4, 2, now(), 'Administrator' union
select 8, 4, 12, now(), 'Administrator' union
select 8, 5, 3, now(), 'Administrator' union
select 8, 5, 12, now(), 'Administrator' union
select 8, 6, 6, now(), 'Administrator' union
select 8, 6, 8, now(), 'Administrator' union
select 8, 7, 5, now(), 'Administrator' union
select 8, 7, 7, now(), 'Administrator' union
select 8, 7, 9, now(), 'Administrator' union
select 8, 7, 10, now(), 'Administrator' union
select 8, 8, 12, now(), 'Administrator' union
select 9, 1, 1, now(), 'Administrator' union
select 9, 1, 4, now(), 'Administrator' union
select 9, 4, 2, now(), 'Administrator' union
select 9, 4, 12, now(), 'Administrator' union
select 9, 6, 6, now(), 'Administrator' union
select 9, 6, 8, now(), 'Administrator' union
select 9, 7, 5, now(), 'Administrator' union
select 9, 7, 7, now(), 'Administrator' union
select 9, 7, 9, now(), 'Administrator' union
select 9, 7, 10, now(), 'Administrator' union
select 10, 8, 12, now(), 'Administrator' 



-- get prealert faults by jobid
DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_prealert_faults`(in jobid_in int)
BEGIN

select (select fault_description 
from transactions t inner join 
job_faults jf on t.transaction_id = jf.transaction_id inner join 
faults f on jf.fault_id = f.fault_id 
where job_id = jobid_in and fault_order = 1 and transaction_type_id = 1) as `primary`, 
(select fault_description 
from transactions t inner join 
job_faults jf on t.transaction_id = jf.transaction_id inner join 
faults f on jf.fault_id = f.fault_id 
where job_id = jobid_in and fault_order = 2 and transaction_type_id = 1) as secondary,
(select fault_description 
from transactions t inner join 
job_faults jf on t.transaction_id = jf.transaction_id inner join 
faults f on jf.fault_id = f.fault_id 
where job_id = jobid_in and fault_order = 3 and transaction_type_id = 1) as tertiary;

END




-- screened

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `screened` (in job_id_in int, user_name_in varchar(255), fault_in varchar(255) )
BEGIN


-- get some variables
set @date_time_stamp = (select convert(now(), char));

-- create the first transaction - prealert
insert transactions
(job_id, transaction_type_id, notes, created_at, created_by)
select job_id_in, 4, '', @date_time_stamp, user_name_in;

-- get the transactionid from the prealert
set @transaction_id = (select max(transaction_id) from transactions t where t.job_id = job_id_in and t.transaction_type_id = 4);

-- insert the fault
set @fault_id = (select fault_id from faults where fault_description = fault_in);

-- create the entry (using primary as the fault order)
insert job_faults (transaction_id, fault_id, fault_order, created_at, created_by)
select @transaction_id, @fault_id, 1, @date_time_stamp, user_name_in;


-- get the fault level (Repair or Debug)
set @repair_level = (select case when fault_level_route = 2 then 3 else 4 end from job_faults jf inner join faults f on jf.fault_id = f.fault_id where jf.transaction_id = @transaction_id);

-- change the status of the job 
update jobs
set status_id = @repair_level, updated_by = user_name_in, updated_at = @date_time_stamp
where job_id = job_id_in;


END



delimiter $$

CREATE TABLE `parts` (
  `part_id` int(11) NOT NULL AUTO_INCREMENT,
  `part_code` varchar(255) NOT NULL,
  `part_description` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(45) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(45) NOT NULL,
  PRIMARY KEY (`part_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1$$


delimiter $$

CREATE TABLE `part_prices` (
  `part_prices_id` int(11) NOT NULL AUTO_INCREMENT,
  `part_id` int(11) NOT NULL,
  `part_price` float NOT NULL,
  `active` bit(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  PRIMARY KEY (`part_prices_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1$$



delimiter $$

CREATE TABLE `part_price_lines` (
  `part_price_lines_id` int(11) NOT NULL AUTO_INCREMENT,
  `part_prices_id` int(11) NOT NULL,
  `line_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  PRIMARY KEY (`part_price_lines_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1$$





delimiter $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `new_part_initial_insert`(in part_code_in varchar(255), part_description_in varchar(255), part_price_in float, part_price_line_in varchar(255), user_name_in varchar(255))
BEGIN
-- get some variables
set @date_time_stamp = (select convert(now(), char));
set @line_id = (select l.line_id from `lines` l  where l.line_name = part_price_line_in);

if (select part_code from parts p where p.part_code = part_code_in) is null then 

-- insert the new part
insert parts (part_code, part_description, created_at, created_by, updated_at, updated_by)
select part_code_in, part_description_in, @date_time_stamp, user_name_in, @date_time_stamp, user_name_in;

end if;



-- get the part id
set @part_id = (select max(part_id) from parts p  where p.part_code = part_code_in);


if (select pp.part_price from parts p inner join part_prices pp on p.part_id = pp.part_id where pp.part_price = part_price_in) is null then 

-- insert the price
insert part_prices (part_id, part_price, active, created_at, created_by, updated_at, updated_by)
select @part_id, part_price_in, 1, @date_time_stamp, user_name_in, @date_time_stamp, user_name_in;

end if;

-- get the part_price_id 
set @part_prices_id = (select max(part_prices_id) from part_prices p  inner join parts pp on p.part_id = pp.part_id where p.part_price = part_price_in);



if (select ppl.line_id from parts p inner join 
part_prices pp on p.part_id = pp.part_id inner join 
part_price_lines ppl on pp.part_prices_id = ppl.part_prices_id
where ppl.line_id = @line_id and pp.part_price = part_price_in) is null then 

-- insert the price line
insert part_price_lines (part_prices_id, line_id, created_at, created_by, updated_at, updated_by)
select @part_prices_id, @line_id, @date_time_stamp, user_name_in, @date_time_stamp, user_name_in;

end if;



END$$




call new_part_initial_insert ('54556665-01', 'HTC One Rear Assy', 30.99, 'EE HTC Non-Warranty', 'Administrator')




-- this shows the (very complicated) view of parts by model to fault repair reason combinations
select p.*, m.model_name, f.fault_description, r.repair_description, rr.repair_reason
from parts p inner join 
part_on_models pm on p.part_id = pm.part_id inner join 
models m on pm.model_id = m.model_id inner join 
part_model_fault_repair_reason_map pmfrr on pmfrr.part_on_models_id = pm.part_on_models_id inner join
fault_repair_reason_map frrm on frrm.fault_repair_reason_map_id = pmfrr.fault_repair_reason_map_id inner join
faults f on frrm.fault_id = f.fault_id inner join
repairs r on frrm.repair_id = r.repair_id inner join
repair_reasons rr on frrm.reason_id = rr.repair_reason_id 

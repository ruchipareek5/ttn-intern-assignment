
create table if not exists batch(b_id int primary key auto_increment,
	batch_id varchar(100),
    batch_name varchar(100),
    centre_id int,
    trainer_id int,
    total_candidates_in_batch int,
    batch_start_date date,
    batch_end_date date
   );
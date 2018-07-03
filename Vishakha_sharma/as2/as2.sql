

select *  from batches where (tp_id=1 and BatchEndDate<curdate());
select *  from batches where (tp_id=1 and BatchEndDate>curdate());
select * from batches b join assesesBatches ab 
where(b.batchId=ab.batchId and ap_id=2);
select *  from batches where (BatchEndDate>curdate());
select * from user where status = true;
select comments from application_comments where(id=1&&appstatus='active');





select *  from batches where (associatedTrainingPartnerId=1 and batchEndDate<curdate());
select *  from batches where (associatedTrainingPartnerId=1 and batchEndDate>curdate());
select * from batches b join assesesBatches ab where(b.batchId=ab.batchId and assessmentPartnerId=2);
select *  from batches where (batchEndDate>curdate());
select * from user where ustatus = true;
select comments from application_comments where(id=1&&appstatus='active');



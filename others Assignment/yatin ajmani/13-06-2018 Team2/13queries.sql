use skill_india2;
-- q1 How many candidates are enrolled,assessed and certified since inception

select 
(select 
    count(cb.candidate_id)
from
    candidates c
        join
    candidate_batch cb ON c.candidate_id = cb.candidate_id
        join
    batches b ON b.batch_id = cb.batch_id
        join
    marksheets m ON c.candidate_id = m.candidate_id
where
    m.is_certified = 1)'No. of Candidates Certified',
(select 
    count(cb.candidate_id)
from
    candidates c
        join
    candidate_batch cb ON c.candidate_id = cb.candidate_id
        join
    batches b ON b.batch_id = cb.batch_id
	)'No. of Candidates enrolled',
(select 
    count(cb.candidate_id)
from
    candidates c
        join
    candidate_batch cb ON c.candidate_id = cb.candidate_id
        join
    batches b ON b.batch_id = cb.batch_id
	where b.assessement_agency_id is not null
	)'No. of Candidates assessed';

-- q2 How many candidates are enrolled,assessed and certified for each QP since inception


select 
    q.name 'Qualification Pack',
    count(distinct cb.candidate_id) 'No. of Candidates Enrolled,Assessed and Certified'
from
    candidates c
        join
    candidate_batch cb ON c.candidate_id = cb.candidate_id
        join
    batches b ON b.batch_id = cb.batch_id
        join
    marksheets m ON c.candidate_id = m.candidate_id
        join
    qualification_packs q ON m.qualification_pack_id = q.qualification_pack_id
where
		b.assessement_agency_id is not null
        and m.is_certified = 1
group by (m.qualification_pack_id);

-- q3 Batches running for all training partners along with the total no. of candidates for each QP

select 
    tp.name 'Training Partner',
    q.name 'Qualification Pack',
    count(distinct cb.batch_id) 'No. of Batches',
    count(distinct cb.candidate_id) 'No. of Candidates'
from
    candidates c
        join
    candidate_batch cb ON c.candidate_id = cb.candidate_id
        join
    batches b ON b.batch_id = cb.batch_id
        join
    training_centres tc ON tc.training_centre_id = b.training_center_id
        join
    training_partner_qualification_pack_mapper tpqm ON tpqm.training_partner_qualification_pack_mapper_id = b.training_partner_qualification_pack_mapper_id
        join
    training_partners tp ON tp.training_partner_id = tpqm.training_partner_id
        join
    qualification_packs q ON q.qualification_pack_id = tpqm.qualification_pack_id
where
    b.end_date < now()
group by tp.training_partner_id , tpqm.qualification_pack_id;

-- q4 No. of candidates that have assessed in each month this year

select 
    count(distinct cb.candidate_id) 'No. of Candidates',
    month(b.start_date) 'Month'
from
    candidates c
        join
    candidate_batch cb ON c.candidate_id = cb.candidate_id
        right join
    batches b ON b.batch_id = cb.batch_id
where
	year(b.start_date) = '2016'
group by month(b.start_date);

-- q5 No. of TC in each state

select 
    count(tc.training_centre_id) 'No. of Training Centers',
    s.name 'State'
from
    training_centres tc
        join
    states s ON s.state_id = tc.state_id
group by (tc.state_id);

-- q6 No. of Batches trained in last 5 years


select 
    count(batch_id) 'No. of Batches'
from
    batches
where
    end_date between DATE_SUB(NOW(), INTERVAL 5 YEAR) and NOW();

-- q7 No. of Training Centers of each training Partner that are conducting trainings

select 
    tp.name 'Training Partner',
    q.name 'Qualification Pack',
    count(distinct tc.training_centre_id) 'No. of Training Center'
from
    batches b
        join
    training_centres tc ON tc.training_centre_id = b.training_center_id
        join
    training_partners tp ON tp.training_partner_id = tc.training_partner_id
        join
    training_partner_qualification_pack_mapper tqm ON tqm.training_partner_id = tp.training_partner_id
        join
    qualification_packs q ON q.qualification_pack_id = tqm.qualification_pack_id
where
    b.end_date > now() or b.end_date is null
group by tqm.training_partner_id , tqm.training_partner_qualification_pack_mapper_id; 

-- q8 Name of TC of each TP where training have been conducted

select distinct
    tc.training_centre_id, tc.name
from
    training_centres tc
        right join
    batches b ON b.training_center_id = tc.training_centre_id;

select distinct
    tc.training_centre_id, tc.name
from
    training_centres tc
where
    tc.training_centre_id not in (select distinct
            training_center_id
        from
            batches
        group by training_center_id);

-- q9 Status of batches that are presently running and their end date

select 
    b.name 'Batch Name',
    tp.name 'Training Partner',
    b.start_date 'Training Start Date',
    b.end_date 'Training End Date'
from
    batches b
        join
    training_centres tc ON tc.training_centre_id = b.training_center_id
        join
    training_partners tp ON tp.training_partner_id = tc.training_partner_id
where
    b.end_date > curdate();

-- q10 Name of Students undergoing training on all TC in AP

select distinct
    c.candidate_id 'Candidate Id', c.name 'Candidate Name in AP'
from
    training_partners tp
        join
    training_centres tc ON tc.training_partner_id = tp.training_partner_id
        join
    states s ON tc.state_id = s.state_id
        join
    batches b ON b.training_center_id = tc.training_centre_id
        join
    candidate_batch cb ON b.batch_id = cb.batch_id
        join
    candidates c ON c.candidate_id = cb.candidate_id
where
    s.name = 'ARUNACHAL PRADESH';

-- q11 Name of TP who run Batches for more than 3 candidates for each QP

select 
    tp.name 'Training Partner',
    q.name 'Qualification Pack',
    count(distinct cb.candidate_id) 'No. of Candidates'
from
    candidates c
        join
    candidate_batch cb ON c.candidate_id = cb.candidate_id
        join
    batches b ON b.batch_id = cb.batch_id
        join
    training_centres tc ON tc.training_centre_id = b.training_center_id
        join
    training_partner_qualification_pack_mapper tpqm ON tpqm.training_partner_qualification_pack_mapper_id = b.training_partner_qualification_pack_mapper_id
        join
    training_partners tp ON tp.training_partner_id = tpqm.training_partner_id
        join
    qualification_packs q ON q.qualification_pack_id = tpqm.qualification_pack_id
group by tp.training_partner_id , tpqm.qualification_pack_id
having count(distinct cb.candidate_id) > 3;

-- q12 No. of batches where assignment of AA is still Pending

select 
    count(batch_id) 'No. of Batches'
from
    batches
where
    assessement_agency_id is null;

-- q13 Top 5 AA who have done max. no of assessments and where are they located

select 
    a.name 'Assessement Agencies',
    a.address 'Assessement Address',
    s.name 'State Name',
    c.name 'City Name'
from
    assessement_agencies a
        join
    batches b ON b.assessement_agency_id = a.assessement_agency_id
        join
    states s ON s.state_id = a.state_id
        join
    cities c ON c.city_id = a.city_id
group by a.assessement_agency_id
having count(b.batch_id)
order by b.assessement_agency_id desc
limit 5;

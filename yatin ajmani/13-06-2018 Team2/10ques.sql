-- q1 Top 3 States with maximum certified candidates

select 
    s.name 'State', count(c.candidate_id) 'No. of Candidates'
from
    candidates c
        join
    marksheets m ON m.candidate_id = c.candidate_id
        join
    states s ON s.state_id = c.state_id
where
    m.is_certified = 1
group by c.state_id
order by count(c.candidate_id) desc
limit 3;

-- q2 #Top 3 qualification packs with maximum certified candidates

select 
    qp.name 'Name', count(c.candidate_id) 'No. of Candidates'
from
    candidates c
        join
    candidate_batch cb ON cb.candidate_id = c.candidate_id
        join
    batches b ON b.batch_id = cb.batch_id
        join
    training_centres tc ON tc.training_centre_id = b.training_center_id
        join
    training_center_qualification_pack_mapper tqm ON tqm.training_center_id = tc.training_centre_id
        join
    marksheets m ON m.candidate_id = c.candidate_id
        join
    qualification_packs qp ON qp.qualification_pack_id = tqm.qualification_pack_id
where
    m.is_certified = 1
group by tqm.qualification_pack_id
order by count(c.candidate_id) desc
limit 3;

-- q3 #Number of training centres in UP

select 
    count(training_centre_id) 'No. of Training Centers in UP'
from
    training_centres tc
        join
    states s ON s.state_id = tc.state_id
where
    s.name = 'UTTAR PRADESH';

-- q4 #Top candidate in batch 2

select 
    c.name, m.marks
from
    candidates c
        join
    candidate_batch cb ON c.candidate_id = cb.candidate_id
        join
    batches b ON b.batch_id = cb.batch_id
        join
    marksheets m ON m.candidate_id = c.candidate_id
where
    b.batch_id = 2
order by m.marks desc
limit 1;

-- q5 #Total number of females in every batch

select 
    b.batch_id, count(c.candidate_id) 'No. of Female Candidates'
from
    candidates c
        join
    candidate_batch cb ON c.candidate_id = cb.candidate_id
        join
    batches b ON b.batch_id = cb.batch_id
group by c.gender , b.batch_id
having c.gender = 'female';

-- q6 #Total number of candidates in minority category

select 
    count(candidate_id) 'No. of Minority Candidates'
from
    candidates
where
    category = 'minority';

-- q7 #Name of training partner who trained batch 4

select 
    tqm.name 'Training Partner Training Batch 4'
from
    training_centres tc
        join
    training_partners tqm ON tqm.training_partner_id = tc.training_partner_id
        join
    batches b ON b.training_center_id = tc.training_centre_id
WHERE
    b.batch_id = 4;

-- q8 #Top 3 cities in India with maximum candidates enrolled

select 
    ct.name '3 Cities Having Max Candidates'
from
    candidates c
        join
    cities ct ON c.city_id = ct.city_id
group by c.city_id
order by count(c.candidate_id)
limit 3;

-- q9 #Total number of qualification packs in each sector

select 
    s.name 'Sectors',
    count(qp.qualification_pack_id) 'No. of Qualification Pack'
from
    sectors s
        join
    qualification_packs qp ON qp.sector_id = s.sector_id
GROUP BY qp.sector_id;

-- q10 #SPOC details for every training centre

select 
    centre_spoc_name 'SPOC',
    centre_spoc_contact_number 'Contact',
    centre_SPOC_Email 'Email'
from
    training_centres;
use skill_india3;

INSERT INTO `states` ( `name`) VALUES
('ANDAMAN AND NICOBAR ISLANDS ISLANDS'),
('ANDHRA PRADESH'),
('ARUNACHAL PRADESH'),
('ASSAM'),
('BIHAR'),
('CHHATTISGARH'),
('DAMAN AND DIU'),
('DELHI'),
('GOA'),
('GUJARAT'),
('HARYANA'),
('HIMACHAL PRADESH'),
('JAMMU AND KASHMIR'),
('JHARKHAND'),
('KARNATAKA'),
('KERALA'),
('LAKSHADWEEP'),
('MADHYA PRADESH'),
('MAHARASHTRA'),
('MANIPUR'),
('MEGHALAYA'),
('MIZORAM'),
('NAGALAND'),
('ORISSA'),
('PONDICHERRY'),
('PUNJAB'),
('RAJASTHAN'),
('SIKKIM'),
('TAMIL NADU'),
('TELANGANA'),
('TRIPURA'),
('UTTAR PRADESH'),
('UTTARAKHAND'),
('WEST BENGAL');

INSERT INTO `cities` ( `name`,`state_id`) VALUES
('AGRA',32),
('ALLAHABAD',32),
('BAREILLY',32),
('LUCKNOW',32),
('KANPUR',32),
('AMBALA',11),
('FARIDABAD',11),
('GURUGRAM',11),
('PUNCHKULA',11),
('KURUKSHETRA',11),
('JHALLANDHAR',26),
('LUDHIYANA',26),
('PATIALA',26),
('TIRUPATI',2),
('VIJAYAWADA',2),
('VISAKHAPATNAM',2);


INSERT INTO `qualification` (`qualification_type`) VALUES ('less than 5th');
INSERT INTO `qualification` (`qualification_type`) VALUES ('5th pass');
INSERT INTO `qualification` (`qualification_type`) VALUES ('8th pass');
INSERT INTO `qualification` (`qualification_type`) VALUES ('10th pass');
INSERT INTO `qualification` (`qualification_type`) VALUES ('12th pass');
INSERT INTO `qualification` (`qualification_type`) VALUES ('ITI');
INSERT INTO `qualification` (`qualification_type`) VALUES ('diploma');
INSERT INTO `qualification` (`qualification_type`) VALUES ('polytechnic');
INSERT INTO `qualification` (`qualification_type`) VALUES ('graduate');
INSERT INTO `qualification` (`qualification_type`) VALUES ('post_graduate');


INSERT INTO `candidates` (`name`, `email`, `contact`, `gender`, `state_id`, `city_id`, `qualification_id`, `category`) VALUES ('vijay kumar', 'vijya@gmail.com', '987456121', 'male', '2', '14', '1', 'general');
INSERT INTO `candidates` (`name`, `email`, `contact`, `gender`, `state_id`, `city_id`, `qualification_id`, `category`) VALUES ('jitendar singh', 'jitendar@gmail.com', '846846816', 'male', '2', '15', '2', 'sc');
INSERT INTO `candidates` (`name`, `email`, `contact`, `gender`, `state_id`, `city_id`, `qualification_id`, `category`) VALUES ('surendar', 'surendar@gmail.com', '28789468', 'male', '26', '12', '3', 'st');
INSERT INTO `candidates` (`name`, `email`, `contact`, `gender`, `state_id`, `city_id`, `qualification_id`, `category`) VALUES ('motilal', 'moti@gmail.com', '987456123', 'male', '32', '1', '4', 'sc');
INSERT INTO `candidates` (`name`, `email`, `contact`, `gender`, `state_id`, `city_id`, `qualification_id`, `category`) VALUES ('heeralal', 'heer@gmail.com', '985236147', 'male', '11', '6', '5', 'obc');
INSERT INTO `candidates` (`name`, `email`, `contact`, `gender`, `state_id`, `city_id`, `qualification_id`, `category`) VALUES ('sugnaram', 'sug@gmail.com', '965231487', 'female', '2', '16', '6', 'general');
INSERT INTO `candidates` (`name`, `email`, `contact`, `gender`, `state_id`, `city_id`, `qualification_id`, `category`) VALUES ('lokesh', 'lokesh2@gmail.com', '985632147', 'male', '32', '2', '7', 'st');
INSERT INTO `candidates` (`name`, `email`, `contact`, `gender`, `state_id`, `city_id`, `qualification_id`, `category`) VALUES ('deepali', 'deepi@gmail.com', '951236478', 'female', '11', '7', '8', 'sc');
INSERT INTO `candidates` (`name`, `email`, `contact`, `gender`, `state_id`, `city_id`, `qualification_id`, `category`) VALUES ('shaifali', 'shaifu@gmail.com', '987456321', 'female', '26', '12', '9', 'minority');
INSERT INTO `candidates` (`name`, `email`, `contact`, `gender`, `state_id`, `city_id`, `qualification_id`, `category`) VALUES ('kamal', 'kamlu@gmail.com', '456123789', 'male', '2', '16', '1', 'general');
INSERT INTO `candidates` (`name`, `email`, `contact`, `gender`, `state_id`, `city_id`, `qualification_id`, `category`) VALUES ('deepa jaiswal', 'deepu@gmail.com', '25871361', 'female', '32', '1', '2', 'st');
INSERT INTO `candidates` (`name`, `email`, `contact`, `gender`, `state_id`, `city_id`, `qualification_id`, `category`) VALUES ('madhu kumar', 'angel_mad@gmail.com', '954785216', 'female', '11', '7', '3', 'sc');
INSERT INTO `candidates` (`name`, `email`, `contact`, `gender`, `state_id`, `city_id`, `qualification_id`, `category`) VALUES ('jagdeesh kumar', 'jaggu@gmail.com', '984563547', 'male', '32', '4', '10', 'minority');
INSERT INTO `candidates` (`name`, `email`, `contact`, `gender`, `state_id`, `city_id`, `qualification_id`, `category`) VALUES ('rajnikant gupta', 'rajni@gmail.com', '987456328', 'male', '26', '12', '2', 'sc');
INSERT INTO `candidates` (`name`, `email`, `contact`, `gender`, `state_id`, `city_id`, `qualification_id`, `category`) VALUES ('deepesh kumar', 'dee@gmail.com', '958473651', 'female', '2', '15', '4', 'obc');
INSERT INTO `candidates` (`name`, `email`, `contact`, `gender`, `state_id`, `city_id`, `qualification_id`, `category`) VALUES ('ajay verma', 'ajay@gmail.com', '865472368', 'male', '32', '3', '5', 'obc');
INSERT INTO `candidates` (`name`, `email`, `contact`, `gender`, `state_id`, `city_id`, `qualification_id`, `category`) VALUES ('sachin kumar', 'sachin@gmail.com', '984563215', 'male', '11', '8', '8', 'st');
INSERT INTO `candidates` (`name`, `email`, `contact`, `gender`, `state_id`, `city_id`, `qualification_id`, `category`) VALUES ('harash sharma', 'harsh@gmail.com', '984569215', 'male', '26', '12', '9', 'sc');
INSERT INTO `candidates` (`name`, `email`, `contact`, `gender`, `state_id`, `city_id`, `qualification_id`, `category`) VALUES ('yatin chaurasiya', 'yatini@gmail.com', '874532165', 'male', '2', '14', '1', 'minority');
INSERT INTO `candidates` (`name`, `email`, `contact`, `gender`, `state_id`, `city_id`, `qualification_id`, `category`) VALUES ('shreya talpade', 'shreya77777@gmail.com', '856321632', 'female', '26', '13', '9', 'sc');


INSERT INTO `training_partners` (`training_partner_id`, `name`, `address`, `state_id`, `city_id`) VALUES ('1', 'empower pragat trainingi partners limited', 'a3 vikash nagar', '26', '12');
INSERT INTO `training_partners` (`training_partner_id`, `name`, `address`, `state_id`, `city_id`) VALUES ('2', 'skills developer trainingi partners limited', 's4 sarojni', '11', '7');
INSERT INTO `training_partners` (`training_partner_id`, `name`, `address`, `state_id`, `city_id`) VALUES ('3', 'tata trust skill project', 'd114 industrial area', '32', '4');
INSERT INTO `training_partners` (`training_partner_id`, `name`, `address`, `state_id`, `city_id`) VALUES ('4', 'trail blazers trainingi partners limited', 'second floor DDA complex', '26', '11');
INSERT INTO `training_partners` (`training_partner_id`, `name`, `address`, `state_id`, `city_id`) VALUES ('5', 'desh pandey foundation trainingi partners limited', 'A162 first floor HK house', '11', '10');
INSERT INTO `training_partners` (`training_partner_id`, `name`, `address`, `state_id`, `city_id`) VALUES ('6', 'AV global partners', '17 MLA Jawahar chawk', '32', '5');
INSERT INTO `training_partners` (`training_partner_id`, `name`, `address`, `state_id`, `city_id`) VALUES ('7', 'ASTP trainingi partners limited', 'unit 340 tower b3 tech park', '2', '15');
INSERT INTO `training_partners` (`training_partner_id`, `name`, `address`, `state_id`, `city_id`) VALUES ('8', 'QSEC trainingi partners limited', '488 sun view apartments sector 11', '32', '3');
INSERT INTO `training_partners` (`training_partner_id`, `name`, `address`, `state_id`, `city_id`) VALUES ('9', 'Sri SRI RURAL development programme', '1205 12th floor weldone tech park', '11', '8');
INSERT INTO `training_partners` (`training_partner_id`, `name`, `address`, `state_id`, `city_id`) VALUES ('10', 'waste water treatment project limited', '#10 5th cross jp nagar', '32', '2');




INSERT INTO `sectors` (`name`) VALUES ('solar');
INSERT INTO `sectors` (`name`) VALUES ('water');



INSERT INTO `qualification_packs` (`name`, `sector_id`) VALUES ('solar pv installer', '1');
INSERT INTO `qualification_packs` (`name`, `sector_id`) VALUES ('solar designer', '1');
INSERT INTO `qualification_packs` (`name`, `sector_id`) VALUES ('solar grid engineer', '1');
INSERT INTO `qualification_packs` (`name`, `sector_id`) VALUES ('waste treatment', '2');



INSERT INTO `training_partner_qualification_pack_mapper` (`training_partner_id`, `qualification_pack_id`) VALUES ('1', '1');
INSERT INTO `training_partner_qualification_pack_mapper` (`training_partner_id`, `qualification_pack_id`) VALUES ('1', '2');
INSERT INTO `training_partner_qualification_pack_mapper` (`training_partner_id`, `qualification_pack_id`) VALUES ('2', '3');
INSERT INTO `training_partner_qualification_pack_mapper` (`training_partner_id`, `qualification_pack_id`) VALUES ('2', '4');
INSERT INTO `training_partner_qualification_pack_mapper` (`training_partner_id`, `qualification_pack_id`) VALUES ('3', '1');
INSERT INTO `training_partner_qualification_pack_mapper` (`training_partner_id`, `qualification_pack_id`) VALUES ('4', '2');
INSERT INTO `training_partner_qualification_pack_mapper` (`training_partner_id`, `qualification_pack_id`) VALUES ('4', '3');
INSERT INTO `training_partner_qualification_pack_mapper` (`training_partner_id`, `qualification_pack_id`) VALUES ('5', '4');
INSERT INTO `training_partner_qualification_pack_mapper` (`training_partner_id`, `qualification_pack_id`) VALUES ('5', '1');
INSERT INTO `training_partner_qualification_pack_mapper` (`training_partner_id`, `qualification_pack_id`) VALUES ('9', '2');
INSERT INTO `training_partner_qualification_pack_mapper` (`training_partner_id`, `qualification_pack_id`) VALUES ('10', '3');



INSERT INTO `training_centres` (`training_centre_id`, `name`, `address`, `state_id`, `city_id`, `centre_SPOC_name`, `centre_SPOC_contact_number`, `centre_SPOC_Email`) VALUES ('1', 'cdm infrastructures', 'f 463 sector 63', '32', '2',  'indrajeet', '99999', 'i@gmail.com');
INSERT INTO `training_centres` (`training_centre_id`, `name`, `address`, `state_id`, `city_id`, `centre_SPOC_name`, `centre_SPOC_contact_number`, `centre_SPOC_Email`) VALUES ('2', 'webtech universal learning', 'building no 413 link road', '11', '7', 'vijay kumar', '5852005', 'v@gmail.com');
INSERT INTO `training_centres` (`training_centre_id`, `name`, `address`, `state_id`, `city_id`, `centre_SPOC_name`, `centre_SPOC_contact_number`, `centre_SPOC_Email`) VALUES ('3', 'centre for renewable energy and env', 'plot no 8 opp girnar restraurent', '26', '12',  'satya bhusan  ', '9995201', 's@gmail.com');
INSERT INTO `training_centres` (`training_centre_id`, `name`, `address`, `state_id`, `city_id`, `centre_SPOC_name`, `centre_SPOC_contact_number`, `centre_SPOC_Email`) VALUES ('4', 'institute of solar power tech', 'pramukh park society', '2', '14', 'suresh kumar', '95220', 'su@gmail.com');
INSERT INTO `training_centres` (`training_centre_id`, `name`, `address`, `state_id`, `city_id`, `centre_SPOC_name`, `centre_SPOC_contact_number`, `centre_SPOC_Email`) VALUES ('5', 'kerala centre', 'msdc building ', '32', '1',  'yogesh sharma', '5669996', 'y@gmail.com');
INSERT INTO `training_centres` (`training_centre_id`, `name`, `address`, `state_id`, `city_id`, `centre_SPOC_name`, `centre_SPOC_contact_number`, `centre_SPOC_Email`) VALUES ('6', 'plantation workers', '15 mari naidu street', '11', '6',  'satish', '699955', 'sa@gmail.com');
INSERT INTO `training_centres` (`training_centre_id`, `name`, `address`, `state_id`, `city_id`, `centre_SPOC_name`, `centre_SPOC_contact_number`, `centre_SPOC_Email`) VALUES ('7', 'prime edu welfare society', 'c block vivek bihar', '26', '13',  'hs ramu', '23999', 'hs@gmail.com');
INSERT INTO `training_centres` (`training_centre_id`, `name`, `address`, `state_id`, `city_id`, `centre_SPOC_name`, `centre_SPOC_contact_number`, `centre_SPOC_Email`) VALUES ('8', 'uerpl training centre', 'b 73 nirala nagar', '2', '15',  'manoj kumar', '823205', 'mk@gmail.com');
INSERT INTO `training_centres` (`training_centre_id`, `name`, `address`, `state_id`, `city_id`, `centre_SPOC_name`, `centre_SPOC_contact_number`, `centre_SPOC_Email`) VALUES ('9', 'ads foundation', 'block 1 ultimate training centre', '32', '3', 'ranjeet', '6552', 'ran@gmail.com');
INSERT INTO `training_centres` (`training_centre_id`, `name`, `address`, `state_id`, `city_id`, `centre_SPOC_name`, `centre_SPOC_contact_number`, `centre_SPOC_Email`) VALUES ('10', 'mg institute for energy', 'c123 near milk dairy', '11', '7',  'prakash singh', '6666', 'pp@gmail.com');



INSERT INTO `assessement_agencies` (`assessement_agency_id`, `name`, `address`, `state_id`, `city_id`) VALUES ('1', 'ace assessment pvt ltd', 'd114 phase 1', '32', '1');
INSERT INTO `assessement_agencies` (`assessement_agency_id`, `name`, `address`, `state_id`, `city_id`) VALUES ('2', 'navriti tech pvt ltd', 'second floor commercial complex', '11', '6');
INSERT INTO `assessement_agencies` (`assessement_agency_id`, `name`, `address`, `state_id`, `city_id`) VALUES ('3', 'iq aj pvt ltd', 'first floor hk house', '26', '11');
INSERT INTO `assessement_agencies` (`assessement_agency_id`, `name`, `address`, `state_id`, `city_id`) VALUES ('4', 'india skills pvt ltd', 'unit 340 tech park', '2', '14');
INSERT INTO `assessement_agencies` (`assessement_agency_id`, `name`, `address`, `state_id`, `city_id`) VALUES ('5', 'skill training pvt ltd', '488 sec 11', '32', '5');
INSERT INTO `assessement_agencies` (`assessement_agency_id`, `name`, `address`, `state_id`, `city_id`) VALUES ('6', 'virtual edu trust', '1205 welldone park', '11', '10');
INSERT INTO `assessement_agencies` (`assessement_agency_id`, `name`, `address`, `state_id`, `city_id`) VALUES ('7', 'fedration of indian entreprenuer', '3rd floor asshirwad towers', '26', '13');
INSERT INTO `assessement_agencies` (`assessement_agency_id`, `name`, `address`, `state_id`, `city_id`) VALUES ('8', 'balmaan edu services pvt ltd', '63 5th floor sec 18', '2', '16');
INSERT INTO `assessement_agencies` (`assessement_agency_id`, `name`, `address`, `state_id`, `city_id`) VALUES ('9', 'trendsetters skill assesors pvt ltd', '2 wave silver tower', '32', '4');
INSERT INTO `assessement_agencies` (`assessement_agency_id`, `name`, `address`, `state_id`, `city_id`) VALUES ('10', 'cocubes tech', 'building no 81 sec 44', '11', '7');




INSERT INTO `assessement_agency_centres` (`assessement_agency_center_id`, `name`, `address`, `state_id`, `city_id`, `assessement_agency_centre_SPOC_name`, `assessement_agency_id`, `assessement_agency_centre_SPOC_contact_number`) VALUES ('1', 'iris corporation sol', 'plot no 85', '32 ', '1', 'kiran bahuguna', '1', '2365415');
INSERT INTO `assessement_agency_centres` (`assessement_agency_center_id`, `name`, `address`, `state_id`, `city_id`, `assessement_agency_centre_SPOC_name`, `assessement_agency_id`, `assessement_agency_centre_SPOC_contact_number`) VALUES ('2', 'virtual sas', 'sector 44', '11', '6', 'ramesh kumar', '10', '589663');
INSERT INTO `assessement_agency_centres` (`assessement_agency_center_id`, `name`, `address`, `state_id`, `city_id`, `assessement_agency_centre_SPOC_name`, `assessement_agency_id`, `assessement_agency_centre_SPOC_contact_number`) VALUES ('3', 'indore skills assessment', '30 wave silver tower', '26', '11', 'suresh kumar', '4', '569996');
INSERT INTO `assessement_agency_centres` (`assessement_agency_center_id`, `name`, `address`, `state_id`, `city_id`, `assessement_agency_centre_SPOC_name`, `assessement_agency_id`, `assessement_agency_centre_SPOC_contact_number`) VALUES ('4', 'robust computers pvt ltd', 'sector 18', '2', '14', 'manoj chauhan', '5', '6655898');
INSERT INTO `assessement_agency_centres` (`assessement_agency_center_id`, `name`, `address`, `state_id`, `city_id`, `assessement_agency_centre_SPOC_name`, `assessement_agency_id`, `assessement_agency_centre_SPOC_contact_number`) VALUES ('5', 'confederation of indian industry', '32 rk road', '32', '5', 'k anand ', '6', '9556699');
INSERT INTO `assessement_agency_centres` (`assessement_agency_center_id`, `name`, `address`, `state_id`, `city_id`, `assessement_agency_centre_SPOC_name`, `assessement_agency_id`, `assessement_agency_centre_SPOC_contact_number`) VALUES ('6', 'ms certification services', 'no 256 phase 3', '11', '10', 'vivek mp', '7', '556699');
INSERT INTO `assessement_agency_centres` (`assessement_agency_center_id`, `name`, `address`, `state_id`, `city_id`, `assessement_agency_centre_SPOC_name`, `assessement_agency_id`, `assessement_agency_centre_SPOC_contact_number`) VALUES ('7', 'manipal city and builders', 'the empire appt', '26', '13', 'kishore babu ', '8', '95566968');
INSERT INTO `assessement_agency_centres` (`assessement_agency_center_id`, `name`, `address`, `state_id`, `city_id`, `assessement_agency_centre_SPOC_name`, `assessement_agency_id`, `assessement_agency_centre_SPOC_contact_number`) VALUES ('8', 'tuv land builders', 'no 503 fourth floor', '2', '16', 'ghulam ali', '10', '56656');
INSERT INTO `assessement_agency_centres` (`assessement_agency_center_id`, `name`, `address`, `state_id`, `city_id`, `assessement_agency_centre_SPOC_name`, `assessement_agency_id`, `assessement_agency_centre_SPOC_contact_number`) VALUES ('9', 'assess people services of india', 'mg road', '32', '4', 'jasbir singh', '1', '6566565');
INSERT INTO `assessement_agency_centres` (`assessement_agency_center_id`, `name`, `address`, `state_id`, `city_id`, `assessement_agency_centre_SPOC_name`, `assessement_agency_id`, `assessement_agency_centre_SPOC_contact_number`) VALUES ('10', 'corporate stars assessors', 'unit 340 tower b', '11', '7', 'pramod kumar', '2', '659898');



INSERT INTO `batches` (`batch_id`, `name`, `start_date`, `end_date`, `training_partner_qualification_pack_mapper_id`, `assessement_agency_id`,`training_center_id`) VALUES ('1', 'batch 1', '2016-1-1', '2016-3-3', '1', '1', '1');
INSERT INTO `batches` (`batch_id`, `name`, `start_date`, `end_date`, `training_partner_qualification_pack_mapper_id`, `assessement_agency_id`,`training_center_id`) VALUES ('2', 'batch 2', '2016-2-2', '2016-4-4', '2', '2', '2');
INSERT INTO `batches` (`batch_id`, `name`, `start_date`, `end_date`, `training_partner_qualification_pack_mapper_id`, `assessement_agency_id`,`training_center_id`) VALUES ('3', 'batch 3', '2016-3-3', '2016-5-5', '2', '3', '3');
INSERT INTO `batches` (`batch_id`, `name`, `start_date`, `end_date`, `training_partner_qualification_pack_mapper_id`, `assessement_agency_id`,`training_center_id`) VALUES ('4', 'batch 4', '2016-4-4', '2016-6-6', '5', '4', '4');
INSERT INTO `batches` (`batch_id`, `name`, `start_date`, `end_date`, `training_partner_qualification_pack_mapper_id`, `assessement_agency_id`,`training_center_id`) VALUES ('5', 'batch 5', '2016-5-5', '2016-7-7', '6', '5', '5');
INSERT INTO `batches` (`batch_id`, `name`, `start_date`, `end_date`, `training_partner_qualification_pack_mapper_id`, `assessement_agency_id`,`training_center_id`) VALUES ('6', 'batch 6', '2016-6-6', '2016-8-8', '1', '6', '6');
INSERT INTO `batches` (`batch_id`, `name`, `start_date`, `end_date`, `training_partner_qualification_pack_mapper_id`, `assessement_agency_id`,`training_center_id`) VALUES ('7', 'batch 7', '2016-7-7', '2016-9-9', '8', '7', '7');
INSERT INTO `batches` (`batch_id`, `name`, `start_date`, `end_date`, `training_partner_qualification_pack_mapper_id`, `assessement_agency_id`,`training_center_id`) VALUES ('8', 'batch 8', '2016-1-1', '2016-3-3', '9', '8', '8');
INSERT INTO `batches` (`batch_id`, `name`, `start_date`, `end_date`, `training_partner_qualification_pack_mapper_id`, `assessement_agency_id`,`training_center_id`) VALUES ('9', 'batch 9', '2016-2-2', '2016-4-4', '10', '9', '9');
INSERT INTO `batches` (`batch_id`, `name`, `start_date`, `end_date`, `training_partner_qualification_pack_mapper_id`, `assessement_agency_id`,`training_center_id`) VALUES ('10', 'batch 10', '2016-3-3', '2016-5-5', '3', '10', '10');
INSERT INTO `batches` (`batch_id`, `name`, `start_date`, `end_date`, `training_partner_qualification_pack_mapper_id`, `assessement_agency_id`,`training_center_id`) VALUES ('11', 'batch 11', '2018-5-5', '2018-9-9', '3', '10', '10');


INSERT INTO `candidate_batch` (`candidate_batch_id`, `batch_id`, `candidate_id`) VALUES ('1', '1', '1');
INSERT INTO `candidate_batch` (`candidate_batch_id`, `batch_id`, `candidate_id`) VALUES ('2', '2', '2');
INSERT INTO `candidate_batch` (`candidate_batch_id`, `batch_id`, `candidate_id`) VALUES ('3', '3', '3');
INSERT INTO `candidate_batch` (`candidate_batch_id`, `batch_id`, `candidate_id`) VALUES ('4', '4', '4');
INSERT INTO `candidate_batch` (`candidate_batch_id`, `batch_id`, `candidate_id`) VALUES ('5', '5', '5');
INSERT INTO `candidate_batch` (`candidate_batch_id`, `batch_id`, `candidate_id`) VALUES ('6', '6', '6');
INSERT INTO `candidate_batch` (`candidate_batch_id`, `batch_id`, `candidate_id`) VALUES ('7', '7', '7');
INSERT INTO `candidate_batch` (`candidate_batch_id`, `batch_id`, `candidate_id`) VALUES ('8', '8', '8');
INSERT INTO `candidate_batch` (`candidate_batch_id`, `batch_id`, `candidate_id`) VALUES ('9', '9', '9');
INSERT INTO `candidate_batch` (`candidate_batch_id`, `batch_id`, `candidate_id`) VALUES ('10', '10', '10');
INSERT INTO `candidate_batch` (`candidate_batch_id`, `batch_id`, `candidate_id`) VALUES ('11', '10', '11');
INSERT INTO `candidate_batch` (`candidate_batch_id`, `batch_id`, `candidate_id`) VALUES ('12', '1', '12');
INSERT INTO `candidate_batch` (`candidate_batch_id`, `batch_id`, `candidate_id`) VALUES ('13', '2', '13');
INSERT INTO `candidate_batch` (`candidate_batch_id`, `batch_id`, `candidate_id`) VALUES ('14', '3', '14');
INSERT INTO `candidate_batch` (`candidate_batch_id`, `batch_id`, `candidate_id`) VALUES ('15', '4', '15');
INSERT INTO `candidate_batch` (`candidate_batch_id`, `batch_id`, `candidate_id`) VALUES ('16', '5', '16');
INSERT INTO `candidate_batch` (`candidate_batch_id`, `batch_id`, `candidate_id`) VALUES ('17', '6', '17');
INSERT INTO `candidate_batch` (`candidate_batch_id`, `batch_id`, `candidate_id`) VALUES ('18', '7', '18');
INSERT INTO `candidate_batch` (`candidate_batch_id`, `batch_id`, `candidate_id`) VALUES ('19', '8', '19');
INSERT INTO `candidate_batch` (`candidate_batch_id`, `batch_id`, `candidate_id`) VALUES ('20', '9', '20');




INSERT INTO `marksheets` (`marksheet_id`, `candidate_id`, `qualification_pack_id`, `marks`, `result`, `is_certified`, `passing_date`) VALUES ('1', '1', '1', '23', 'fail', '0', '2017-3-3');
INSERT INTO `marksheets` (`marksheet_id`, `candidate_id`, `qualification_pack_id`, `marks`, `result`, `is_certified`, `passing_date`) VALUES ('2', '2', '2', '65', 'pass', '1', '2017-4-4');
INSERT INTO `marksheets` (`marksheet_id`, `candidate_id`, `qualification_pack_id`, `marks`, `result`, `is_certified`, `passing_date`) VALUES ('3', '3', '1', '87', 'pass', '1', '2017-5-5');
INSERT INTO `marksheets` (`marksheet_id`, `candidate_id`, `qualification_pack_id`, `marks`, `result`, `is_certified`, `passing_date`) VALUES ('4', '4', '2', '98', 'pass', '1', '2017-6-6');
INSERT INTO `marksheets` (`marksheet_id`, `candidate_id`, `qualification_pack_id`, `marks`, `result`, `is_certified`, `passing_date`) VALUES ('5', '5', '3', '91', 'pass', '1', '2017-7-7');
INSERT INTO `marksheets` (`marksheet_id`, `candidate_id`, `qualification_pack_id`, `marks`, `result`, `is_certified`, `passing_date`) VALUES ('6', '6', '4', '23', 'fail', '0', '2017-8-8');
INSERT INTO `marksheets` (`marksheet_id`, `candidate_id`, `qualification_pack_id`, `marks`, `result`, `is_certified`, `passing_date`) VALUES ('7', '7', '1', '56', 'pass', '1', '2017-3-3');
INSERT INTO `marksheets` (`marksheet_id`, `candidate_id`, `qualification_pack_id`, `marks`, `result`, `is_certified`, `passing_date`) VALUES ('8', '8', '2', '76', 'pass', '1', '2017-9-9');
INSERT INTO `marksheets` (`marksheet_id`, `candidate_id`, `qualification_pack_id`, `marks`, `result`, `is_certified`, `passing_date`) VALUES ('9', '9', '3', '82', 'pass', '1', '2017-5-5');
INSERT INTO `marksheets` (`marksheet_id`, `candidate_id`, `qualification_pack_id`, `marks`, `result`, `is_certified`, `passing_date`) VALUES ('10', '10', '4', '65', 'pass', '1', '2017-7-7');
INSERT INTO `marksheets` (`marksheet_id`, `candidate_id`, `qualification_pack_id`, `marks`, `result`, `is_certified`, `passing_date`) VALUES ('11', '11', '1', '97', 'pass', '1', '2017-7-7');
INSERT INTO `marksheets` (`marksheet_id`, `candidate_id`, `qualification_pack_id`, `marks`, `result`, `is_certified`, `passing_date`) VALUES ('12', '12', '2', '65', 'pass', '1', '2017-9-9');
INSERT INTO `marksheets` (`marksheet_id`, `candidate_id`, `qualification_pack_id`, `marks`, `result`, `is_certified`, `passing_date`) VALUES ('13', '13', '3', '01', 'fail', '0', '2017-3-3');
INSERT INTO `marksheets` (`marksheet_id`, `candidate_id`, `qualification_pack_id`, `marks`, `result`, `is_certified`, `passing_date`) VALUES ('14', '14', '4', '49', 'fail', '0', '2017-4-4');
INSERT INTO `marksheets` (`marksheet_id`, `candidate_id`, `qualification_pack_id`, `marks`, `result`, `is_certified`, `passing_date`) VALUES ('15', '15', '1', '71', 'pass', '1', '2017-5-5');
INSERT INTO `marksheets` (`marksheet_id`, `candidate_id`, `qualification_pack_id`, `marks`, `result`, `is_certified`, `passing_date`) VALUES ('16', '16', '2', '54', 'pass', '1', '2017-8-8');
INSERT INTO `marksheets` (`marksheet_id`, `candidate_id`, `marks`, `qualification_pack_id`, `result`, `is_certified`, `passing_date`) VALUES ('17', '17', '24', '3', 'fail', '0', NULL);
UPDATE `marksheets` 
SET 
    `passing_date` = null
WHERE
    `marksheet_id` = '14';
UPDATE `marksheets` 
SET 
    `passing_date` = null
WHERE
    `marksheet_id` = '13';
UPDATE `marksheets` 
SET 
    `passing_date` = null
WHERE
    `marksheet_id` = '6';
UPDATE `marksheets` 
SET 
    `passing_date` = null
WHERE
    `marksheet_id` = '1';
INSERT INTO `marksheets` (`marksheet_id`, `candidate_id`, `marks`, `qualification_pack_id`, `result`, `is_certified`, `passing_date`) VALUES ('18', '18', '51', '3', 'pass', '1', '2017-08-08');


INSERT INTO `training_center_qualification_pack_mapper` (`training_center_qualification_pack_mapper_id`, `qualification_pack_id`, `training_center_id`) VALUES ('1', '1', '2');
INSERT INTO `training_center_qualification_pack_mapper` (`training_center_qualification_pack_mapper_id`, `qualification_pack_id`, `training_center_id`) VALUES ('2', '2', '1');
INSERT INTO `training_center_qualification_pack_mapper` (`training_center_qualification_pack_mapper_id`, `qualification_pack_id`, `training_center_id`) VALUES ('3', '3', '4');
INSERT INTO `training_center_qualification_pack_mapper` (`training_center_qualification_pack_mapper_id`, `qualification_pack_id`, `training_center_id`) VALUES ('4', '1', '3');
INSERT INTO `training_center_qualification_pack_mapper` (`training_center_qualification_pack_mapper_id`, `qualification_pack_id`, `training_center_id`) VALUES ('5', '2', '4');
INSERT INTO `training_center_qualification_pack_mapper` (`training_center_qualification_pack_mapper_id`, `qualification_pack_id`, `training_center_id`) VALUES ('6', '3', '2');
INSERT INTO `training_center_qualification_pack_mapper` (`training_center_qualification_pack_mapper_id`, `qualification_pack_id`, `training_center_id`) VALUES ('7', '4', '5');
INSERT INTO `training_center_qualification_pack_mapper` (`training_center_qualification_pack_mapper_id`, `qualification_pack_id`, `training_center_id`) VALUES ('8', '1', '6');

UPDATE `training_centres` 
SET 
    `training_partner_id` = '5'
WHERE
    `training_centre_id` = '10';

UPDATE `batches` 
SET 
    `training_partner_qualification_pack_mapper_id` = '11'
WHERE
    `batch_id` = '11';

INSERT INTO `batches` (`batch_id`, `name`, `start_date`) VALUES ('12', 'batch 12', '2018-07-05');

UPDATE `training_centres` 
SET 
    `training_partner_id` = '1'
WHERE
    `training_centre_id` = '1';
UPDATE `training_centres` 
SET 
    `training_partner_id` = '1'
WHERE
    `training_centre_id` = '2';
UPDATE `training_centres` 
SET 
    `training_partner_id` = '2'
WHERE
    `training_centre_id` = '3';
UPDATE `training_centres` 
SET 
    `training_partner_id` = '2'
WHERE
    `training_centre_id` = '4';
UPDATE `training_centres` 
SET 
    `training_partner_id` = '4'
WHERE
    `training_centre_id` = '5';
UPDATE `training_centres` 
SET 
    `training_partner_id` = '3'
WHERE
    `training_centre_id` = '6';
UPDATE `batches` 
SET 
    `training_center_id` = '5'
WHERE
    `batch_id` = '8';

UPDATE `training_centres` 
SET 
    `state_id` = '3'
WHERE
    `training_centre_id` = '1';


UPDATE `batches` 
SET 
    `assessment_date` = '2016-04-03'
WHERE
    `batch_id` = '1';
UPDATE `batches` 
SET 
    `assessment_date` = '2016-05-02'
WHERE
    `batch_id` = '2';
UPDATE `batches` 
SET 
    `assessment_date` = '2016-06-02'
WHERE
    `batch_id` = '3';
UPDATE `batches` 
SET 
    `assessment_date` = '2016-07-02'
WHERE
    `batch_id` = '4';
UPDATE `batches` 
SET 
    `assessment_date` = '2016-08-02'
WHERE
    `batch_id` = '5';
UPDATE `batches` 
SET 
    `assessment_date` = '2016-09-02'
WHERE
    `batch_id` = '6';
UPDATE `batches` 
SET 
    `assessment_date` = '2016-10-02'
WHERE
    `batch_id` = '7';
UPDATE `batches` 
SET 
    `assessment_date` = '2016-04-02'
WHERE
    `batch_id` = '8';
UPDATE `batches` 
SET 
    `assessment_date` = '2016-05-02'
WHERE
    `batch_id` = '9';
UPDATE `batches` 
SET 
    `assessment_date` = '2016-06-02'
WHERE
    `batch_id` = '10';

INSERT INTO `batches` (`batch_id`, `name`, `start_date`) VALUES ('13', 'batch 13', '2016-11-03');
		
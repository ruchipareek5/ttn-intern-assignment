SELECT b.batchID, b.batchEndDate, u.userName, u.userID 
FROM batch b, user u 
WHERE batchEndDate < CURDATE() AND u.userID = b.trainingPartnerID AND u.userID = 1;

SELECT b.batchID, b.batchEndDate, u.userName, u.userID 
FROM batch b, user u 
WHERE batchEndDate > CURDATE() AND u.userID = b.trainingPartnerID AND u.userID = 6;

SELECT batchID, assessmentPartnerID FROM batch WHERE assessmentPartnerID = 7;

SELECT batchID, batchStartDate, assessmentPartnerID 
FROM batch 
WHERE batchStartDate > CURDATE() AND assessmentPartnerID = 9;

SELECT * FROM application WHERE applicationStatus = 'submit';

SELECT applicationID, comments FROM application WHERE isActive = 1;

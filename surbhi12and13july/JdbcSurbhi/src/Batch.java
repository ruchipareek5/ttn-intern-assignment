import java.util.Date;

public class Batch {
    private String batchId;
    private String batchName;
    public enum BatchType{PMKVY,NON_PMKVY};
    private BatchType batchType;
    private String trainingPartnerId;
    private int centreId;
    private int trainerId;
    private int totalCandidatesInBatch;
    private String batchMode;
    private Date batchStartDate;
    private Date batchEndDate;
    private String jobRole;
    private String jobRoleCode;
    private float maximumMarksTheory;
    private float maxmumMarksPractical;
    private int level;
    public enum ResultApproved{YES,NO};
    private  ResultApproved resultApproved;
    private Date resultApprovedOnDate;
    private int totalPass;
    private int totalFail;
    private int totalNotAppeared;
    private int totalCertified;
    private Date batchAssignmentDate;
    private Date assessmentDate;
    private int agencyId;
    private int assessorId;

    public Batch(String batchId, String batchName, BatchType batchType, String trainingPartnerId, int centreId, int trainerId, int totalCandidatesInBatch, String batchMode, Date batchStartDate, Date batchEndDate, String jobRole, String jobRoleCode, float maximumMarksTheory, float maxmumMarksPractical, int level, ResultApproved resultApproved, Date resultApprovedOnDate, int totalPass, int totalFail, int totalNotAppeared, int totalCertified, Date batchAssignmentDate, Date assessmentDate, int agencyId, int assessorId) {
        this.batchId = batchId;
        this.batchName = batchName;
        this.batchType = batchType;
        this.trainingPartnerId = trainingPartnerId;
        this.centreId = centreId;
        this.trainerId = trainerId;
        this.totalCandidatesInBatch = totalCandidatesInBatch;
        this.batchMode = batchMode;
        this.batchStartDate = batchStartDate;
        this.batchEndDate = batchEndDate;
        this.jobRole = jobRole;
        this.jobRoleCode = jobRoleCode;
        this.maximumMarksTheory = maximumMarksTheory;
        this.maxmumMarksPractical = maxmumMarksPractical;
        this.level = level;
        this.resultApproved = resultApproved;
        this.resultApprovedOnDate = resultApprovedOnDate;
        this.totalPass = totalPass;
        this.totalFail = totalFail;
        this.totalNotAppeared = totalNotAppeared;
        this.totalCertified = totalCertified;
        this.batchAssignmentDate = batchAssignmentDate;
        this.assessmentDate = assessmentDate;
        this.agencyId = agencyId;
        this.assessorId = assessorId;
    }

    public String getBatchId() {
        return batchId;
    }

    public void setBatchId(String batchId) {
        this.batchId = batchId;
    }

    public String getBatchName() {
        return batchName;
    }

    public void setBatchName(String batchName) {
        this.batchName = batchName;
    }

    public BatchType getBatchType() {
        return batchType;
    }

    public void setBatchType(BatchType batchType) {
        this.batchType = batchType;
    }

    public String getTrainingPartnerId() {
        return trainingPartnerId;
    }

    public void setTrainingPartnerId(String trainingPartnerId) {
        this.trainingPartnerId = trainingPartnerId;
    }

    public int getCentreId() {
        return centreId;
    }

    public void setCentreId(int centreId) {
        this.centreId = centreId;
    }

    public int getTrainerId() {
        return trainerId;
    }

    public void setTrainerId(int trainerId) {
        this.trainerId = trainerId;
    }

    public int getTotalCandidatesInBatch() {
        return totalCandidatesInBatch;
    }

    public void setTotalCandidatesInBatch(int totalCandidatesInBatch) {
        this.totalCandidatesInBatch = totalCandidatesInBatch;
    }

    public String getBatchMode() {
        return batchMode;
    }

    public void setBatchMode(String batchMode) {
        this.batchMode = batchMode;
    }

    public Date getBatchStartDate() {
        return batchStartDate;
    }

    public void setBatchStartDate(Date batchStartDate) {
        this.batchStartDate = batchStartDate;
    }

    public Date getBatchEndDate() {
        return batchEndDate;
    }

    public void setBatchEndDate(Date batchEndDate) {
        this.batchEndDate = batchEndDate;
    }

    public String getJobRole() {
        return jobRole;
    }

    public void setJobRole(String jobRole) {
        this.jobRole = jobRole;
    }

    public String getJobRoleCode() {
        return jobRoleCode;
    }

    public void setJobRoleCode(String jobRoleCode) {
        this.jobRoleCode = jobRoleCode;
    }

    public float getMaximumMarksTheory() {
        return maximumMarksTheory;
    }

    public void setMaximumMarksTheory(float maximumMarksTheory) {
        this.maximumMarksTheory = maximumMarksTheory;
    }

    public float getMaxmumMarksPractical() {
        return maxmumMarksPractical;
    }

    public void setMaxmumMarksPractical(float maxmumMarksPractical) {
        this.maxmumMarksPractical = maxmumMarksPractical;
    }

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    public ResultApproved getResultApproved() {
        return resultApproved;
    }

    public void setResultApproved(ResultApproved resultApproved) {
        this.resultApproved = resultApproved;
    }

    public Date getResultApprovedOnDate() {
        return resultApprovedOnDate;
    }

    public void setResultApprovedOnDate(Date resultApprovedOnDate) {
        this.resultApprovedOnDate = resultApprovedOnDate;
    }

    public int getTotalPass() {
        return totalPass;
    }

    public void setTotalPass(int totalPass) {
        this.totalPass = totalPass;
    }

    public int getTotalFail() {
        return totalFail;
    }

    public void setTotalFail(int totalFail) {
        this.totalFail = totalFail;
    }

    public int getTotalNotAppeared() {
        return totalNotAppeared;
    }

    public void setTotalNotAppeared(int totalNotAppeared) {
        this.totalNotAppeared = totalNotAppeared;
    }

    public int getTotalCertified() {
        return totalCertified;
    }

    public void setTotalCertified(int totalCertified) {
        this.totalCertified = totalCertified;
    }

    public Date getBatchAssignmentDate() {
        return batchAssignmentDate;
    }

    public void setBatchAssignmentDate(Date batchAssignmentDate) {
        this.batchAssignmentDate = batchAssignmentDate;
    }

    public Date getAssessmentDate() {
        return assessmentDate;
    }

    public void setAssessmentDate(Date assessmentDate) {
        this.assessmentDate = assessmentDate;
    }

    public int getAgencyId() {
        return agencyId;
    }

    public void setAgencyId(int agencyId) {
        this.agencyId = agencyId;
    }

    public int getAssessorId() {
        return assessorId;
    }

    public void setAssessorId(int assessorId) {
        this.assessorId = assessorId;
    }

    @Override
    public String toString() {
        return "Batch{" +
                "batchId='" + batchId + '\'' +
                ", batchName='" + batchName + '\'' +
                ", batchType=" + batchType +
                ", trainingPartnerId='" + trainingPartnerId + '\'' +
                ", centreId=" + centreId +
                ", trainerId=" + trainerId +
                ", totalCandidatesInBatch=" + totalCandidatesInBatch +
                ", batchMode='" + batchMode + '\'' +
                ", batchStartDate=" + batchStartDate +
                ", batchEndDate=" + batchEndDate +
                ", jobRole='" + jobRole + '\'' +
                ", jobRoleCode='" + jobRoleCode + '\'' +
                ", maximumMarksTheory=" + maximumMarksTheory +
                ", maxmumMarksPractical=" + maxmumMarksPractical +
                ", level=" + level +
                ", resultApproved=" + resultApproved +
                ", resultApprovedOnDate=" + resultApprovedOnDate +
                ", totalPass=" + totalPass +
                ", totalFail=" + totalFail +
                ", totalNotAppeared=" + totalNotAppeared +
                ", totalCertified=" + totalCertified +
                ", batchAssignmentDate=" + batchAssignmentDate +
                ", assessmentDate=" + assessmentDate +
                ", agencyId=" + agencyId +
                ", assessorId=" + assessorId +
                '}';
    }
}

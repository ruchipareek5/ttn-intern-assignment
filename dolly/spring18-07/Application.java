package com.example.springdemo;

public class Application {
    private int BatchId;
    private String BatchName;
    private String StartDate;
    private String EndDate;
    private String Status;

    public int getBatchId() {
        return BatchId;
    }

    public void setBatchId(int batchId) {
        this.BatchId = batchId;
    }

    public String getBatchName() {
        return BatchName;
    }

    public void setBatchName(String batchName) {
        BatchName = batchName;
    }

    public String getStartDate() {
        return StartDate;
    }

    public void setStartDate(String startDate) {
        StartDate = startDate;
    }

    public String getEndDate() {
        return EndDate;
    }

    public void setEndDate(String endDate) {
        EndDate = endDate;
    }

    public String getStatus() {
        return Status;
    }

    public void setStatus(String status) {
        Status = status;
    }
}

# Two Performance Related Test Cases

## Test Case 01

### Description

Verify response time is not more than 4 secs when the network connectivity is slow

### Requirements

* Firefox Web Browser

#### Test Scenario

Verify response time on slow network

#### Test Steps

1. Open Firefox Web Browser
2. Click on the hamburger > Web Devloper
3. Click on Network
4. Toggle No throttling to DSL

5. Navigate to <https://myhealthbridge.com/join-the-team/>

6. Record Finish and Load times

### Test Data

N/A

### Expected Results

Page load and Finish to be under 4 seconds.

### Actual Results

* load: 1.03s
* Finish: 1.19s

### Pass/Fail

Pass

| ID  | Test Scenario  | Test Steps | Test Data | Expected Results | Actual Results | Pass/Fail |
| :-- | :------------  | :--------- | :-------- | :--------------- | :------------- | :-------- |
| 001 | Verify response time on slow network | <ol><li>Open Firefox Web Browser</li><li>Click on the hamburger > Web Devloper</li><li>Click on Network</li><li>Toggle No throttling to DSL</li><li>Navigate to <https://myhealthbridge.com/join-the-team/></li><li>Record Finish and Load times</li></ol> | N/A | Page load and Finish to be under 4 seconds | load: 1.03s Finish: 1.19s | Pass |

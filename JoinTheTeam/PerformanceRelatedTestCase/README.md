# Two Performance Related Test Cases

## Test Case 01

### Test Case 01 Description

Verify response time is not more than 4 secs when the network connectivity is slow

### Test Case 01 Requirements

* Firefox Web Browser

#### Test Case 01 Test Scenario

Verify response time on slow network

#### Test Case 01 Test Steps

1. Open Firefox Web Browser
2. Click on the hamburger > Web Devloper
3. Click on Network
4. Toggle No throttling to DSL

5. Navigate to <https://myhealthbridge.com/join-the-team/>

6. Record Finish and Load times

### Test Case 01 Test Data

N/A

### Test Case 01 Expected Results

Page load and Finish to be under 4 seconds.

### Test Case 01 Actual Results

* load: 1.03s
* Finish: 1.19s

### Test Case 01 Pass/Fail

Pass

| ID  | Test Scenario  | Test Steps | Test Data | Expected Results | Actual Results | Pass/Fail |
| :-- | :------------  | :--------- | :-------- | :--------------- | :------------- | :-------- |
| 001 | Verify response time on slow network |<ol><li>Open Firefox Web Browser</li><li>Click on the hamburger > Web Devloper</li><li>Click on Network</li><li>Toggle No throttling to DSL</li><li>Navigate to <https://myhealthbridge.com/join-the-team/></li><li>Record Finish and Load times</li></ol> | N/A | Page load and Finish to be under 4 seconds | load: 1.03s Finish: 1.19s | Pass |
---

## Test Case 02

### Test Case 02 Description

Verify Cross-site scripting (XSS) can not be preformed on text input elements.

### Test Case 02 Requirements

* sqlmap <https://github.com/sqlmapproject/sqlmap>
* Python

#### Test Case 02 Test Scenario

Verify XSS on text input elements

#### Test Case 02 Test Steps

1. Download sql map from <https://github.com/sqlmapproject/sqlmap>
2. Via a Terminal navigate to `/path/to/sqlmap`
3. Execute sqlmap.py (see Test Data)
4. Press enter through all of the prompts

5. Once the program compleats, navigate to <https://myhealthbridge.com/join-the-team/>

6. Check the page for any anomalies

### Test Case 02 Test Data

`python sqlmap.py -u "https://myhealthbridge.com/join-the-team/?search_keywords=&selected_category=&selected_jobtype=&selected_location=" --wizard`

### Test Case 02 Expected Results

No exploits to occure

### Test Case 02 Actual Results

Not going to test this with out permission

### Test Case 02 Pass/Fail

Unknown

| ID  | Test Scenario  | Test Steps | Test Data | Expected Results | Actual Results | Pass/Fail |
| :-- | :------------  | :--------- | :-------- | :--------------- | :------------- | :-------- |
| 001 | Verify response time on slow network |<ol><li>Download sql map from <https://github.com/sqlmapproject/sqlmap></li><li>Via a Terminal navigate to `/path/to/sqlmap`</li><li>Execute sqlmap.py (see Test Data)</li><li>Press enter through all of the prompts</li><li>Once the program compleats, navigate to <https://myhealthbridge.com/join-the-team/></li><li>Check the page for any anomalies</li></ol> | `python sqlmap.py -u "https://myhealthbridge.com/join-the-team/?search_keywords=&selected_category=&selected_jobtype=&selected_location=" --wizard` | No exploits to occure | Not going to test this with out permission | Unknown |

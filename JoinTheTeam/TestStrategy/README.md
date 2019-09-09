# Test Strategy

```text
Health Bridge
Join The Team
Project #: 001
Testing Strategy
```

## Table of Contents

1. Introduction
    * 1.1 Audience
2. Testing Strategy Overview
    * 2.1. Objectives
    * 2.2. Deliverable Audience
    * 2.3. Benefits
3. Background
4. Scope
    * 4.1. Test Types by Task
    * 4.2. Testing Environments
    * 4.3. Testing Tools

## 1. Introduction

This document provides the Testing Strategy for the Join The Team Page. It includes the following components:

* Testing Strategy Overview
* Background
* Scope

### 1.1. Audience

The audience for this document includes system development team members, HealthBridge Financial project team members, and members of the QA team.

## 2. Testing Strategy Overview

The Join The Team Page Testing Strategy determines the project’s approach to testing. The strategy looks at the characteristics of the tests to be conducted, the project time line and budget, and plans the breadth and depth of the testing effort. The Testing Strategy will influence tasks related to test planning, test types, test script development, and test execution.

### 2.1. Objectives

The key objectives are as follows:

* Determine the significance, or critical nature, of the Join The Team Page to the business.
* Determine the types of tests required by each testing task.
* Determine the need for manual testing by identifying key page elements.
* Determine the need for Automated testing by identifying key page elements.
* Identify performance assurance requirements.

### 2.2. Deliverable Audience

The Join The Team Page Testing Strategy is intended for the following audience:

* QA and HealthBridge analysts and designers
* QA and HealthBridge testers
* Dev Ops
* Other team members that may be involved in the systems integration test

### 2.3. Benefits

The Testing Strategy can provide the following benefits:

* Faster development of testing requirements by directly using key project deliverables
* Earlier identification of testing requirements
* Independence of testing from development tasks and resources
* Well-defined tests
* Progressive and additive testing tasks

## 3. Background

There are two main elements to the Join The Team Page. The first is a search and filtering element. The second is a results list which can dynamically change depending on the requirement of search and filtering element.

The key search and filtering elements are as follows:

* Text input field
* Category pull-down menu
* Job Type pull-down menu
* Location pull-down menu
* Submit button

The key results list elements are as follows:

* Title
* Category
* Location
* General creation date
* Read More button

All of the search and filtering elements must be tested individually and in concert with one another to insure that all elements behave as expected, both on their own and in combination with other elements. The corresponding result list must return results that fit each of the search and filtering parameters. The read more button must be clickable and link to a new page that contains the correct information from the list element.

## 4. Scope

To define the testing scope of Join The Team Page, the following areas were examined:

* Test types by task
* Testing environments
* Testing tools

### 4.1. Test Types by Task

The following list identifies, by testing task, the types of testing that will be conducted:

#### Non-Incremental tests

| ID  | Test Case Objective  | Test Case Description | Expected Result |
| :-- | :------------------  | :-------------------- | :-------------- |
| 1 | Check the text input field | Refresh the page and click into the text input field. Input letters, numbers, and special characters. | That the text input field is clickable and keyboard inputs were correctly represented. |
| 2 | Check the Category pull-down | Refresh the page and Click the Category pull-down. Click each of the sub categories. | That the Category text changes to the text of the selected sub category. |
| 3 | Check the Job Type pull-down | Refresh the page and Click the Job Type pull-down. Click each of the sub categories. | That the Job Type text changes to the text of the selected sub category. |
| 4 | Check the Location pull-down | Refresh the page and Click the Location pull-down. Click each of the sub categories. | That the Location text changes to the text of the selected sub category. |
| 5 | Check the Submit button | Refresh the page. Click the Submit button. | That no change in results is detected. |
| 6 | Check the Result list | Refresh the page. | That the Result list loads all results upon page load. |
| 7 | Check the Read More button | Refresh the page. Click each of the Read More buttons. | That the Read More button is clickable and opens a new page to the correct article. |

#### Incremental tests

| ID  | Test Case Objective  | Test Case Description | Expected Result |
| :-- | :------------------  | :-------------------- | :-------------- |
| 1 | Check search element | Refresh the page and click into the text input field and input a valid query string. Click the Submit button. | That the Results list contains text corresponding with the query string only. |
| 2 | Check filter elements | Refresh the page and Click the Category, Job Type, Location pull-down. Click each of the sub categories. Click the Submit button. | That the Results list filtered for the selected Category, Job Type, Location sub category only. |
| 3 | Check the search and filter elements | Refresh the page and click into the text input field and input a valid query string. Click the Category, Job Type, Location pull-down. Click each of the sub categories. Click the Submit button. | That the Results list contains text corresponding with the query string and filtered for the selected Category, Job Type, Location sub category only. |

### 4.2. Testing Environments

Add, modify or delete testing tasks as appropriate, and document the required platforms and database(s) needed for each task.
The following table documents the testing environment criteria for each testing task:

| Testing Task | Platform | Browser |
| :----------- | :------- | :------ |
| Module Non-Incremental Test | Windows, Mac OS, Linux | IE, Edge, Safari, Firefox, Chrome |
| Module Incremental Test | Windows, Mac OS, Linux | IE, Edge, Safari, Firefox, Chrome |

### 4.3. Testing Tools

The following testing tools will be used:

| Testing Tool | Purpose |
| :----------- | :------ |
| Manual Tests | To initiate initial testing |
| Ruby, Python | To automate manual testing |

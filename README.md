# Interview Demo

**. : : A L E R T : : .**

This is not a repository for the general public. This is more for a job interview.

![alt text](https://github.com/jaikejennison/HealthBridgeDemo/blob/master/logo.gif "Who tests the tester?")

## Quick Start

```bash
bundle install
cucumber -p interview_demo
```

#### Headless

```bash
bundle install
cucumber HEADLESS=true -p interview_demo
```

#### Tags

* Browser tags `@chrome|@firefox`
* Scenario tags `@search|@categoty_filter|@job_type_filter|@location_filter|@search_and_filter`

```bash
bundle install
cucumber -p interview_demo -t @tag1 @tag2 ...
```

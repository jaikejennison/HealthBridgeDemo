# Interview Demo

**. : : A L E R T : : .**

This is not a repository for the general public. This is more for a job interview.

![alt text](https://github.com/jaikejennison/HealthBridgeDemo/blob/master/logo.gif "Who tests the tester?")

## Quick Start

```bash
bundle install
cucumber -p demo
```

#### Headless

```bash
bundle install
cucumber HEADLESS=true -p demo
```

#### Tags

* Browser tags `@chrome|@firefox`
* Scenario tags `@search|@landing_page|@contact_page|@workplace_page`

```bash
bundle install
cucumber -p demo -t @tag1 @tag2 ...
```

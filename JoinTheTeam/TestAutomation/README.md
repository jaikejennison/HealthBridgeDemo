# TestAutomation

## Quick Start

```bash
bundle install
cucumber -p join_the_team
```
### Headless

```bash
bundle install
cucumber HEADLESS=true -p join_the_team
```

### Tags

```bash
bundle install
cucumber -p join_the_team -t @search|@categoty_filter|@job_type_filter|@location_filter|@search_and_filter
```

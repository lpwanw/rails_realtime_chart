# README
[![CI](https://github.com/lpwanw/rails_realtime_chart/actions/workflows/ci.yml/badge.svg)](https://github.com/lpwanw/rails_realtime_chart/actions/workflows/ci.yml)

## This is a demo for realtime chart

# Setup

## Development tools

- RVM (Ruby Version Manager)
- ruby 3.2.2
- Rails 7.0.7
- Bundler 2.4.15
- MySQL 8.0.33
- Redis 7.0.4

## Before run

- setup mysql
```shell
    mysql_tzinfo_to_sql /usr/share/zoneinfo | mysql -u root -p mysql
```

- setup db
```shell
    rails db:create
    rails db:migrate
```

# demo

### Line Chart

```shell
    # clean database
    rails db:migrate:reset
    # monitor at /notes
    # run fake realtime data update
    rails db:seed type=note
```

[<img src="https://img.youtube.com/vi/mnO58x9uoRc/hqdefault.jpg" width="600" height="300"/>](https://www.youtube.com/embed/mnO58x9uoRc)

### Bar Chart

```shell
    # clean database
    rails db:migrate:reset
    # monitor at /tasks
    # run fake realtime data update
    rails db:seed type=task
```

[<img src="https://img.youtube.com/vi/zD-bPZsbD20/hqdefault.jpg" width="600" height="300"/>](https://www.youtube.com/embed/zD-bPZsbD20)

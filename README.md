# Keploy Ruby Quickstart (Sinatra)

This repository demonstrates how to use Keploy with a Ruby (Sinatra) REST API
to record and replay API traffic without adding any SDKs or instrumentation.

## What this example does
- Simple Ruby REST API using Sinatra
- Endpoints:
  - GET /
  - POST /todos
  - GET /todos
- Keploy record & replay working end-to-end


## Project Structure
.
├── app.rb
├── Gemfile
├── Gemfile.lock
├── config.ru
├── keploy.yml
├── keploy/
│   ├── test-set-0/
│   ├── test-set-1/
│   └── test-set-2/
└── README.md
<img width="755" height="725" alt="image" src="https://github.com/user-attachments/assets/3a330f91-3448-4227-8fcf-5407051012dd" />

## Tech Stack
- Language: Ruby
- Framework: Sinatra
- Testing: Keploy

## Local Setup (without Docker)

### Prerequisites
- Ubuntu / WSL
- Ruby >= 3.x
- Bundler
- Keploy installed

### Run the app normally
### Run the application

```bash
bundle install
```
<img width="841" height="90" alt="image" src="https://github.com/user-attachments/assets/892ac2c3-0ed1-4110-bed3-f2984976ba0b" />

```bash
bundle exec rackup -o 0.0.0.0 -p 4567
```
<img width="1920" height="811" alt="image" src="https://github.com/user-attachments/assets/c1cebf8d-df87-41a0-ad44-b85d432f18e4" />

## Test the APIs

### 1. Using Browser
Open: [http://localhost:4567/](url)

Expected response:
<img width="1462" height="508" alt="image" src="https://github.com/user-attachments/assets/4d1d3065-bb57-4270-879e-f35eb54942fe" />

### 2. Using Hoppscotch

POST `/todos`

- URL: `http://localhost:4567/todos`
- Method: POST
- Body (JSON):
```json
{
  "title": "Learn Keploy",
  "done": false
}
```

# NOSH
Sustaining client, talent, & crew on location with distinct nosh.

### Description
This app was created to meet specifications for a second Ruby on Rails independent project at Epicodus. It uses bcrypt to allow users to create & maintain personal accounts as well as allows authorized admins CRUD/L functionality on services & associated reviews, dynamically persisting all data via Postgres with ActiveRecord.

### Specifications:

| Behavior | Input | Output |
|----------|-------|--------|
| Public user visits site landing page | User clicks on 'Shop' | All services offered are displayed |
| Public user visits a specific service page | User clicks on a service | Details for service & reviews are displayed |
| Admin authorization | Login credentials | Full CRUD/L on services |
| Admin auth to manage potentially inappropriate reviews | 'Delete review' | Review removed |
| User auth for recurring clients | Login credentials | Full CRUD/L on personal profile |
| User auth for adding reviews | User clicks on 'Add Review' | Review is displayed |


### Requirements
  * Ruby
  * Rails
  * ActiveRecord
  * Postgres

### Setup

  * `git clone https://github.com/jinjin8/nosh`
  * `cd nosh`
  * `bundle install`
  * Start Postgres server
  * `rake db:create`
  * `rake db:migrate`
  * `rake db:seed` to use seed file
  * `rails s`
  * Open browser and navigate to http://localhost:3000/

### Technologies Used
  * HTML
  * CSS, Bootstrap, SASS
  * JavaScript
  * Ruby
  * Rails
  * Faker
  * Postgres
  * PSQL
  * ActiveRecord
  * bcrypt

### Support and contact details
  _jincamou@gmail.com_

### License
  _MIT_ &copy; _2017_ **jin camou**

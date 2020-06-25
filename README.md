# README


3 Models : Customer, Credit Card and Bank
=========== Relationship================
Customer has_many Credit Cards
Credit Card belongs_to Customer

Bank has_many Credit Cards
Credit Card belongs_to Bank

Customer has_many Banks through Credit Card
Bank has_many Customers through Credit Card



<!-- This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ... -->

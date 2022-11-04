# Project - 04/11/2022 - THP - Week 6 - Day 1 / Validant

## The Gossip Project

The Gossip project is an app with multiples possibility to create, show and modify gossips.  
The app is created with Rails, and the data base is in PostgresSQL

### Installation

Start by cloning the repo.
```bash
git clone https://github.com/alchambron/The_Gossip_Project
```

This project need some gems to work. Please use this command to auto install it. 
```bash
bundle install
```

### How it work ? 

Step 1 - Create Database
```bash
rails db:create
```

Step 2 - Migrate the Database
```bash
rails db:migrate
```

Step 3 - Create a base of data with the seed (optionnal)
```bash
rails db:seed
```

Step 4 - Launch the server
```bash
rails server
```

Then, go to your browser to this [link](http://localhost:3000/).

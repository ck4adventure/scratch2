# README

Welcome to my current iteration of a foods database and recipe organization app. This project will be built in incremental stages to practice working across the full stack. Deployment will be on Netlify with a link here as soon as it is available.

# Develop Locally

1. Clone app to local drive
1. Ensure Ruby 2.6.6 / Node 12.18.3
1. Ensure Postgres Server up and running, 10 or 12 both should work
1. Run `bundle install`

# Version Notes

## 0.1

As a foodie, I want to see a list of available foods and see the information for each one.
As a foodie, I want to be able narrow down the choices by category.
As a foodie, I want to be able to add new foods to try later and save old favorites.

DB:

1. Create a Food model and give it a Name, Description and Category(enum)

API Routes:

- /food
- /food/:name
- /food/:category

Frontend:

1. Index view that lists all recipes alphabetically
1. Category view that lists all recipes of a specific category alphabetically
1. Detail view that shows info for a single food
1. Form view to add a new food

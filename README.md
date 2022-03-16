# README

Hello! Thank you for reviewing this code challenge submission!

## Submission

This Rails application can be viewed and interacted with live at https://menu-manager-code-test-rails.herokuapp.com/. The infrastructure is using Heroku's free tier, so there may be some delay if the app is "asleep" and needs to be woken up.

## The app

The app uses the forked starting point, swapping in PostgreSQL as the database to enable easy hosting on Heroku. Otherwise I'm doing as much as I can with what comes in the Rails 7 box! I've added Bootstrap for basic user interface niceties.

## The task

Create a CR(UD) application to manage menus for a restaurant. This restaurant, unfortunately, has a number of rules about the menus and dishes, please see the Rules section below.

Write as clean and maintainable code as possible, and make sure that it's covered by test cases. We recommend focusing on the data flow before making a fancy UI.

### Acceptance criteria (met)

- [x] The user must be able to add menus, like Starters and Mains
- [x] The user must be able to add dishes to these menus
  - [x] Dishes must have a name and a price
- [x] Add a JSON API endpoint that exposes all menus and their dishes (viewable at https://menu-manager-code-test-rails.herokuapp.com/menus.json)
- [ ] The test suite passes
- [x] The same dish name can not appear in more than one menu
- [x] The sum of the prices of all dishes in a single menu can not be `77`.
- [x] Dish names may not start with the letter `E`.
- [x] No need to support updating or deletion of dishes or menus
- [x] The app only supports one restaurant, no need to support more

Example API output:

```json
{
  "Starters": [
    {
      "id": 1,
      "name": "Soup",
      "price": 3
    }
  ],
  "Mains": [
    {
      "id": 2,
      "name": "Salad",
      "price": 5
    }
  ]
}
```

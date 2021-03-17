# Coding challenge 

## Cycles management

- Clone this project 
- Write a small Rais app that manages Cycles. For this exercise a Cycle can be represented as the 
  following JSON:

```javascript
{
  name: "Inkjet Printer",
  components: [
    {
      name: "Plastic structure",
      impacts: {
        climate_change: 3,
        water_use: 200
      }
    },
    {
      name: "Printing engine",
      components: [
        {
          name: "Electronics",
          impacts: {
            climate_change: 25,
            water_use: 5
          }
        },
        {
          name: "Mechanisms",
          impacts: {
            climate_change: 10,
            water_use: 100
          }
        }
      ]
    }
    {
      name: "Electricity consumption",
      impacts: {
        climate_change: 160,
        water_use: 1
      }
    }
  ]
}
```

- A Cycle has many Components. Some Components may have nested Components (Subcomponents).
- The Components and Subcomponents are stored in a JSONB column in the database.
- Components that do not have nested Components have Impacts
- An Impact provides two integer values, one per Category. Categories are `climate_change` and `water_use`
- You can add, edit or delete Cycles.
- You don't need to add, edit or delete Stages and Categories.
- When editing a Cycle you can add, edit or delete Components.
- When editing a Component, you can add, edit or delete other Subcomponents
- When showing a Cycle, the user should be able to see the total impact (sum of all impacts) for each Category.
- You can configure and model the database, controllers and views any way you want, as long as components are stored in a JSONB column as indicated.
- You can use any front-end framework (Simple HTML, React, Vue) on the views. 
- You can use any style framework (Simple CSS, Bootstrap, Tailwind CSS). Bonus points for Tailwind CSS.
- There should be a route like /cycles/:id.json that returns the JSON representation of a Cycle
  like the given example.
- You may ask any question regarding the challenge. Good communication is paramount.
- Send us the link to your project, we will use it during an online interview.
- Bonus points if you provide a link to a live preview of your application.
- There is no need for authentication or other features other than editing cycles and its components.

Happy coding!

Earthster Team

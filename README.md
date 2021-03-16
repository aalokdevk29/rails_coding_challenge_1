# Coding challenge 

## Cycles database

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
        climate_change: {
          production: 30,
          distribution: 15,
          use: 2,
          end_of_life: 3
        },
        energy_use: {
          production: 15,
          distribution: 2,
          use: 2,
          end_of_life: 0 
        }
      }
    },
    {
      name: "Printing engine",
      impacts: {
        climate_change: {
          production: 10,
          distribution: 5,
          use: 8,
          end_of_life: 0 
        },
        energy_use: {
          production: 15,
          distribution: 2,
          use: 25,
          end_of_life: 0 
        }
      }
    },
    {
      name: "Ink comsuption",
      impacts: {
        climate_change: {
          production: 5,
          distribution: 3,
          use: 2,
          end_of_life: 2 
        },
        energy_use: {
          production: 2,
          distribution: 1 ,
          use: 1,
          end_of_life: 1 
        }
      }
    }
  ]
}
```

- A Cycle has many Components. A Component has many Impacts.
- An Impact is an integer value that belongs to a Category and belongs to a Stage.
- Categories are climate_change and energy_use.
- Stages are production, distribution, use and end_of_life.
- You can add, edit or delete Cycles.
- You don't need to add, edit or delete Stages and Categories.
- When editing a Cycle you can add, edit or delete Components.
- You can configure and model the database, controllers and views any way you want.
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

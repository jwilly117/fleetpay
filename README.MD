# 🌐 Fleetpay - Application Development


![Fleetpay demo login page](/img/fleetpaylogin.png)

<hr/>

**Please reference the temporary demo environment from Intrade's team**

Demo Environment - [Demo Using Mongo](http://41.204.217.80:44445/login).

> [!IMPORTANT]
> This will be taken down soon, so it is very important to get our instance up Asap. 

<hr/>

**Please see Design Files Below**

Open editable version here - [Design Files](https://www.figma.com/design/UAeUSDoLmLdELfQcZG9Hxh/FleetPay?node-id=1-5047&node-type=frame&t=poYXmudEH4UIn3Jo-0).


### I will explain this API route once the SQL server is up and open for use

http://localhost:3000/api/lowes


# Overview
This is the beggining of the rebuild of Fleetpay under the Ellis Ventures Umbrella.

## Previous Development
## Features
### User Management:
- Create, update, and delete users
- Manage user roles and permissions
- Implement multi-factor authentication and password recovery

### Company Management:
- Onboard new companies
- Manage company details, including contact information, business hours, and notification settings
- Add and remove company users
- Contractor Management:
- Invite and manage contractors
- Track contractor status and pending invoices
- Define funding settings and payment structures
  
### Transaction Management:
- Record and manage financial transactions between companies and contractors
- Track transaction status and remarks
- Generate transaction previews and reports
  
### API:
- Well-structured RESTful API with clear endpoints and documentation
- Supports authentication and authorization
- Provides access to all core functionalities



# Mobile Application
The original application was built in Flutter, however we will be making the change over to React Native due to its versatility and stability. 

https://reactnative.dev/



## Week of 11.11.2024
> Aaron
- [ ] We will be moving from a Mongoose DB model over to SQL. I would like you to familiarize yourself with the current schemas  (fleet-pay-export\api\src\models\****)  
and work to translate them into the SQL database that will be provided.

- [ ] While I am preparing the database and server, please do some research and discovery on what its going to take to translate these models. 

- [ ] Once that is complete, we will review the node.js backend to declare all the API routes to the database. 

> Jacque
- [ ] Work with Jake to develop users stories and timeline. This will include the GUI functionality in figma, MVP functionality, and checkpoints / goalposts to hit. 
- [ ] Familiarize yourself with the development environment and common practices, since it looks like we are doing this on our own. 
- [ ] Create and organize Board with Jake. 

> Jake
- [ ] First work to provide development database with authentication and access to all parties involved,
- [ ] Then work with Jacque on previously stated tasks. 
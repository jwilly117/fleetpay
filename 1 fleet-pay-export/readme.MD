# Overview
This project is a comprehensive solution for facilitating transactions between companies and contractors. Contractors can request some part of their next paycheque early from companies using the mobile application, and companies can approve or reject these requests. Companies can also manage their contractors, transactions, and other company details using the web application. The project is built using the MERN stack and Flutter.

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


## Get Started
This project is a mono-repository that contains three main components:
1. `api`: Node.js backend API
2. `app`: Next.js web application
3. `flutter`: Flutter mobile application

### Prerequisites
- Node.js
- MongoDB
- Flutter
- Android Studio
- Xcode
- VS Code


### Installation
1. Clone the repository

## To run the `api` backend:

2. Navigate to the `api` directory
   
3. Install dependencies
```bash
npm install
```

4. Create a `.env` file in the root directory and add the following environment variables:
```bash
DATABASE_URL=<mongodb://localhost:27017/your-database>
JWT_SECRET=<your-secret>
SENDGRID_API_KEY=<your-sendgrid-api-key>
GCP_PRIVATE_KEY=<your-gcp-private-key>
```

5. Generate Prisma client
```bash
npx prisma generate
```

6. Start the server
```bash
npm run dev
```

## To run the `app` frontend:

7. Navigate to the `app` directory

8. Install dependencies
```bash
npm install
```
   
9. Create a `.env.local` file in the root directory and add the following environment variables:
```bash
REACT_APP_BACKEND_URL=<your-api-url>
```

10. Start the server
```bash
npm run dev
```

## To run the `flutter` mobile app:

11. Navigate to the `flutter` directory
    
12. Open the project in Visual Studio Code
    
13. Run the app on an emulator or physical device
    
## To import API documentation in Postman:

14. Import openapi.yaml file in Postman to view the API documentation. 
    - Open Postman
    - Click on the Import button
    - Select the openapi.yaml file from the root directory
    - Click on the Import button

14. Enjoy!


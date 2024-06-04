# About Work 1

## Overview

This project, part of the Digital Sandbox initiative, is a comprehensive endeavor involving data processing, web app development, and web page creation. The key components of this project include:

### Data Processing

Utilised the R programming language for meticulous data cleaning and collation. The emphasis was on ensuring data quality and preparing it for downstream analysis.

### Web App Buildup

Backend skills were employed, leveraging Node.js and API integration. This facilitated the establishment of connections, linking to MySQL for database management, and ensuring optimal functionality of the web application.

### Web Page Creation

The project features the creation of a dynamic web page incorporating interactive maps. HTML was the foundation, with coding efficiency optimised through the use of EJS (Embedded JavaScript) for templating.

## Technologies Used

- R
- Node.js
- API Integration
- MySQL
- HTML
- JavaScript
- CSS
- EJS

## Project Structure

The project is organised into distinct modules, each dedicated to a specific aspect of the overall objective. The clear segmentation allows for modularity and ease of maintenance.

### Data Processing Module

- Code files: ```data.R```
- Data: 'londonrentalstatisticsq22022.xls' and csv files in data folder

### Web App Module

- Code files: 'config.js', 'index.js', 'select_from_db.js'
- Database: MySQL Database(work1.sql)

### Web Page Module

- HTML, EJS templates and CSS in shown HTML files

## Usage

## Usage

### Data Processing

1. Go to the Data Processing module.
2. Follow the specified order to execute the R script for comprehensive data cleaning and collation.

### Web App Setup

1. Access the Web App module.
2. Start the web application by running Node.js files.
3. Ensure MySQL is running and correctly configured.

### Detailed Steps:

1. **Data Handling:**
   - The original dataset 'londonrentalstatisticsq22022.xls' underwent pre-processing in R and was segmented into multiple CSV files based on room types, all stored in the data folder.

2. **Database Configuration:**
   - Launch MAMP locally and access phpMyAdmin for Mac.
   - Create an SQL database and import datasets:
     - **Borough:** Rents_borough.csv
     - **Ideas:** Bor_stu.csv (with image inserts)
     - **Postcodes:** Rents_postcode.csv
   - To import the database, download 'hpai_work1.sql'.

3. **App Configuration:**
   - Configure the app in 'index.js' and 'config_local.js':
     - **index.js:** Sets up routes for APIs and lays out page indexing for display.
     - **config_local.js:** Specifies the connection with the SQL database ('hpai_work1.sql').

4. **Styling with .ejs Files:**
   - HTML pages are styled using .ejs files.
   - The main page, 'rental.html', embeds 6 HTML pages, each displaying a room type with a geoJSON map.

### Viewing the App:

1. **Installation and Execution:**
   - Open Terminal, navigate to the project folder, run `npm install`, then execute `node index.js`.
   
2. **Accessing the App:**
   - Open a browser and go to http://localhost:3000.


## Acknowledgments

Include any acknowledgments or credits for libraries, frameworks, or data sources used in the project.

## License

This project is licensed under the [LICENSE.md](LICENSE.md) - see the [LICENSE.md](LICENSE.md) file for details.

The code and associated files in the "Work 1" project are the intellectual property of Hsin Pai. All rights are reserved by the copyright holder. This code is intended for the exclusive viewing of potential employers to assess the coding and analytical skills of Hsin Pai.

Unauthorised use, reproduction, or distribution of this code, in whole or in part, without the written permission of Hsin Pai is strictly prohibited.

© Hsin Pai, 2023

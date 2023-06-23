# Vet clinic database
## Getting Started

This repository includes files with plain SQL that can be used to recreate a database:

- Use [schema.sql](./schema.sql) to create all tables.
- Use [data.sql](./data.sql) to populate tables with sample data.
- Check [queries.sql](./queries.sql) for examples of queries that can be run on a newly created database. **Important note: this file might include queries that make changes in the database (e.g., remove records). Use them responsibly!**

<a name="readme-top"></a>

<!--
HOW TO USE:
This is an example of how you may give instructions on setting up your project locally.

Modify this file to match your project and remove sections that don't apply.

REQUIRED SECTIONS:
- Table of Contents
- About the Project
  - Built With
- Getting Started
- Authors
- Future Features
- Contributing
- Show your support
- Acknowledgements

After you're finished please remove all the comments and instructions!
-->


<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
 - [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [❓ FAQ](#faq)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 [Vet-Clinic-Database] <a name="about-project"></a>

> This project involves the creation of a relational database to store animals' information for a vet clinic. 

**[Vet-Clinic-Database]** Vet Clinic Database

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>
-Relational Database: PostgreSQL
-Programming Language: SQL
-Database Management System: PostgreSQL

<details>
  
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- Database Creation and Table Schema: Create a relational database named "vet_clinic".
- Data Insertion: Insert specific animal data into the "animals" table.
- Data Querying: Write SQL queries to retrieve information from the "animals" table. 

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

- PostgreSQL installed on your machine. You can download it from the [official website](https://www.postgresql.org/download/).


### Setup

Clone this repository to your desired folder:

```sh
  cd your-folder
  git clone https://github.com/Javed-Shahbaz/Vet-Clinic-Database
```

### Install

Navigate into your project directory and set up your database:

```sh
  cd your-project
  psql -U postgres -f schema.sql
```

### Usage

To interact with the database, open PostgreSQL and connect to the database:

Connect to database
```sh
  psql -U postgres -d vet_clinic
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>
<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

👤 **Javed Shahbaz**

- GitHub: [@Javed-Shahbaz](https://github.com/Javed-Shahbaz)
- Twitter: [@javedshahbaz007](https://twitter.com/javedshahbaz007)
- LinkedIn: [@javedshahbaz](https://www.linkedin.com/in/javedshahbaz/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- Building Data Structure
- SQL Queries for Data Manipulation
- Database Performance Audit

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](github.com/Javed-Shahbazissues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

**Please show your support for further improvements  and give a ⭐️ if you like this project!**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

> Give credit to everyone who inspired your codebase.

I would like to thank Postgresql for providing such a good open-source database.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FAQ (optional) -->

## ❓ FAQ <a name="faq"></a>

- **Did you create this project from scratch?**

  - Yes, and for that reason I learned a lot.


<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE.md) licensed.


<p align="right">(<a href="#readme-top">back to top</a>)</p>

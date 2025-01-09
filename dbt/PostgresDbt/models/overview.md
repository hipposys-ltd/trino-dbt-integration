{% docs __overview__ %}

# Source-to-Model Connections with Trino & dbt

## **Problem**
Tracking source-to-model connections is hard, and source changes often go undetected until runtime, causing downtime.

---

## **Solution**
Using **Trino** and **dbt** to automate data ingestion and transformations:
- **Trino** for fast querying.
- **dbt** for transforming data in EDWs.
- Ideal for batch ingestion and empowering analysts.

---

## **Features**
- **Automated CI Tests**
- **Continuous Deployment**
- **Empowered Data Analysts**

---

## **Setup**
1. **Clone repo** and ensure Docker is installed.
2. **Start environment**:  
   ```bash
   docker-compose up
   ```
3. **Run all apps:**:
    ```bash
    source all_the_apps.sh
    ```

---

## **Apps**
- **Tab 1: DBeaver Web Interface (MariaDB, PostgreSQL, Trino)**
- **Tab 2: Jupyter Notebook (dbt ingestion)**
- **Tab 3: dbt Docs (transformation docs)**
- **Tab 4: Trino UI**

## **Tab 1: DBeaver Web Interface**

This is the web version of DBeaver, used to interact with **MariaDB**, **PostgreSQL**, and **Trino**.

### **Login to DBeaver**
1. **Open Settings → Login**  
2. **Username**: `TestTest123`  
   **Password**: `TestTest123`

### **Connecting to Databases**
Once logged in, you’ll see three connection folders on the left. Follow these steps to connect:

1. **MariaDB**  
   - **Username**: `root`  
   - **Password**: `root`

2. **PostgreSQL**  
   - **Username**: `postgres`  
   - **Password**: `postgres`

3. **Trino**  
   - **Username**: `tutorial`  
   - **Password**: *(Leave blank)*

---

### **Using SQL Scripts**
On the right-hand side, you’ll see folders containing **SQL scripts** that we’ll use shortly.  
If the folders aren’t visible, click the **"Tools"** menu at the top and select **"Show Scripts"**.

1. **Return to the first tab (DBeaver Web)** and open the query named **“mariadb_ingestion”**.  
   Inside, you’ll find:
   - A simple **DDL query** for table creation.  
   - A basic **DML query** to insert data into the table.  
   - A straightforward **DQL query** to verify that data has been successfully inserted.

2. **Execute each query** to create the source table on the **MariaDB** side.

---

### **Bringing Data into Postgres using Trino**
Once the source table is ready, we want to bring it into **Postgres** using **Trino**.  
The Trino connections have already been configured and can be found in the repository under the path:  
`trino/trino_connections`.


## **Using Jupyter Notebooks**

Inside the **work** folder, you’ll find:

1. A **dbt** folder containing all the necessary dbt code for both **data transformation** and **ingestion**.
2. **Notebooks** with Python scripts to help run the dbt projects and handle ingestion tasks.

---

### **Steps to Run Data Ingestion**

1. **Open the `trino_ingestion_dbt` notebook** in the `notebooks` directory.  
2. At the top of the notebook, you’ll find a function that:
   - Constructs and executes a **dbt command**.  
   - Runs `dbt deps` beforehand to ensure that any missing dependencies are installed.  
   - Executes the **ingestion command** correctly by attaching the project directory.

3. **Run the notebook** to execute the data ingestion logic.

---

### **Verify the Results in DBeaver**
1. Once ingestion is complete, return to **DBeaver**.  
2. Open the **“postgres” query file** and execute the first **DQL query** to verify the results.  
   - You’ll see that the data from **MariaDB** has been successfully ingested into the **Postgres EDW**.

---

### **Running dbt Transformations**

1. Open and run the **`edw_dbt` notebook** to execute dbt transformations in **Postgres**.
2. To test changes in specific models:
   - Modify a dbt model.  
   - Run the **`run_modified` notebook**, which only runs the **modified models**.
3. You can continue modifying dbt models and rerunning the notebooks as needed to test transformations efficiently.

{% enddocs %}
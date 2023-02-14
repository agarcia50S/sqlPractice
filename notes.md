### How to specify start value for AUTO_INCREMENT in CREATE TABLE()
* The start value for `AUTO_INCREMENT` can be specified while creating a table by first using AUTO_INCREMENT on the column. Then, on a new line that is outside of the table, assign the start value for `AUTO_INCREMENT`.
* Example: <br>
    ```
    CREATE TABLE employee(
        employee_id INT PRIMARY KEY AUTO_INCREMENT,
    )
    AUTO_INCREMENT = 100;
    ```

### How to drop a table only if it exists?
* A table can be drop based on its existance, by using the `DROP TABLE` and `IF EXISTS`
* Boilerplate code:
   ```
   DROP TABLE [IF EXISTS] table name
   ```
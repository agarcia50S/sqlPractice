### How to specify start value for AUTO_INCREMENT in CREATE TABLE()
* The start value for AUTO_INCREMENT can be specified while creating a table by first using AUTO_INCREMENT on the column. Then, on a new line, assign the start value for AUTO_INCREMENT.
* Example: <br>
    ```
    CREATE TABLE employee(
        employee_id INT PRIMARY KEY AUTO_INCREMENT,
        AUTO_INCREMENT = 100
    );
    ```
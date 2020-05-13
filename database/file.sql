CREATE SCHEMA IF NOT EXISTS `bank` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `bank`;

-- -----------------------------------------------------
-- Table `mydb`.`Department`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bank`.`department`
(
    `idDepartment`   INT         NOT NULL,
    `DepartmentCity` VARCHAR(45) NULL,
    `CountOfWorkers` INT         NULL,
    PRIMARY KEY (`idDepartment`)
)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Client`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bank`.`client`
(
    `idClient`                INT         NOT NULL,
    `FirstName`               VARCHAR(45) NULL,
    `LastName`                VARCHAR(45) NULL,
    `Education`               VARCHAR(45) NULL,
    `Passport`                VARCHAR(45) NULL,
    `City`                    VARCHAR(45) NULL,
    `Age`                     VARCHAR(45) NULL,
    `Department_idDepartment` INT         NOT NULL,
    PRIMARY KEY (`idClient`),
    INDEX `fk_Client_Department_idx` (`Department_idDepartment` ASC),
    CONSTRAINT `fk_Client_Department`
        FOREIGN KEY (`Department_idDepartment`)
            REFERENCES `bank`.`department` (`idDepartment`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION
)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Application`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bank`.`application`
(
    `idApplication`   INT         NOT NULL,
    `Sum`             INT         NULL,
    `CreditState`     VARCHAR(45) NULL,
    `Currency`        VARCHAR(45) NULL,
    `Client_idClient` INT         NOT NULL,
    PRIMARY KEY (`idApplication`),
    INDEX `fk_Application_Client1_idx` (`Client_idClient` ASC),
    CONSTRAINT `fk_Application_Client1`
        FOREIGN KEY (`Client_idClient`)
            REFERENCES `bank`.`client` (`idClient`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION
)
    ENGINE = InnoDB;



INSERT INTO `bank`.`department` (`idDepartment`, `DepartmentCity`, `CountOfWorkers`)
VALUES ('1', 'Kyiv', '12');
INSERT INTO `bank`.`department` (`idDepartment`, `DepartmentCity`, `CountOfWorkers`)
VALUES ('2', 'Lviv', '15');
INSERT INTO `bank`.`department` (`idDepartment`, `DepartmentCity`, `CountOfWorkers`)
VALUES ('3', 'Rivne', '8');
INSERT INTO `bank`.`department` (`idDepartment`, `DepartmentCity`, `CountOfWorkers`)
VALUES ('4', 'Kyiv', '16');
INSERT INTO `bank`.`department` (`idDepartment`, `DepartmentCity`, `CountOfWorkers`)
VALUES ('5', 'Lviv', '10');

INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`,
                             `Department_idDepartment`)
VALUES ('1', 'Roman', 'Beregulak', 'high', 'KC249584', 'Lviv', '25', '2');
INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`,
                             `Department_idDepartment`)
VALUES ('2', 'Mariya', 'Pehnyk', 'high', 'KC350156', 'Stryi', '29', '2');
INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`,
                             `Department_idDepartment`)
VALUES ('3', 'Olena', 'Fedychkanych', 'middle', 'KC850145', 'Krasne', '19', '1');
INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`,
                             `Department_idDepartment`)
VALUES ('4', 'Igor', 'Petriv', 'technic', 'KC853952', 'Kyiv', '21', '4');
INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`,
                             `Department_idDepartment`)
VALUES ('5', 'Volodymyr', 'Gryniv', 'high', 'KC849153', 'Skvyra', '35', '4');
INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`,
                             `Department_idDepartment`)
VALUES ('6', 'Oleg', 'Fedyshyn', 'high', 'KC012412', 'Lviv', '42', '5');
INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`,
                             `Department_idDepartment`)
VALUES ('7', 'Taras', 'Sobko', 'middle', 'KC249504', 'Rivne', '20', '3');
INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`,
                             `Department_idDepartment`)
VALUES ('8', 'Viktor', 'Spas', 'technic', 'KC823412', 'Kyiv', '22', '2');
INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`,
                             `Department_idDepartment`)
VALUES ('9', 'Julia', 'Mokina', 'technic', 'KC908295', 'Kyiv', '21', '1');
INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`,
                             `Department_idDepartment`)
VALUES ('10', 'Oksana', 'Indusiva', 'high', 'KC723532', 'Sambir', '32', '1');

INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`)
VALUES ('1', '4000', 'Returned', 'Dollar', '1');
INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`)
VALUES ('2', '5000', 'Not returned', 'Dollar', '4');
INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`)
VALUES ('3', '7500', 'Returned', 'Euro', '6');
INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`)
VALUES ('4', '3200', 'Not returned', 'Gryvnia', '2');
INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`)
VALUES ('5', '3700', 'Returned', 'Gryvnia', '3');
INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`)
VALUES ('6', '4100', 'Returned', 'Dollar', '1');
INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`)
VALUES ('7', '15100', 'Not returned', 'Gryvnia', '9');
INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`)
VALUES ('8', '25600', 'Not returned', 'Dollar', '10');
INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`)
VALUES ('9', '12300', 'Not returned', 'Gryvnia', '8');
INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`)
VALUES ('10', '9700', 'Returned', 'Dollar', '5');
INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`)
VALUES ('11', '9000', 'Not returned', 'Gryvnia', '7');
INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`)
VALUES ('12', '8100', 'Not returned', 'Dollar', '3');
INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`)
VALUES ('13', '4400', 'Not returned', 'Euro', '8');
INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`)
VALUES ('14', '2700', 'Returned', 'Dollar', '10');
insert INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`)
VALUES ('15', '6600', 'Not returned', 'Euro', '3');

# 1. +Вибрати усіх клієнтів, чиє ім'я має менше ніж 6 символів.
select FirstName, char_length(FirstName) as length
from client
where char_length(FirstName) < 6;



# 2. +Вибрати львівські відділення банку.+
select *
from department
where DepartmentCity = 'lviv';


# 3. +Вибрати клієнтів з вищою освітою та посортувати по прізвищу.
select *
from client
where Education = 'high'
order by LastName;


# 4. +Виконати сортування у зворотньому порядку над таблицею Заявка і вивести 5 останніх елементів.
select *
from application
order by idApplication desc
limit 5;


# 5. +Вивести усіх клієнтів, чиє прізвище закінчується на OV чи OVA.
select * from client
where LastName like '%iv'
   or LastName like '%iva';


# 6. +Вивести клієнтів банку, які обслуговуються київськими відділеннями.
select idClient, FirstName, DepartmentCity
from client, department
where idDepartment = Department_idDepartment
  and DepartmentCity = 'kyiv';






# 7. +Вивести імена клієнтів та їхні номера телефону, погрупувавши їх за іменами.
select FirstName, Passport
from client
order by FirstName;


# 8. +Вивести дані про клієнтів, які мають кредит більше ніж на 5000 тисяч гривень.
select *
from client, application
where application.Client_idClient = client.idClient
  and Sum > 5000
  and Currency = 'gryvnia';


# 9. +Порахувати кількість клієнтів усіх відділень та лише львівських відділень.
select count(idClient)
from client, department
where idDepartment = Department_idDepartment
  and DepartmentCity = 'lviv'
union
select count(idClient)
from client;


# 10. Знайти кредити, які мають найбільшу суму для кожного клієнта окремо.
select Client_idClient, FirstName, max(sum) as sum
from client, application
where Client_idClient = idClient
group by idClient;


# 11. Визначити кількість заявок на крдеит для кожного клієнта.
select FirstName, count(idApplication)
from client
         join application on idClient = Client_idClient
group by FirstName;



# 12. Визначити найбільший та найменший кредити.
select max(sum), min(Sum)
from application;




# 13. Порахувати кількість кредитів для клієнтів,які мають вищу освіту.
select count(idApplication), Education, FirstName
from application
         join client on idClient = Client_idClient
where Education = 'high'
group by idClient;


# 14. Вивести дані про клієнта, в якого середня сума кредитів найвища.
select FirstName, avg(Sum) as avg
from client
         join application on idClient = Client_idClient
group by idClient
order by avg desc
limit 1;


# 15. Вивести відділення, яке видало в кредити найбільше грошей
select idDepartment, sum(Sum) as summ
from department
         join client on Department_idDepartment = idDepartment
         JOIN application on idClient = Client_idClient
group by idDepartment
order by summ desc
limit 1;


# 16. Вивести відділення, яке видало найбільший кредит.
select idDepartment, max(sum)
from department
         join client on Department_idDepartment = idDepartment
         JOIN application on idClient = Client_idClient;

# 17. Усім клієнтам, які мають вищу освіту, встановити усі їхні кредити у розмірі 6000 грн.

select FirstName, Education, sum
from client
         join application on idClient = Client_idClient
where Education = 'high';

update client
    join application on idClient = Client_idClient
set Sum      = 6000,
    Currency = 'gryvnia'
where Education = 'high';


# 18. Усіх клієнтів київських відділень пересилити до Києва.
# запит для теста
select FirstName, City, DepartmentCity, idDepartment
from department
         join client on idDepartment = Department_idDepartment
where DepartmentCity = 'kyiv';
/*Повна форма*/
update client
    join department d on client.Department_idDepartment = d.idDepartment
set City = 'kyiv'
where DepartmentCity = 'kyiv';
/*Скорочена форма*/
update client, department
set City = 'Kyiv'
where  Department_idDepartment = idDepartment and DepartmentCity = 'Kyiv';



# 19. Видалити усі кредити, які є повернені.
select sum, CreditState
from application
where CreditState = 'returned';

delete
from application
where CreditState = 'returned';


# 20. Видалити кредити клієнтів, в яких друга літера прізвища є голосною.
select sum, CreditState, LastName
from application
         join client c on application.Client_idClient = c.idClient
where substr(LastName, 2, 1) in ('a', 'e', 'i', 'o', 'u', 'y');


delete application from application, client
where idClient = Client_idClient
and substr(LastName, 2, 1) in ('a', 'e', 'i', 'o', 'u', 'y');






# Знайти львівські відділення, які видали кредитів на загальну суму більше ніж 5000
select idDepartment, sum(sum) as summ, DepartmentCity
from department
         join client on Department_idDepartment = idDepartment
         join application on idClient = Client_idClient
where DepartmentCity = 'lviv'
group by idDepartment
order by summ desc
limit 1;


# Знайти клієнтів, які повністю погасили кредити на суму більше ніж 5000
select idClient, FirstName, CreditState, sum(sum)
from application
         join client c on application.Client_idClient = c.idClient
where CreditState = 'returned'
  and Sum > 5000
group by idClient;







# Знайти максимальний неповернений кредит.
select sum(sum) as summ, CreditState, FirstName, idClient
from application
         join client c on application.Client_idClient = c.idClient
where CreditState = 'Not returned'
group by idClient
order by summ desc
limit 1;


# Знайти клієнта, сума кредиту якого найменша
select sum(sum) as summ, CreditState, FirstName, idClient
from application
         join client c on application.Client_idClient = c.idClient
group by idClient
order by summ
limit 1;


# Знайти кредити, сума яких більша за середнє значення усіх кредитів
select @avg := avg(sum)
from application;

select sum(Sum) as summ
from application
where Sum > @avg
group by Client_idClient;



select sum(sum)
from application
where sum > (select avg(sum) from application)
group by Client_idClient;


# Знайти клієнтів, які є з того самого міста, що і клієнт, який взяв найбільшу кількість кредитів
select @city := city, sum(sum) as summ
from client
         join application on idClient = Client_idClient
group by idClient
order by summ desc
limit 1;
select FirstName, City
from client
where City = @city;



select City,FirstName, idClient from client
where city = (select city from client
    join application on idClient = Client_idClient order by Sum desc limit 1
    );


# #місто чувака який набрав найбільше кредитів
select City, FirstName, idClient, sum(Sum) as summ
from application
         join client c on application.Client_idClient = c.idClient
group by idClient
order by summ desc
limit 1;

drop database bank;

# set sql_safe_updates = 0;
# set sql_safe_updates = 1;


/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  hazel
 * Created: 2020. 8. 31
 */

CREATE TABLE USERS (
    USERID INTEGER,
    LOCATIONID INTEGER,
    PASSWORD VARCHAR (40),
    EMAIL VARCHAR (40),
    FIRSTNAME VARCHAR (40),
    LASTNAME VARCHAR (40) 
);

INSERT INTO USERS (EMAIL, NAME, PASSWORD, ADDRESS, POSTCODE, CONTACTNUM)
VALUES (1, 1, 'sy0827', 'syong195@gmail.com', 'Hazel', 'Kim');
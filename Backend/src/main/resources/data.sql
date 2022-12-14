DROP TABLE IF EXISTS MEDICAL_CLINIC;

CREATE TABLE MEDICAL_CLINIC(
                               MEDICAL_CLINIC_ID NUMBER,
                               MEDICAL_CLINIC_NAME VARCHAR2,
                               ADDRESS VARCHAR2,
                               NUMBER_OF_BEDS NUMBER,
                               PRIMARY KEY (MEDICAL_CLINIC_ID)
);

DROP TABLE IF EXISTS ADDRESS;

CREATE TABLE ADDRESS(
                        ADDRESS_ID NUMBER,
                        HOUSE_NUMBER VARCHAR2(50),
                        ADDRESS_LINE_1 VARCHAR2(50),
                        ADDRESS_LINE_2 VARCHAR2(50),
                        SURBUB VARCHAR2(50),
                        POSTAL_CODE VARCHAR2(50),
                        PRIMARY KEY (ADDRESS_ID)
);

DROP TABLE IF EXISTS PATIENT;

CREATE TABLE PATIENT(
                        PATIENT_ID NUMBER,
                        PATIENT_NAME VARCHAR2(50),
                        MEDICAL_CLINIC_ID NUMBER,
                        HEALTH_PROVIDER_ID NUMBER,
                        PRIMARY KEY (PATIENT_ID)
);

DROP TABLE IF EXISTS HEALTH_PROVIDER;

CREATE TABLE HEALTH_PROVIDER(
                                HEALTH_PROVIDER_ID NUMBER NOT NULL,
                                HEALTH_PROVIDER_NAME VARCHAR2(50),
                                MEDICAL_CLINIC_NAME VARCHAR2,
                                PRIMARY KEY (HEALTH_PROVIDER_ID)
);


Insert into ADDRESS
(ADDRESS_ID,HOUSE_NUMBER,ADDRESS_LINE_1,ADDRESS_LINE_2,SURBUB,POSTAL_CODE)
values (3, '3', '17 SouthWay','Kelvin','Sandton','3865');

Insert into ADDRESS
(ADDRESS_ID,HOUSE_NUMBER,ADDRESS_LINE_1,ADDRESS_LINE_2,SURBUB,POSTAL_CODE)
values (4, '3', '10 North','Ulundi','A','3838');

Insert into PATIENT
(PATIENT_ID, PATIENT_NAME, MEDICAL_CLINIC_ID, HEALTH_PROVIDER_ID)
values (7,'Khethu',2,5);

Insert into PATIENT
(PATIENT_ID, PATIENT_NAME, MEDICAL_CLINIC_ID, HEALTH_PROVIDER_ID)
values (4,'Sam',3,6);

Insert into MEDICAL_CLINIC
(MEDICAL_CLINIC_ID, MEDICAL_CLINIC_NAME, ADDRESS, NUMBER_OF_BEDS)
VALUES ( 1, 'Sun Rise Clinic','17 SouthWay, Sandton',3 );

Insert into MEDICAL_CLINIC
(MEDICAL_CLINIC_ID, MEDICAL_CLINIC_NAME, ADDRESS, NUMBER_OF_BEDS)
VALUES ( 2, 'West Hospital','10 Grove Street, Durban',8 );

Insert into MEDICAL_CLINIC
(MEDICAL_CLINIC_ID, MEDICAL_CLINIC_NAME, ADDRESS, NUMBER_OF_BEDS)
VALUES ( 3, 'East Hospital','16 Drive Street, Durban',8 );

Insert into MEDICAL_CLINIC
(MEDICAL_CLINIC_ID, MEDICAL_CLINIC_NAME, ADDRESS, NUMBER_OF_BEDS)
VALUES ( 4, 'Test Hospital','1 Albert Street, Durban',2 );

Insert into HEALTH_PROVIDER
(HEALTH_PROVIDER_ID, HEALTH_PROVIDER_NAME, MEDICAL_CLINIC_NAME)
VALUES ( 1, 'Dr Mkhize', 'West Hospital' );

Insert into HEALTH_PROVIDER
(HEALTH_PROVIDER_ID, HEALTH_PROVIDER_NAME, MEDICAL_CLINIC_NAME)
VALUES ( 2, 'Dr Ben', 'East Clinic' );

Insert into HEALTH_PROVIDER
(HEALTH_PROVIDER_ID, HEALTH_PROVIDER_NAME, MEDICAL_CLINIC_NAME)
VALUES ( 3, 'Dr Ben', 'East Clinic' );

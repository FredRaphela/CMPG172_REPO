-- =============================
-- STUDENT TABLE
-- =============================
CREATE TABLE [dbo].[StudentDetails] (
    [student_ID]           INT          NOT NULL,
    [first_name]           VARCHAR (50) NOT NULL,
    [last_name]            VARCHAR (50) NOT NULL,
    [national_ID/passport] VARCHAR (50) NOT NULL,
    [DOB]                  DATE         NOT NULL,
    [cell_phone_number]    VARCHAR (50) NOT NULL,
    [email_address]        VARCHAR (50) NOT NULL,
    [password]             VARCHAR (50) NOT NULL,
    [international]        BIT          NOT NULL,
    [student_number]       INT          NOT NULL,
    PRIMARY KEY CLUSTERED ([student_ID] ASC)
);

-- =============================
-- MATRIC RESULTS TABLE
-- =============================
CREATE TABLE [dbo].[MatricResults] (
    [student_ID]        INT NOT NULL,
    [mathematics]       INT NOT NULL,
    [english]           INT NOT NULL,
    [physical_sciences] INT NOT NULL,
    [accounting]        INT NOT NULL,
    PRIMARY KEY CLUSTERED ([student_ID] ASC),
    FOREIGN KEY ([student_ID]) REFERENCES [dbo].[StudentDetails] ([student_ID])
);

-- =============================
-- FACULTY TABLE
-- =============================
CREATE TABLE [dbo].[Faculty] (
    [faculty_ID]   INT          NOT NULL,
    [faculty_name] VARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([faculty_ID] ASC)    
);

-- =============================
-- APPLICATION TABLE
-- =============================
CREATE TABLE [dbo].[Appications] (
    [student_ID]         INT          NOT NULL,
    [faculty_ID]         INT          NOT NULL,
    [year_of_study]      INT          NOT NULL,
    [type_of_study]      VARCHAR (50) NOT NULL,
    [application_status] VARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([student_ID] ASC),
    FOREIGN KEY ([student_ID]) REFERENCES [dbo].[StudentDetails] ([student_ID]),
    FOREIGN KEY ([faculty_ID]) REFERENCES [dbo].[Faculty] ([faculty_ID])
);

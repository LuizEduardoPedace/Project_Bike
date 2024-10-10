CREATE TABLE bike_share_yr_0 (
    dteday DATE,
    season INT,
    yr INT,
    mnth INT,
    hr INT,
    holiday INT,
    weekday INT,
    workingday INT,
    weathersit INT,
    temp FLOAT,
    atemp FLOAT,
    hum FLOAT,
    windspeed FLOAT,
    rider_type VARCHAR(50),
    riders INT
);

CREATE TABLE bike_share_yr_1 (
    dteday DATE,
    season INT,
    yr INT,
    mnth INT,
    hr INT,
    holiday INT,
    weekday INT,
    workingday INT,
    weathersit INT,
    temp FLOAT,
    atemp FLOAT,
    hum FLOAT,
    windspeed FLOAT,
    rider_type VARCHAR(50),
    riders INT
);

CREATE TABLE cost_table (
    yr INT,
    price FLOAT,
    COGS FLOAT
);
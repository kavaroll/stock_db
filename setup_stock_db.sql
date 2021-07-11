DROP TABLE IF EXISTS market, stock, daily_price;

CREATE TABLE market (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    market_name VARCHAR(50) NOT NULL  
);


CREATE TABLE stock (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    stock_name VARCHAR(50) NOT NULL,
    stock_id BIGINT REFERENCES market (id)
);

CREATE TABLE daily_price (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    stock_id INT NOT NULL,
    date DATE NOT NULL,
    open NUMERIC(20,3) NOT NULL,
    close NUMERIC(20,3) NOT NULL,
    high NUMERIC(20,3) NOT NULL,
    low NUMERIC(20,3) NOT NULL,
    FOREIGN KEY (stock_id) REFERENCES stock(id) ON DELETE restrict
);


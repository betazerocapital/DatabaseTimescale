CREATE TABLE pricing_data (
 ticker      TEXT              NOT NULL,
 start_time  TIMESTAMPTZ       NOT NULL,
 end_time    TIMESTAMPTZ       NOT NULL,
 open        DOUBLE PRECISION  NOT NULL,
 high        DOUBLE PRECISION  NOT NULL, 
 low         DOUBLE PRECISION  NOT NULL,
 close       DOUBLE PRECISION  NOT NULL,
 volume      DOUBLE PRECISION  NOT NULL
);
SELECT create_hypertable('pricing_data', 'start_time');
CREATE INDEX ON conditions (start_time DESC, ticker);


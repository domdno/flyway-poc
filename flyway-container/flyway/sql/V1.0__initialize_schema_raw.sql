
CREATE SCHEMA IF NOT EXISTS raw;

-- landing table
CREATE TABLE IF NOT EXISTS raw.landing_data (
	row_id SERIAL PRIMARY KEY,
	request_method VARCHAR(255),
	request_path VARCHAR(255),
	request_data JSONB,
	created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- log table
CREATE TABLE IF NOT EXISTS raw.api_request_response (
    row_id SERIAL PRIMARY KEY,
    request_timestamp TIMESTAMP WITHOUT TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    request_body JSONB,
    response_body JSONB
)
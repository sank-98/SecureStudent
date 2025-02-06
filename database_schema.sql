-- Core Tables for Student Data Protection

-- Student Personal Information (Encrypted)
CREATE TABLE student_personal_info (
    student_id UUID PRIMARY KEY,
    encrypted_ssn BYTEA,
    encrypted_name BYTEA,
    encrypted_dob BYTEA,
    encryption_metadata JSONB,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);

-- Academic Records (Encrypted)
CREATE TABLE academic_records (
    record_id UUID PRIMARY KEY,
    student_id UUID,
    encrypted_courses BYTEA,
    encrypted_grades BYTEA,
    semester VARCHAR(20),
    academic_year INT,
    FOREIGN KEY (student_id) REFERENCES student_personal_info(student_id)
);

-- Access Logs
CREATE TABLE access_logs (
    log_id UUID PRIMARY KEY,
    user_id UUID,
    access_type VARCHAR(50),
    resource_accessed VARCHAR(100),
    timestamp TIMESTAMP,
    ip_address VARCHAR(45),
    success BOOLEAN
);

-- Security Audit Trail
CREATE TABLE security_audit (
    audit_id UUID PRIMARY KEY,
    event_type VARCHAR(50),
    event_description TEXT,
    user_id UUID,
    timestamp TIMESTAMP,
    severity_level INT
);

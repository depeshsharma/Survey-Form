create database career_guidanace;
use career_guidanace;

CREATE TABLE career_survey_responses (
    id INTEGER PRIMARY KEY auto_increment,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    gender VARCHAR(10) NOT NULL,
    age INTEGER NOT NULL,
    grade INTEGER NOT NULL,
    role VARCHAR(20) NOT NULL,
    motivation VARCHAR(50) NOT NULL,
    other_motivation TEXT,
    strength_weakness TEXT NOT NULL,
    favorite_subject VARCHAR(50) NOT NULL,
    challenging_subject VARCHAR(50) NOT NULL,
    challenge_reason TEXT NOT NULL,
    higher_education BOOLEAN NOT NULL,
    competitive_exam VARCHAR(100),
    experience TEXT NOT NULL,
    skills_to_develop TEXT NOT NULL,
    skill_development_plans TEXT NOT NULL,
    future_goals TEXT NOT NULL,
    submission_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO career_survey_responses (
    name, email, gender, age, grade, role, motivation, strength_weakness,
    favorite_subject, challenging_subject, challenge_reason, higher_education,
    competitive_exam, experience, skills_to_develop, skill_development_plans, future_goals
) VALUES (
    'John Doe', 'john@example.com', 'male', 17, 11, 'student', 'explore',
    'Strength: Problem-solving, Weakness: Public speaking',
    'Mathematics', 'Literature', 'Difficulty in analyzing complex texts',
    TRUE, 'SAT', 'Volunteered at local library, learned organizational skills',
    'Leadership, Communication', 'Internship, Online Courses',
    'Pursuing a degree in Computer Science and working as a software developer'
);

SELECT * FROM career_survey_responses;

SELECT motivation, COUNT(*) as count
FROM career_survey_responses
GROUP BY motivation;

SELECT AVG(age) as average_age
FROM career_survey_responses
WHERE higher_education = TRUE;

SELECT challenging_subject, COUNT(*) as count
FROM career_survey_responses
GROUP BY challenging_subject
ORDER BY count DESC
LIMIT 5;
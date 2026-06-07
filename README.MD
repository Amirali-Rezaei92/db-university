# DB University

ER diagram for a university database model.

## Tables
- departments  
- degrees  
- students  
- teachers  
- courses  
- exams  
- course_teacher  
- student_exam  

## Relationships
- departments 1:N degrees  
- degrees 1:N courses  
- degrees 1:N students  
- courses 1:N exams  
- courses N:N teachers  
- exams N:N students (with grade)

![ER Diagram](./db-university-diagram.jpg)

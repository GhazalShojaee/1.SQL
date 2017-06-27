select Name from STUDENTS
where (Marks > 75)
order by 
SUBSTRING(Name, char_length(Name)-2, 3),ID asc
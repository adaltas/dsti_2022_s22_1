SELECT avg(runtimeminutes) AS avg_duration
FROM dsti_2022_s22_1.imdb_title_basics
WHERE primarytitle RLIKE '(^| )[Ww]orld( |$)';

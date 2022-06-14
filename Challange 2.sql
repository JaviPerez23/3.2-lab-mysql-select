SELECT 
    authors.au_id AS Authors_ID,
    authors.au_lname AS Authors_LastName,
    authors.au_fname AS Authors_Firstame,
    publishers.pub_name AS Publisher_Name,
    COUNT(titles.title) AS Title_Count
FROM
    authors
        INNER JOIN
    titleauthor ON titleauthor.au_id = authors.au_id
        INNER JOIN
    titles ON titleauthor.title_id = titles.title_id
        INNER JOIN
    publishers ON titles.pub_id = publishers.pub_id
GROUP BY titles.title_id

    
    
    
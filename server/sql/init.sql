-- languages table for postgresql
CREATE TABLE languages (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    image VARCHAR(255) NOT NULL
);

INSERT INTO languages (id, name, image) VALUES 
(1, 'JavaScript', 'https://www.orientsoftware.com/Themes/OrientSoftwareTheme/Content/Images/blog/2021-12-16/what-can-you-do-with-javascript-thumb.jpg'),
(2, 'PHP', 'https://www.php.net/images/meta-image.png'),
(3, 'Go', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Go_Logo_Blue.svg/800px-Go_Logo_Blue.svg.png');
DROP DATABASE IF EXISTS thuvien;
CREATE DATABASE thuvien CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE thuvien;

CREATE TABLE books (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255),
    publisher VARCHAR(255),
    publish_year INT,
    genre VARCHAR(100),
    image VARCHAR(500)
);

USE thuvien;

CREATE TABLE users (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    role TINYINT NOT NULL DEFAULT 1
);

INSERT INTO users (username, password, email, role)
VALUES
('admin', '123', 'admin@gmail.com', 0),
('docgia', '123456', 'docgia@gmail.com', 1);

SELECT * FROM users;

INSERT INTO books (title, author, publisher, publish_year, genre, image) VALUES
('Harry Potter và hội phượng hoàng', 'J. K. Rowling', 'Anh', 2003, 'Kỳ ảo', '1.jpg'),
('Harry Potter và Hòn đá Phù thủy', 'J. K. Rowling', 'Bloomsbury', 1997, 'Kỳ ảo', '2.jpg'),
('Harry Potter và Phòng chứa Bí mật', 'J. K. Rowling', 'Bloomsbury', 1998, 'Kỳ ảo', '3.jpg'),
('Harry Potter và Tên tù nhân ngục Azkaban', 'J. K. Rowling', 'Bloomsbury', 1999, 'Kỳ ảo', '4.jpg'),
('Harry Potter và Chiếc cốc lửa', 'J. K. Rowling', 'Bloomsbury', 2000, 'Kỳ ảo', '5.jpg'),
('Dịch Vụ Giao Hàng Của Phù Thủy Kiki', 'Eiko Kadono', 'Fukuinkan Shoten', 1985, 'Thiếu nhi', '6.jpg'),
('Doraemon', 'Fujiko F. Fujio', 'Shogakukan', 1970, 'Truyện tranh', '7.jpg'),
('Shin - Cậu bé bút chì', 'Yoshito Usui', 'Futabasha', 1990, 'Truyện tranh', '8.jpg'),
('The Borrowers', 'Mary Norton', 'J. M. Dent', 1952, 'Thiếu nhi', '9.jpg'),
('Dế Mèn phiêu lưu ký', 'Tô Hoài', 'NXB Kim Đồng', 1941, 'Thiếu nhi', '10.jpg'),
('Số đỏ', 'Vũ Trọng Phụng', 'NXB Văn học', 1936, 'Tiểu thuyết', '11.jpg'),
('Tắt đèn', 'Ngô Tất Tố', 'NXB Văn học', 1939, 'Tiểu thuyết', '12.jpg'),
('Lão Hạc', 'Nam Cao', 'NXB Văn học', 1943, 'Truyện ngắn', '13.jpg'),
('Chí Phèo', 'Nam Cao', 'NXB Văn học', 1941, 'Truyện ngắn', '14.jpg'),
('Truyện Kiều', 'Nguyễn Du', 'NXB Văn học', 1820, 'Thơ', '15.jpg'),
('Tôi thấy hoa vàng trên cỏ xanh', 'Nguyễn Nhật Ánh', 'NXB Trẻ', 2010, 'Tiểu thuyết', '16.jpg'),
('Mắt biếc', 'Nguyễn Nhật Ánh', 'NXB Trẻ', 1990, 'Tiểu thuyết', '17.jpg'),
('Cho tôi xin một vé đi tuổi thơ', 'Nguyễn Nhật Ánh', 'NXB Trẻ', 2008, 'Thiếu nhi', '18.jpg'),
('Kính vạn hoa', 'Nguyễn Nhật Ánh', 'NXB Kim Đồng', 1995, 'Thiếu nhi', '19.jpg'),
('Nhà giả kim', 'Paulo Coelho', 'NXB Văn học', 1988, 'Tiểu thuyết', '20.jpg'),
('Hoàng tử bé', 'Antoine de Saint-Exupéry', 'NXB Hội Nhà văn', 1943, 'Thiếu nhi', '21.jpg'),
('Đắc nhân tâm', 'Dale Carnegie', 'NXB Tổng hợp', 1936, 'Kỹ năng sống', '22.jpg'),
('Sapiens - Lược sử loài người', 'Yuval Noah Harari', 'NXB Tri thức', 2011, 'Khoa học', '23.jpg'),
('Lược sử thời gian', 'Stephen Hawking', 'NXB Trẻ', 1988, 'Khoa học', '24.jpg'),
('Chúa tể những chiếc nhẫn', 'J. R. R. Tolkien', 'Allen & Unwin', 1954, 'Kỳ ảo', '25.jpg'),
('Hobbit', 'J. R. R. Tolkien', 'Allen & Unwin', 1937, 'Kỳ ảo', '26.jpg'),
('Alice ở xứ sở thần tiên', 'Lewis Carroll', 'Macmillan', 1865, 'Thiếu nhi', '27.jpg'),
('Những cuộc phiêu lưu của Tom Sawyer', 'Mark Twain', 'American Publishing', 1876, 'Phiêu lưu', '28.jpg'),
('Robinson Crusoe', 'Daniel Defoe', 'W. Taylor', 1719, 'Phiêu lưu', '29.jpg'),
('Đảo giấu vàng', 'Robert Louis Stevenson', 'Cassell', 1883, 'Phiêu lưu', '30.jpg'),
('Hai vạn dặm dưới đáy biển', 'Jules Verne', 'Hetzel', 1870, 'Khoa học viễn tưởng', '31.jpg'),
('Cuộc du hành vào lòng đất', 'Jules Verne', 'Hetzel', 1864, 'Khoa học viễn tưởng', '32.jpg'),
('Sherlock Holmes toàn tập', 'Arthur Conan Doyle', 'George Newnes', 1892, 'Trinh thám', '33.jpg'),
('Án mạng trên chuyến tàu tốc hành Phương Đông', 'Agatha Christie', 'Collins', 1934, 'Trinh thám', '34.jpg'),
('Mười người da đen nhỏ', 'Agatha Christie', 'Collins', 1939, 'Trinh thám', '35.jpg'),
('Mật mã Da Vinci', 'Dan Brown', 'Doubleday', 2003, 'Trinh thám', '36.jpg'),
('Rừng Na Uy', 'Haruki Murakami', 'Kodansha', 1987, 'Tiểu thuyết', '37.jpg'),
('Totto-chan bên cửa sổ', 'Tetsuko Kuroyanagi', 'Kodansha', 1981, 'Thiếu nhi', '38.jpg'),
('Nhật ký Anne Frank', 'Anne Frank', 'Contact', 1947, 'Hồi ký', '39.jpg'),
('Ông già và biển cả', 'Ernest Hemingway', 'Scribner', 1952, 'Tiểu thuyết', '40.jpg'),
('Giết con chim nhại', 'Harper Lee', 'J. B. Lippincott', 1960, 'Tiểu thuyết', '41.jpg'),
('1984', 'George Orwell', 'Secker & Warburg', 1949, 'Khoa học viễn tưởng', '42.jpg'),
('Trại súc vật', 'George Orwell', 'Secker & Warburg', 1945, 'Ngụ ngôn', '43.jpg'),
('Những người khốn khổ', 'Victor Hugo', 'A. Lacroix', 1862, 'Tiểu thuyết', '44.jpg'),
('Nhà thờ Đức Bà Paris', 'Victor Hugo', 'Gosselin', 1831, 'Tiểu thuyết', '45.jpg'),
('Chiến tranh và hòa bình', 'Lev Tolstoy', 'The Russian Messenger', 1869, 'Tiểu thuyết', '46.jpg'),
('Tội ác và trừng phạt', 'Fyodor Dostoevsky', 'The Russian Messenger', 1866, 'Tiểu thuyết', '47.jpg'),
('Cha giàu cha nghèo', 'Robert Kiyosaki', 'Warner Books', 1997, 'Kinh tế', '48.jpg'),
('Tuổi trẻ đáng giá bao nhiêu', 'Rosie Nguyễn', 'NXB Hội Nhà văn', 2016, 'Kỹ năng sống', '49.jpg'),
('Cây cam ngọt của tôi', 'José Mauro de Vasconcelos', 'NXB Hội Nhà văn', 1968, 'Tiểu thuyết', '50.jpg');

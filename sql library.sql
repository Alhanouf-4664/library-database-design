CREATE TABLE `authors` (
  `author_id` integer PRIMARY KEY,
  `name` varchar(255),
  `biography` text
);

CREATE TABLE `books` (
  `book_id` integer PRIMARY KEY,
  `title` varchar(255),
  `publish_year` int,
  `category` varchar(255),
  `author_id` integer
);

CREATE TABLE `members` (
  `member_id` integer PRIMARY KEY,
  `name` varchar(255),
  `contact` varchar(255)
);

CREATE TABLE `borrows` (
  `borrow_id` integer PRIMARY KEY,
  `book_id` integer,
  `member_id` integer,
  `borrow_date` date,
  `return_date` date
);

CREATE INDEX `books_index_0` ON `books` (`title`);

ALTER TABLE `books` ADD FOREIGN KEY (`author_id`) REFERENCES `authors` (`author_id`);

ALTER TABLE `borrows` ADD FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`);

ALTER TABLE `borrows` ADD FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`);

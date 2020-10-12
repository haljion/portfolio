CREATE TABLE skills (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT UNIQUE NOT NULL, image TEXT NOT NULL, rank INTEGER NOT NULL , flag INTEGER NOT NULL);
CREATE TABLE portfolios (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT UNIQUE NOT NULL, top_image TEXT NOT NULL, image TEXT NOT NULL, git TEXT, url TEXT, detail TEXT NOT NULL, used_skills TEXT NOT NULL);

INSERT INTO skills(name, image,  rank, flag) VALUES ('Python', '/img/python.svg', 4, 1);
INSERT INTO skills(name, image,  rank, flag) VALUES ('Java', '/img/java.svg', 4, 1);
INSERT INTO skills(name, image,  rank, flag) VALUES ('HTML5', '/img/html-5.svg', 4, 1);
INSERT INTO skills(name, image,  rank, flag) VALUES ('CSS3', '/img/css-3.svg', 3, 1);
INSERT INTO skills(name, image,  rank, flag) VALUES ('SASS(SCSS)', '/img/sass.svg', 2, 1);
INSERT INTO skills(name, image,  rank, flag) VALUES ('JavaScript', '/img/javascript.svg', 3, 1);
INSERT INTO skills(name, image,  rank, flag) VALUES ('JQuery', '/img/jquery.svg', 3, 2);
INSERT INTO skills(name, image,  rank, flag) VALUES ('Node.js', '/img/nodejs.svg', 2, 2);
INSERT INTO skills(name, image,  rank, flag) VALUES ('Spring', '/img/spring.svg', 3, 2);
INSERT INTO skills(name, image,  rank, flag) VALUES ('Ruby', '/img/ruby.svg', 2, 1);
INSERT INTO skills(name, image,  rank, flag) VALUES ('Ruby on Rails', '/img/rails.svg', 2, 2);
INSERT INTO skills(name, image,  rank, flag) VALUES ('Django', '/img/django.svg', 2, 2);
INSERT INTO skills(name, image,  rank, flag) VALUES ('PHP', '/img/php.svg', 1, 1);
INSERT INTO skills(name, image,  rank, flag) VALUES ('Google Apps Script', '/img/noimage.png', 2, 1);
INSERT INTO skills(name, image,  rank, flag) VALUES ('DB2', '/img/noimage.png', 4, 3);
INSERT INTO skills(name, image,  rank, flag) VALUES ('Oracle', '/img/oracle.svg', 3, 3);
INSERT INTO skills(name, image,  rank, flag) VALUES ('MySQL', '/img/mysql.svg', 2, 3);
INSERT INTO skills(name, image,  rank, flag) VALUES ('Linux', '/img/noimage.png', 3, 4);
INSERT INTO skills(name, image,  rank, flag) VALUES ('Git', '/img/git.svg', 3, 4);
INSERT INTO skills(name, image,  rank, flag) VALUES ('Subversion', '/img/subversion.svg', 3, 4);
INSERT INTO skills(name, image,  rank, flag) VALUES ('Docker', '/img/java.svg', 3, 4);
INSERT INTO skills(name, image,  rank, flag) VALUES ('Slack', '/img/slack-icon.svg', 4, 4);

INSERT INTO portfolios(name, top_image, image, git, url, detail, used_skills) VALUES ('haljion''s portfolio site', '/img/portfolio.png', '/img/portfolio.png', 'https://github.com/haljion/portfolio', null, 'このWebページです。Bootstrapを導入し、レスポンシブ対応になっています。フロント側の技術が向上次第、適宜改良を加える予定です。初めて制作物をウェブ上に公開したので、インフラ側の勉強にもなりました。', 'HTML:CSS:Bootstrap:JQuery:Python:Flask:Mysql:Git:virtualenv:heroku');
INSERT INTO portfolios(name, top_image, image, git, url, detail, used_skills) VALUES ('MoneyBot', '/img/moneybothalf.png', '/img/moneybot.png', null, null, '家計簿を管理するSlackのbotです。Google Spread Sheetと連携して、Slackからカテゴリーや金額等を入力するとシートに記載される仕組みになっています。', 'GAS(Google Apps Script):Slack');
INSERT INTO portfolios(name, top_image, image, git, url, detail, used_skills) VALUES ('LifeBot', '/img/muchohalf.png', '/img/muchohalf.png', 'https://github.com/haljion/LifeBot', null, '天気予報や電車の運行情報を取得するSlackのbotです。 BeautifulsoupやSeleniumを使用したスクレイピングで情報を取得しています。', 'Python:BeautifulSoup:Selenium:Slack:Heroku');
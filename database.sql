-- CREATE DATABASE "full-stack-react";

-- Table structure
CREATE TABLE songs (
	id SERIAL PRIMARY KEY,
	rank INTEGER,
	artist VARCHAR(80) NOT NULL,
	track VARCHAR(120) NOT NULL,
	published DATE
);

INSERT INTO songs (artist, track, published)
VALUES ('Oasis', 'Wonderwall', '1-1-1996');

INSERT INTO songs (rank, artist, track, published) VALUES 
  (100, 'Red Hot Chili Peppers', 'Under the Bridge', '1-1-1992'),
  (50, 'U2', 'Boy', '1-1-1983');

-- Add lots of songs so we can have data to search through
INSERT INTO "songs"("rank", "artist", "track", "published") VALUES
	(352, 'The Black Eyed Peas', 'Don''t Phunk With My Heart', '1/1/2005'),
	(353, 'Nena', '99 Red Balloons', '1/1/1983'),
	(354, 'Elvis Presley', 'Surrender', '1/1/1961'),
	(355, 'Ke$ha', 'Tik-Toc', '1/1/2009'),
	(356, 'Gene Autry', 'Rudolph, the Red-Nosed Reindeer', '1/1/1949'),
	(357, 'Oasis', 'Wonderwall', '1/1/1996'),
	(358, 'The Tornados', 'Telstar', '1/1/1962'),
	(359, 'Queen', 'Crazy Little Thing Called Love', '1/1/1980'),
	(360, 'Katy Perry', 'Firework', '1/1/2010'),
	(361, 'Rihanna', 'Only girl (in the world)', '1/1/2010'),
	(362, 'U2', 'Desire', '1/1/1988'),
	(363, 'Kanye West', 'Stronger', '1/1/2007'),
	(364, 'Elvis Presley', '(You''re The) Devil in Disguise', '1/1/1963'),
	(365, 'The Righteous Brothers', 'You''ve Lost That Lovin'' Feelin''', '1/1/1964'),
	(366, 'Michael Jackson & Janet Jackson', 'Scream', '1/1/1995'),
	(367, 'Elvis Presley', 'Return to Sender', '1/1/1962'),
	(368, 'Norman Greenbaum', 'Spirit in the Sky', '1/1/1970'),
	(369, 'Prince', 'The Most Beautiful Girl in the World', '1/1/1994'),
	(370, 'Nat King Cole', 'Unforgettable', '1/1/1951'),
	(371, 'Boney M', 'Ma Baker', '1/1/1977'),
	(372, 'Wings', 'Mull of Kintyre', '1/1/1977'),
	(373, 'Offspring', 'Pretty Fly (For a White Guy)', '1/1/1999'),
	(374, 'Madonna', 'Like a Virgin', '1/1/1984'),
	(375, 'The Mamas & The Papas', 'Monday Monday', '1/1/1966'),
	(376, 'Buddy Holly', 'That''ll Be the Day', '1/1/1957'),
	(377, 'Gwen Stefani', 'Hollaback Girl', '1/1/2005'),
	(378, 'Destiny''s Child', 'Lose My Breath', '1/1/2004'),
	(379, 'Madonna', 'Take a Bow', '1/1/1995'),
	(380, 'Johnnie Ray', 'Cry', '1/1/1951'),
	(381, 'Del Shannon', 'Runaway', '1/1/1961'),
	(382, 'Janet Jackson', 'Together Again', '1/1/1998'),
	(383, 'Paul Anka', 'Diana', '1/1/1957'),
	(384, 'Jerry Lee Lewis', 'Great Balls of Fire', '1/1/1957'),
	(385, 'Guns n'' Roses', 'Sweet Child O'' Mine', '1/1/1988'),
	(386, 'Flo-Rida & Ke$ha', 'Right Round', '1/1/2009'),
	(387, 'Elvis Presley', '(Now & then There''s) A Fool Such As I', '1/1/1959'),
	(388, '10CC', 'I''m Not in Love', '1/1/1975'),
	(389, 'Fifth Dimension', 'Aquarius/Let The Sunshine In', '1/1/1969'),
	(390, 'Anita Ward', 'Ring My Bell', '1/1/1979'),
	(391, 'Rod Stewart', 'Do Ya Think I''m Sexy?', '1/1/1979'),
	(392, 'Taio Cruz', 'Dynamite', '1/1/2010'),
	(393, 'Jason Mraz', 'I am Yours', '1/1/2008'),
	(394, 'Enigma', 'Sadeness', '1/1/1991'),
	(395, 'Snap', 'Rhythm is a Dancer', '1/1/1992'),
	(396, 'M', 'Pop Muzik', '1/1/1979'),
	(397, 'Alanis Morissette', 'Ironic', '1/1/1996'),
	(398, 'Lionel Richie', 'Hello', '1/1/1984'),
	(399, 'Bon Jovi', 'Livin'' On a Prayer', '1/1/1987'),
	(400, 'Enrique Iglesias', 'Hero', '1/1/2001'),
	(401, 'The Sweet', 'The Ballroom Blitz', '1/1/1973'),
	(402, 'Timbaland & Keri Hilson', 'The Way I Are', '1/1/2007'),
	(403, 'Phil Collins', 'In the Air Tonight', '1/1/1981'),
	(404, 'Frank Sinatra', 'Five Minutes More', '1/1/1946'),
	(405, 'Vanessa Carlton', 'A Thousand Miles', '1/1/2002'),
	(406, 'Al Jolson', 'Swanee', '1/1/1920'),
	(407, 'Al Martino', 'Here in My Heart', '1/1/1952'),
	(408, 'Kid Rock', 'All summer long', '1/1/2008'),
	(409, 'Van Halen', 'Jump', '1/1/1984'),
	(410, 'Peter Gabriel', 'Sledgehammer', '1/1/1986'),
	(411, 'Adele', 'Someone Like You', '1/1/2011'),
	(412, 'Gordon Jenkins & The Weavers', 'Goodnight, Irene', '1/1/1950'),
	(413, 'Roxette', 'The Look', '1/1/1989'),
	(414, 'F R David', 'Words', '1/1/1982'),
	(415, 'Sixpence None The Richer', 'Kiss Me', '1/1/1999'),
	(416, 'Irene Cara', 'Fame', '1/1/1980'),
	(417, 'Tommy James & the Shondells', 'Crimson & Clover', '1/1/1969'),
	(418, 'Fine Young Cannibals', 'She Drives Me Crazy', '1/1/1989'),
	(419, 'Led Zeppelin', 'Whole Lotta Love', '1/1/1970'),
	(420, 'Michael Jackson', 'Don''t Stop ''Til You Get Enough', '1/1/1979'),
	(421, 'Hot Butter', 'Popcorn', '1/1/1972'),
	(422, 'The Bangles', 'Eternal Flame', '1/1/1989'),
	(423, 'Santana', 'Maria Maria', '1/1/2000'),
	(424, 'Captain & Tennille', 'Love Will Keep Us Together', '1/1/1975'),
	(425, 'Billy Ocean', 'Get Outta My Dreams Get Into My Car', '1/1/1988'),
	(426, 'Perez Prado', 'Cherry Pink & Apple Blossom White', '1/1/1955'),
	(427, 'Ini Kamoze', 'Here Comes the Hotstepper', '1/1/1995'),
	(428, 'Marvin Gaye', 'I Heard it Through the Grapevine', '1/1/1968'),
	(429, 'The Box Tops', 'The Letter', '1/1/1967'),
	(430, 'Pee Wee Hunt', '12th Street Rag', '1/1/1948'),
	(431, 'Kool & The Gang', 'Celebration', '1/1/1981'),
	(432, 'The Platters', 'Only You (And You Alone)', '1/1/1955'),
	(433, 'Exile', 'Kiss You All Over', '1/1/1978'),
	(434, 'The Kinks', 'Lola', '1/1/1970'),
	(435, 'Bachman-Turner Overdrive', 'You Ain''t Seen Nothin'' Yet', '1/1/1974'),
	(436, 'All Saints', 'Never Ever', '1/1/1998'),
	(437, 'The Four Seasons', 'December 1963 (Oh What a Night)', '1/1/1976'),
	(438, 'Tears For Fears', 'Everybody Wants to Rule the World', '1/1/1985'),
	(439, 'Al Dexter & his Troopers', 'Pistol Packin'' Mama', '1/1/1943'),
	(440, 'Snap', 'The Power', '1/1/1990'),
	(441, 'Richard Marx', 'Right Here Waiting', '1/1/1989'),
	(442, 'Pat Boone', 'Love Letters in the Sand', '1/1/1957'),
	(443, 'The Rolling Stones', 'Brown Sugar', '1/1/1971'),
	(444, 'Akon', 'Smack That', '1/1/2006'),
	(445, 'Nat King Cole', 'Nature Boy', '1/1/1948'),
	(446, 'Coldplay', 'Viva La Vida', '1/1/2008'),
	(447, 'Paul & Paula', 'Hey Paula', '1/1/1963'),
	(448, 'Kingsmen', 'Louie Louie', '1/1/1963'),
	(449, 'The Ronettes', 'Be My Baby', '1/1/1963'),
	(450, 'The Manhattans', 'Kiss & Say Goodbye', '1/1/1976'),
	(451, 'Three Dog Night', 'Joy to the World', '1/1/1971'),
	(452, 'Olivia Newton-John & Electric Light Orchestra', 'Xanadu', '1/1/1980'),
	(453, 'Elvis Presley', 'Can''t Help Falling in Love', '1/1/1962'),
	(454, 'Red Hot Chili Peppers', 'Under the Bridge', '1/1/1992'),
	(455, 'Elvis Presley', 'In the Ghetto', '1/1/1969'),
	(456, 'Perry Como', 'Don''t Let the Stars Get in Your Eyes', '1/1/1953'),
	(457, 'The Doors', 'Light My Fire', '1/1/1967'),
	(458, 'The Beatles', 'The Ballad of John & Yoko', '1/1/1969'),
	(459, 'B J Thomas', 'Raindrops Keep Falling On My Head', '1/1/1970'),
	(460, 'The Eurythmics', 'Sweet Dreams (Are Made of This)', '1/1/1983'),
	(461, 'The Beatles', 'Can''t Buy Me Love', '1/1/1964'),
	(462, 'Dean Martin', 'Memories Are Made of This', '1/1/1956'),
	(463, 'The Drifters', 'Save the Last Dance For Me', '1/1/1960'),
	(464, 'Neil Young', 'Heart of Gold', '1/1/1972'),
	(465, 'Jennifer Lopez', 'Love Don''t Cost a Thing', '1/1/2001'),
	(466, 'The Scissor Sisters', 'I Don''t Feel Like Dancin''', '1/1/2006'),
	(467, 'Jive Bunny & The Mastermixers', 'Swing the Mood', '1/1/1989'),
	(468, 'Kitty Kallen', 'Little Things Mean a Lot', '1/1/1954'),
	(469, 'Madonna', 'Who''s That Girl?', '1/1/1987'),
	(470, 'Tom Jones', 'She''s a Lady', '1/1/1971'),
	(471, 'Extreme', 'More Than Words', '1/1/1991'),
	(472, 'Nancy Sinatra & Frank Sinatra', 'Somethin'' Stupid', '1/1/1967'),
	(473, 'Right Said Fred', 'I''m Too Sexy', '1/1/1991'),
	(474, 'Vera Lynn', 'Auf Wiederseh''n Sweetheart', '1/1/1952'),
	(475, 'Creedence Clearwater Revival', 'Proud Mary', '1/1/1969'),
	(476, 'U2', 'Hold Me, Thrill Me, Kiss Me, Kill Me', '1/1/1995'),
	(477, 'Glenn Miller', 'Moonlight Serenade', '1/1/1939'),
	(478, 'Crash Test Dummies', 'Mmm Mmm Mmm Mmm', '1/1/1994'),
	(479, 'Creedence Clearwater Revival', 'Up Around the Bend', '1/1/1970'),
	(480, 'Rihanna', 'Disturbia', '1/1/2008'),
	(481, 'Elton John', 'Something About the Way You look Tonight', '1/1/1997'),
	(482, 'Bobby Goldsboro', 'Honey', '1/1/1968'),
	(483, 'Eminem', 'Just Lose It', '1/1/2004'),
	(484, 'Musical Youth', 'Pass the Dutchie', '1/1/1982'),
	(485, 'Chicago', 'Hard to Say I''m Sorry', '1/1/1982'),
	(486, 'Joe Cocker & Jennifer Warnes', 'Up Where We Belong', '1/1/1982'),
	(487, 'Rod Stewart', 'Tonight''s the Night (Gonna Be Alright)', '1/1/1976'),
	(488, 'Isaac Hayes', 'Theme From ''Shaft''', '1/1/1971'),
	(489, 'John Fred & The Playboy Band', 'Judy in Disguise (With Glasses)', '1/1/1968'),
	(490, 'Pitbull, Ne-Yo, Afrojack & Nayer', 'Give Me Everything', '1/1/2011'),
	(491, 'Billy Joel', 'The River of Dreams', '1/1/1993'),
	(492, 'Joan Osborne', 'One of Us', '1/1/1996'),
	(493, 'Lisa Stansfield', 'All Around the World', '1/1/1990'),
	(494, 'Alannah Myles', 'Black Velvet', '1/1/1990'),
	(495, 'Beyonce', 'If I Were a Boy', '1/1/2008'),
	(496, 'Trini Lopez', 'If I Had a Hammer', '1/1/1963'),
	(497, 'Roberta Flack', 'The First Time Ever I Saw Your Face', '1/1/1972'),
	(498, 'Crazy Frog', 'Axel F', '1/1/2005'),
	(499, 'The Beatles', 'Lady Madonna', '1/1/1968'),
	(500, 'Dire Straits', 'Money For Nothing', '1/1/1985'),
	(501, 'Francis Craig', 'Near You', '1/1/1947'),
	(502, 'Elvis Presley', 'Good Luck Charm', '1/1/1962');



/* Tell me all the songs */
SELECT * FROM songs;

-- Only give me 10 songs
SELECT * FROM songs LIMIT 10;

-- Give me the top 10 songs - ones with lowest rank
SELECT * FROM songs ORDER BY rank ASC LIMIT 10;


/* Tell me all the Elvis songs */
SELECT * FROM songs WHERE artist = 'Elvis Presley';

-- Choose which columns to get back for our results
SELECT id, track FROM songs WHERE artist = 'Elvis Presley';

-- Not sure if we have 'Elvis' or 'Elvis Presley' for artist, just give me all Elvis ones
SELECT * FROM songs WHERE artist LIKE 'Elvis%';

-- Not sure if we have 'Elvis' capitalized, ILIKE is insensitive to case
SELECT * FROM songs WHERE artist ILIKE 'elvis%';

-- All songs with 'love' in the title
SELECT * FROM songs WHERE track ILIKE '%love%';

-- Want the songs where artist is 'elvis' or 'presley' or both
SELECT * FROM songs WHERE artist ILIKE 'elvis%' OR artist ILIKE '%presley';

-- Want the songs published before 1990
SELECT * FROM songs WHERE published < '1-1-1990';


-- Find songs with no rank - NULL is special don't use = use IS NULL or IS NOT NULL
SELECT * FROM songs WHERE rank IS NULL;

----------------------------------------------------------------------
-- ALWAYS have a WHERE in your UPDATE & DELETE
-- (unless you are 100% sure you mean to change/remove everything!!!)
----------------------------------------------------------------------

UPDATE songs SET rank = 1, track = 'AWESOME SONG' WHERE id=1;
SELECT * FROM songs WHERE id=1;

-- DO a SELECT first to make sure you have the data you mean to change

DELETE FROM songs WHERE id=1;

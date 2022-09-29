CREATE TABLE channel (
    id UUID DEFAULT uuid_generate_v4(),
    youtube_channel_id VARCHAR,
    name VARCHAR,
    subscriber_count INT,
    date_collected timestamp);

INSERT INTO channel (youtube_channel_id, name, subscriber_count, date_collected)
VALUES(01, 'channel_1', 5000, '1999-01-08 04:05:06');
INSERT INTO channel (youtube_channel_id, name, subscriber_count, date_collected)
VALUES(02, 'channel_2', 3000, '2019-05-06 21:05:53');

CREATE TABLE video (
    id UUID DEFAULT uuid_generate_v4(),
    youtube_video_id VARCHAR,
    channel_id UUID,
    title VARCHAR,
    description VARCHAR,
    views INT,
    comment_count INT,
    like_count INT,
    date_published TIMESTAMP WITHOUT TIME ZONE,
    date_collected TIMESTAMP WITHOUT TIME ZONE
);

INSERT INTO video(youtube_video_id, channel_id, title, description, views, comment_count, like_count, date_published, date_collected)
VALUES(01, 'dc4a3255-9e93-46f6-b7f0-8daca2635baf', 'Bohemian Rhapsody (Remastered 2011)', 'Queen', 49751619, 56526, 527000, '2011-01-01 04:05:06', CURRENT_TIMESTAMP);

INSERT INTO video(youtube_video_id, channel_id, title, description, views, comment_count, like_count, date_published, date_collected)
VALUES(02, 'dc4a3255-9e93-46f6-b7f0-8daca2635baf', 'Toxicity', 'System Of A Down', 89743696, 156000, 867000, '2001-09-04 00:00:00', CURRENT_TIMESTAMP);

INSERT INTO video(youtube_video_id, channel_id, title, description, views, comment_count, like_count, date_published, date_collected)
VALUES(03, 'dc4a3255-9e93-46f6-b7f0-8daca2635baf', 'Still Loving You', 'Scorpions', 10616404, 16000, 1377000, '2011-11-04 00:00:00', CURRENT_TIMESTAMP);

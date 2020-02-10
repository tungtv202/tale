INSERT INTO tungexplorer.t_contents (cid, title, slug, thumb_img, created, modified, column_7, content, author_id, type, status, column_12, fmt_type, tags, categories, hits, comments_num, allow_comment, allow_ping, allow_feed) VALUES (2, 'lệnh', 'linktest2', '', '2019-12-06 01:51:04', '2019-12-06 22:44:19', null, '![alt](https://s3-ap-southeast-1.amazonaws.com/kipalog.com/7svsburqjy_gsviec-docker.png)



test
```java
public class MyClass {
  public static void main(String[] args) {
    System.out.println("Hello World");
  }
}
```

```bash
git pull origin master

$ chmod a+x First.sh
$ ./First.sh
```

[[[https://raw.githubusercontent.com/tungtv202/MyNote/master/Docker/QuickCommand.md]]]

Tooi yeu viet nam', 2, 'post', 'publish', null, 'markdown', 'tagtest2', 'Category1', 62, 0, 1, 1, 1);




INSERT INTO tungexplorer.t_metas (mid, name, slug, type, description, sort, parent) VALUES (1, 'test', 'test', 'tag', null, 0, 0);
INSERT INTO tungexplorer.t_metas (mid, name, slug, type, description, sort, parent) VALUES (4, 'Category1', null, 'category', null, 0, 0);
INSERT INTO tungexplorer.t_metas (mid, name, slug, type, description, sort, parent) VALUES (3, 'Chu De 1', null, 'category', null, 0, 0);
INSERT INTO tungexplorer.t_metas (mid, name, slug, type, description, sort, parent) VALUES (5, 'tagtest2', 'tagtest2', 'tag', null, 0, 0);

INSERT INTO tungexplorer.t_options (name, value, description) VALUES ('site_title', 'Tungexplorer', 'site_title');
INSERT INTO tungexplorer.t_options (name, value, description) VALUES ('social_weibo', '', null);
INSERT INTO tungexplorer.t_options (name, value, description) VALUES ('social_zhihu', '', null);
INSERT INTO tungexplorer.t_options (name, value, description) VALUES ('social_github', '', null);
INSERT INTO tungexplorer.t_options (name, value, description) VALUES ('social_twitter', '', null);
INSERT INTO tungexplorer.t_options (name, value, description) VALUES ('allow_install', 'false', 'allow_install');
INSERT INTO tungexplorer.t_options (name, value, description) VALUES ('allow_comment_audit', 'true', 'allow_comment_audit');
INSERT INTO tungexplorer.t_options (name, value, description) VALUES ('site_theme', 'default', null);
INSERT INTO tungexplorer.t_options (name, value, description) VALUES ('site_keywords', 'site_keywords', null);
INSERT INTO tungexplorer.t_options (name, value, description) VALUES ('site_description', 'site_description', null);
INSERT INTO tungexplorer.t_options (name, value, description) VALUES ('site_url', 'http://localhost:9000', null);
INSERT INTO tungexplorer.t_options (name, value, description) VALUES ('safe_remember_me', '{"uid":2,"expires":1577809614,"token":"c7af63407dd056a604609c42fdf78d14","recentIp":["Unknown"]}', '??? Token');

INSERT INTO tungexplorer.t_relationships (cid, mid) VALUES (2, 4);
INSERT INTO tungexplorer.t_relationships (cid, mid) VALUES (2, 5);

INSERT INTO tungexplorer.t_users (uid, username, password, email, home_url, screen_name, created, activated, logged, group_name) VALUES (1, 'admin2', '305fedd64fca838ff2e5bd29fac9d2e8', 'tungtv202@gmail.com', null, 'admin', 1575568225, null, 1575568807, null);
INSERT INTO tungexplorer.t_users (uid, username, password, email, home_url, screen_name, created, activated, logged, group_name) VALUES (2, 'admin', '305fedd64fca838ff2e5bd29fac9d2e8', 'admin@g.com', null, 'admin', 1575571836, null, 1577204814, null);
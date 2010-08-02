-- SVN FILE: $Id$
--
-- BaserCMS Twitterプラグイン インストール SQL（PostgreSQL）
--
-- BaserCMS :  Based Website Development Project <http://basercms.net>
-- Copyright 2008 - 2010, Catchup, Inc.
--								9-5 nagao 3-chome, fukuoka-shi
--								fukuoka, Japan 814-0123
--
-- @copyright		Copyright 2008 - 2010, Catchup, Inc.
-- @link			http://basercms.net BaserCMS Project
-- @version			$Revision$
-- @modifiedby		$LastChangedBy$
-- @lastmodified	$Date$
-- @license			http://basercms.net/license/index.html

--
-- テーブルの構造 "bc__twitter_configs"
--

CREATE SEQUENCE bc__twitter_configs_id_seq;
CREATE TABLE "public"."bc__twitter_configs" (
  "id" int8 NOT NULL nextval('bc__twitter_configs_id_seq'),
  "name" varchar(255) default NULL,
  "value" text default NULL,
  "created" timestamp default NULL,
  "modified" timestamp default NULL,
  PRIMARY KEY  ("id")
) WITHOUT OIDS;
ALTER table "public"."bc__twitter_configs" SET WITHOUT CLUSTER;

--
-- テーブルのデータをダンプしています "bc__twitter_configs"
--

INSERT INTO "bc_site_configs" ("name", "value", "created", "modified") VALUES
('consumer_key',NULL, NOW(), NOW()),
('consumer_secret',NULL, NOW(), NOW()),
('access_token_key',NULL, NOW(), NOW()),
('access_token_secret',NULL, NOW(), NOW()),
('username', NULL, NOW(), NOW()),
('view_num','3', NOW(), NOW()),
('tweet_settings','a:1:{i:0;a:7:{s:2:""id"";i:1;s:4:""name"";s:15:""ブログ記事"";s:6:""plugin"";s:4:""blog"";s:10:""controller"";s:10:""blog_posts"";s:6:""action"";s:10:""admin_edit"";s:15:""status_template"";s:4:""blog"";s:6:""status"";s:1:""1"";}}', NOW(), NOW()),
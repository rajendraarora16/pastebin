# pastebin-tool-opensource-project
It highlights your source codes and generates URL to share with anyone.

If you wish to see demo you could visit here:

[DEMO](http://paste-pastetool.rhcloud.com/)

To create database table, you need to follow this query:
<pre>
<code>
create database if not exists pastebin;
use pastebin;

create table if not exists paste_tool(
id INT NOT NULL auto_increment,
gen_key INT(100) NOT NULL,
title VARCHAR(1000) NOT NULL,
source_codes VARCHAR(1000000) NOT NULL,
PRIMARY KEY(id)
);

select * from paste_tool;
</code>
</pre>

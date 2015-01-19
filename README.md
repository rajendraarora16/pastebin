# pastebin-tool-opensource-project
I've made a pastebin tool. It just took one day to make this. I find some peoples still looks for syntax highlighter and want to make their own pastebin. So i made my own. The purpose of this tool to make this was actaully Pastebin was blocked in India, so i just made my own.

If you wish to see demo you could visit here:

[DEMO](http://paste-pastetool.rhcloud.com/)

Also reviews me about this project with your opinions.

To create database table, you need to follow this code:
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

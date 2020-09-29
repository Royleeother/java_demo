<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Index</title>
    <link rel="stylesheet" href="/index.css">
</head>
<body>
<div class="navbar">
    <div class="navbar-inner">
        <div class="container">
            <ul class="nav pull-right">
                <li><a href="/login">LOGIN</a></li>
                <li><a href="/">HOME</a></li>
                <li><a href="/register">register</a></li>
                <li><a href="/topic" target="">TOPIC</a></li>
            </ul>
        </div>
    </div>
</div>
<div>
    <#list latest_topics as t>
        <a href="/topic/detail/${t.id}">${t.id} : ${t.title}</a>
        <a href="/topic/edit?id=${t.id}">编辑</a>
        <a href="/topic/delete?id=${t.id}">删除</a>
        <br>
    </#list>
</div>

<div>
    <#list involve_topics as c>
        ${c.userId}: ${c.content}
    </#list>
</div>

</body>

<style>
    .info_box {
        background-color: white;
        width: 310px;
        position: absolute;
        right: 20px;
        margin-top: 11px;
        border-radius: 4px;
    }

    .personal {
        background: #f5f5f5;
        padding: 10px;
    }

    .info_wrap {
        padding: 10px;
    }

    .name {
        display: inline-block;
        font-size: xx-large;
        font-weight: bold;
        margin-left: 15px;
    }

    .intro {
        padding: 10px;
        font-style: italic;
        text-align: center;
    }
</style>

</html>
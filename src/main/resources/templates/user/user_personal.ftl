<!DOCTYPE HTML>
<html>
<head>
    <title>Topic</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" href="/index.css">
    <link rel="stylesheet" href="/font.css">
    <link rel="stylesheet" href="/css/general.css">
</head>
<body>
<div class="navbar">
    <div class="navbar-inner">
        <div class="container">
            <ul class="nav pull-right">
                <li><a href="/">主页</a></li>
                <li><a href="/login">登录</a></li>
                <li><a href="/register">注册</a></li>

            </ul>
        </div>
    </div>
</div>


<div class="nav_box">
    <div class="nav_top">
        <div class="center-middle">
            最近创建的话题
        </div>
    </div>
    <div class="topic_wrap">
        <#list latest_topics as t>
            <div class="topic_box">
                <a href="/topic/detail/${t[0].id}" class="box_title">${t[0].title}</a>
                <div class="topic_other_info">
                    <span id="topic-pos${t[0].id}">${t[1].username}</span>
                    <#if t[0].userId == user.id>
                        <a href="/topic/edit?id=${t[0].id}">编辑</a>
                        <a href="/topic/delete?id=${t[0].id}">删除</a>
                    </#if>
                </div>
            </div>
        </#list>

    </div>
</div>

<div class="info_box">
    <div class="personal">个人信息</div>
    <a href="/user/${user.getId()}" class="info_wrap">
        <img src='/doge1.jpg'>
        <div class="name">${user.getUsername()}</div>
    </a>
    <div class="intro">
        "这个人很懒"
    </div>
    <a href="/topic/into_add" class="add_topic_bar">发帖</a>
</div>

<div class="nav_box">
    <div class="nav_top">
        <div class="center-middle">
            最近参与的话题
        </div>
    </div>
    <div class="topic_wrap">
        <#list commentedTopics as tc>
            <div class="topic_box">
                <a href="/topic/detail/${tc[0].id}" class="box_title">${tc[0].title}</a>
                <div class="comment_content ">
                    ${tc[1].content}
                </div>
                <div class="topic_other_info">
                    <span id="topic-pos${tc[0].id}">${tc[0].id}</span>
                </div>
            </div>
        </#list>

    </div>
</div>

</body>
</html>
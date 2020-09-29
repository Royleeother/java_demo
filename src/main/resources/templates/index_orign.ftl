<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Index</title>
    <link rel="stylesheet" href="/index.css">
    <link rel="stylesheet" href="/font.css">
    <link rel="stylesheet" href="/css/general.css">
</head>
<body>

<div class="nav_box">
    <div class="nav_top border-b text-left">
        <div class="topic_title">
            我的信息
        </div>
    </div>
    <a href="/topic" class="nav_wrap">
        <div class="center-middle box_title">${ user.username }</div>
    </a>
    <#if isVolunteer>
        <a href="/topic" class="nav_wrap">
            <div class="center-middle box_title">电话: ${user.phone} <br></div>
        </a>
        <a href="/topic" class="nav_wrap">
            <div class="center-middle box_title">学号: ${user.schoolId} <br></div>
        </a>
    <#elseif isNewbie>
        电话: ${user.phone} <br>
        学号: ${user.schoolId} <br>
        学院: ${user.department} <br>
        宿舍: ${user.dorm} <br>
    </#if>

</div>

<div class="nav_box">
    <div class="nav_top border-b text-left">
        <div class="topic_title">
            <#if isVolunteer>
                对接新生信息
            <#elseif isNewbie>
                迎接你的志愿者资料
            </#if>
        </div>
    </div>
    <#if isVolunteer>
        <#list newbies as nb>
            电话: ${nb.phone} <br>
            学号: ${nb.schoolId} <br>
            学院: ${nb.department} <br>
            宿舍: ${nb.dorm} <br>
            -----------<br>
        </#list>
    <#elseif isNewbie>
        <a href="/topic" class="nav_wrap">
            <div class="center-middle box_title">电话: ${volunteer.phone} <br></div>
        </a>
        <a href="/topic" class="nav_wrap">
            <div class="center-middle box_title">学号: ${volunteer.schoolId} <br></div>
        </a>
    </#if>


</div>


</body>

<style>


</style>

</html>


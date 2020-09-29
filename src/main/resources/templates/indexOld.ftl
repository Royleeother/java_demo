<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>迎新</title>
    <link rel="stylesheet" type="text/css" href="css/common.css">
    <link rel="stylesheet" type="text/css" href="css/search.css">
    <link rel="stylesheet" type="text/css" href="css/result.css">

    <!--导入jquery-->
    <script src="js/jquery-1.11.0.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#btn_sub").click(function(){
                var file = $("input[type='file']").get(0).files[0];
                if(!file){
                    alert("请选择好需上传的头像图片！");
                }
                else{
                    $("#form_upload").submit();
                }
            });
        });
    </script>
</head>
<body>
<div class="rg_layout">
    <div class="rg_form clearfix">
        <div class="back_show">
            <a href="/login" class="btn-default btn_back">
                退出
            </a>
        </div>
        <div class="rg_form_left">
            <p>我的信息</p>
        </div>
        <div class="rg_form_center">
            <div class="errorMsg"><!--貌似，您在此次活动中没有对接人！--></div>
            <div class="user_mes"><!--欢迎您，user.name ，以下是您对接的志愿者--></div>
            <!--打印表格-->
            <table class="tb" style="margin-top: 25px;">
                <!--学长-->
                <!--
                姓名：梁天宜
                学号：31200078897
                电话：13866886688
                学院（部）：智能制造学部
                微信号：13866886688
                -->
                <tr>
                    <td class="td_left">
                        <label for="name">姓名</label>
                    </td>
                    <td class="td_right">
                        <input type="text" value=${ user.username }  class="" id="name" name="name" disabled >
                    </td>
                </tr>
                <tr>
                    <td class="td_left">
                        <label for="stuNum">学号</label>
                    </td>
                    <td class="td_right">
                        <input type="text" value=${ user.schoolId } id="stuNum" name="stuNum" disabled >
                    </td>
                </tr>
                <tr>
                    <td class="td_left">
                        <label for="college">学院(部)</label>
                    </td>
                    <td class="td_right">
                        <input type="text" value=${ user.getDepartment() } class="" id="college" name="college" disabled="">
                    </td>
                </tr>
                <tr>
                    <td class="td_left">
                        <label for="telephone">电话</label>
                    </td>
                    <td class="td_right">
                        <input type="text" value=${ user.phone } class="" id="telephone" name="telephone" disabled >
                    </td>
                </tr>
                <#if isNewbie>
                    <tr>
                        <td class="td_left">
                            <label for="dormitory">宿舍</label>
                        </td>
                        <td class="td_right">
                            <input type="text" value=${ user.dorm } class="" id="dormitory" name="dormitory" disabled>
                        </td>
                    </tr>
                </#if>
<#--                <tr>-->
<#--                    <td colspan="2">-->
<#--                        <form method="POST" action="/upload" enctype="multipart/form-data" id="form_upload">-->
<#--                            <input type="file" class="" id="file" name="file" title="选择头像" accept="image/*">-->
<#--                        </form>-->
<#--                    </td>-->
<#--                </tr>-->
                <tr class="tips">
                    <td colspan="2">
                        <div >
                            <p>温馨提示：</p>
                            <p>志愿者学长迎接新生时，需主动展示校园卡并核对新生资料，如有临时变动，请互相沟通。</p>
                        </div>
                    </td>
                </tr>
            </table>
        </div>
<#--        <div class="pict_right">-->
<#--            <img src=${ user.avatar } height="150px" width="140px" title="头像" alt="头像" style="object-fit: cover;">-->
<#--            <button type="button" class="btn-default" id="btn_sub" title="2M以内的图片">上传</button>-->
<#--        </div>-->
    </div>
</div>

<#if isVolunteer>
<#--    <#list newbies.newbieList as nb>-->
<#--        <div class="rg_layout">-->
<#--            <div class="rg_form clearfix result_tab">-->
<#--                <div class="rg_form_left">-->
<#--                    <p>-->
<#--                        <#if isVolunteer>-->
<#--                            对接新生信息-->
<#--                        <#elseif isNewbie>-->
<#--                            迎接你的志愿者资料-->
<#--                        </#if>-->
<#--                    </p>-->
<#--                </div>-->
<#--                <div class="rg_form_center">-->
<#--                    <div class="errorMsg"><!--貌似，您在此次活动中没有对接人！&ndash;&gt;</div>-->
<#--                    <div class="user_mes"><!--您好，user.name，以下是您对接的新生&ndash;&gt;</div>-->
<#--                    <!--打印表格&ndash;&gt;-->
<#--                    <table class="tb" style="margin-top: 25px;">-->
<#--                        <tr>-->
<#--                            <td class="td_left">-->
<#--                                <label for="name">姓名</label>-->
<#--                            </td>-->
<#--                            <td class="td_right">-->
<#--                                <input type="text" value=${ nb.getUsername() } class="" id="name" name="name" disabled>-->
<#--                            </td>-->
<#--                        </tr>-->
<#--                        <tr>-->
<#--                            <td class="td_left">-->
<#--                                <label for="stuNum">学号</label>-->
<#--                            </td>-->
<#--                            <td class="td_right">-->
<#--                                <input type="text" value=${ nb.getSchoolId() } id="stuNum" name="stuNum" disabled >-->
<#--                            </td>-->
<#--                        </tr>-->
<#--                        <tr>-->
<#--                            <td class="td_left">-->
<#--                                <label for="telephone">电话</label>-->
<#--                            </td>-->
<#--                            <td class="td_right">-->
<#--                                <input type="text" value=${ nb.getPhone() } class="" id="telephone" name="telephone" disabled >-->
<#--                            </td>-->
<#--                        </tr>-->
<#--                        <tr>-->
<#--                            <td class="td_left">-->
<#--                                <label for="college">录取学院（部）</label>-->
<#--                            </td>-->
<#--                            <td class="td_right">-->
<#--                                <input type="text" value=${ nb.getDepartment() } class="" id="college" name="college" disabled >-->
<#--                            </td>-->
<#--                        </tr>-->
<#--                        <tr>-->
<#--                            <td class="td_left">-->
<#--                                <label for="dormitory">宿舍</label>-->
<#--                            </td>-->
<#--                            <td class="td_right">-->
<#--                                <input type="text" value=${ nb.getDorm() } class="" id="dormitory" name="dormitory" disabled>-->
<#--                            </td>-->
<#--                        </tr>-->
<#--                        <tr>-->

<#--                        </tr>-->
<#--                        <tr class="tips">-->
<#--                        <td colspan="2">-->
<#--                            <div >-->
<#--                                <p>温馨提示：</p>-->
<#--                                <p>志愿者学长一对一迎接新生时，需主动展示校园卡并核对新生资料，如有临时变动，请互相沟通。</p>-->
<#--                            </div>-->
<#--                        </td>-->
<#--                    </tr>-->
<#--                    </table>-->
<#--                </div>-->
<#--                <div class="pict_right">-->
<#--                    <img src=${ nb.avatar } height="120px" width="121px" title="头像" alt="头像" style="object-fit: cover;">-->
<#--                </div>-->
<#--            </div>-->
<#--        </div>-->
<#--    </#list>-->
    <div class="rg_layout">
        <div class="rg_form clearfix result_tab">
            <div class="rg_form_left">
                <p>
                    <#if isVolunteer>
                        对接新生信息
                    <#elseif isNewbie>
                        迎接你的志愿者资料
                    </#if>
                </p>
            </div>
            <div class="rg_form_center">
                <div class="errorMsg"><!--貌似，您在此次活动中没有对接人！--></div>
                <div class="user_mes"><!--您好，user.name，以下是您对接的新生--></div>
                <!--打印表格-->
                <table class="tb" style="margin-top: 25px;">
                    <tr>
                        <td class="td_left">
                            <label for="name">姓名</label>
                        </td>
                        <td class="td_right">
                            <input type="text" value=${ newbie.getUsername() } class="" id="name" name="name" disabled>
                        </td>
                    </tr>
                    <tr>
                        <td class="td_left">
                            <label for="stuNum">学号</label>
                        </td>
                        <td class="td_right">
                            <input type="text" value=${ newbie.getSchoolId() } id="stuNum" name="stuNum" disabled >
                        </td>
                    </tr>
                    <tr>
                        <td class="td_left">
                            <label for="telephone">电话</label>
                        </td>
                        <td class="td_right">
                            <input type="text" value=${ newbie.getPhone() } class="" id="telephone" name="telephone" disabled >
                        </td>
                    </tr>
                    <tr>
                        <td class="td_left">
                            <label for="college">录取学院（部）</label>
                        </td>
                        <td class="td_right">
                            <input type="text" value=${ newbie.getDepartment() } class="" id="college" name="college" disabled >
                        </td>
                    </tr>
                    <tr>
                        <td class="td_left">
                            <label for="dormitory">宿舍</label>
                        </td>
                        <td class="td_right">
                            <input type="text" value=${ newbie.getDorm() } class="" id="dormitory" name="dormitory" disabled>
                        </td>
                    </tr>
                    <tr>

                    </tr>
                    <tr class="tips">
                        <td colspan="2">
                            <div >
                                <p>温馨提示：</p>
                                <p>志愿者学长迎接新生时，需主动展示校园卡并核对新生资料，如有临时变动，请互相沟通。</p>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
<#--            <div class="pict_right">-->
<#--                <img src=${ newbie.avatar } height="150px" width="140px" title="头像" alt="头像" style="object-fit: cover;">-->
<#--            </div>-->
        </div>
    </div>
<#elseif isNewbie>
    <div class="rg_layout">
        <div class="rg_form clearfix">
            <div class="rg_form_left">
                <p>
                    <#if isVolunteer>
                        对接新生信息
                    <#elseif isNewbie>
                        迎接你的志愿者资料
                    </#if>
                </p>
            </div>
            <div class="rg_form_center">
                <div class="errorMsg"><!--貌似，您在此次活动中没有对接人！--></div>
                <div class="user_mes"><!--欢迎您，user.name ，以下是您对接的志愿者--></div>
                <!--打印表格-->
                <table class="tb" style="margin-top: 25px;">
                    <tr>
                        <td class="td_left">
                            <label for="name">姓名</label>
                        </td>
                        <td class="td_right">
                            <input type="text" value=${ volunteer.getUsername() } class="" id="name" name="name" disabled>
                        </td>
                    </tr>
                    <tr>
                        <td class="td_left">
                            <label for="stuNum">学号</label>
                        </td>
                        <td class="td_right">
                            <input type="text" value=${ volunteer.getSchoolId() } id="stuNum" name="stuNum" disabled >
                        </td>
                    </tr>
                    <tr>
                        <td class="td_left">
                            <label for="telephone">电话</label>
                        </td>
                        <td class="td_right">
                            <input type="text" value=${ volunteer.getPhone() } class="" id="telephone" name="telephone" disabled >
                        </td>
                    </tr>
                </table>
            </div>
<#--            <div class="pict_right">-->
<#--                <img src=${ volunteer.getAvatar() }  height="150px" width="140px" title="头像" alt="头像" style="object-fit: cover;">-->
<#--            </div>-->
        </div>
    </div>

</#if>


</body>
</html>
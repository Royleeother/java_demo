<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <meta charset="UTF-8">
    <title>迎新系统</title>
    <link title="style1" rel="stylesheet" href="css/style.css" type="text/css" />

</head>
<body>

 <div>   
    <div class="logo-self">欢迎来到五邑大学</div>

	<div class="form_content">
    <form id="test" action="#">
    
    <fieldset>
        <legend class="mytitle">我的信息 </legend>
        
        <div class="form-row">
            <div class="field-label"><label for="name">姓&nbsp;&nbsp;名&nbsp;:&nbsp;</label></div>
            <div class="field-widget"><input name="name" value=${ user.username } id="name" disabled class="required" /></div>
        </div>
        
        <div class="form-row">
            <div class="field-label"><label for="stuNum">学&nbsp;&nbsp;号&nbsp;:&nbsp;</label></div>
            <div class="field-widget"><input name="stuNum" id="stuNum" value=${ user.schoolId } class="required validate-email" disabled/></div>
        </div> 
        
        <#if isNewbie>
        <div class="form-row">
            <div class="field-label"><label for="college">录取学院(部)&nbsp;:&nbsp;</label></div>
            <div class="field-widget"><input name="college" value=${ user.getDepartment() } id="college" class="required validate-email" disabled/></div>
        </div> 
        <#elseif isVolunteer>   
        <div class="form-row">
            <div class="field-label"><label for="college">学院(部)&nbsp;:&nbsp;</label></div>
            <div class="field-widget"><input name="college" value=${ user.getDepartment() } id="college" class="required validate-email" disabled/></div>
        </div>          
         </#if>

        <div class="form-row">
            <div class="field-label"><label for="telephone">电&nbsp;&nbsp;话&nbsp;:&nbsp;</label></div>
            <div class="field-widget"><input name="telephone" value=${ user.phone } id="telephone" class="required validate-email" disabled/></div>
        </div> 
        <#if isNewbie>
            <div class="form-row">
                <div class="field-label"><label for="telephone">宿&nbsp;&nbsp;舍&nbsp;:&nbsp;</label></div>
                <div class="field-widget"><input name="telephone" value=${ user.dorm } id="telephone" class="required validate-email" disabled/></div>
            </div> 
        </#if>
      
    </fieldset>  

<#if isVolunteer>
    <fieldset>
        <legend class="optional">
            一对一志愿对接的新生资料
        </legend>
        <div class="form-row">
            <div class="field-label"><label for="name">姓&nbsp;&nbsp;名&nbsp;:&nbsp;</label></div>
            <div class="field-widget"><input name="name" value=${ newbie.getUsername() } id="name" class="required" disabled/></div>
        </div>
        
        <div class="form-row">
            <div class="field-label"><label for="stuNum">学&nbsp;&nbsp;号&nbsp;:&nbsp;</label></div>
            <div class="field-widget"><input name="stuNum" value=${ newbie.getSchoolId() } id="stuNum" class="required validate-email" disabled/></div>
        </div> 
        
        <div class="form-row">
            <div class="field-label"><label for="college">录取学院(部)&nbsp;:&nbsp;</label></div>
            <div class="field-widget"><input name="college" value=${ newbie.getDepartment() } id="college" class="required validate-email" disabled /></div>
        </div> 
          
        <div class="form-row">
            <div class="field-label"><label for="telephone">电&nbsp;&nbsp;话&nbsp;:&nbsp;</label></div>
            <div class="field-widget"><input name="telephone" value=${ newbie.getPhone() } id="telephone" class="required validate-email" disabled /></div>
        </div> 

        <div class="form-row">
                <div class="field-label"><label for="telephone">宿&nbsp;&nbsp;舍&nbsp;:&nbsp;</label></div>
                <div class="field-widget"><input name="telephone" value=${ newbie.getDorm() } id="telephone" class="required validate-email" disabled/></div>
            </div> 

    </fieldset>
    <fieldset>
        <legend class="optional" style="background-color: #69690af5;">
            辅导员老师
        </legend>

        <div class="form-row">
            <div class="field-label"><label for="name">姓&nbsp;&nbsp;名&nbsp;:&nbsp;</label></div>
            <div class="field-widget"><input name="name" value=${ newbie.getBabysisterName() } id="name" class="required" disabled/></div>
        </div>
        <div class="form-row">
            <div class="field-label"><label for="telephone">电&nbsp;&nbsp;话&nbsp;:&nbsp;</label></div>
            <div class="field-widget"><input name="telephone" value=${ newbie.getBabysisterPhone() } id="telephone" class="required validate-email" disabled /></div>
        </div>

        <div class="form-row">
            <p class="tip_wx">温馨提示:</p>
            <p class="tip_wx">学长迎接新生时,您需主动展示校园卡并确认新生身份,如有临时变动, 请及时沟通。</p>
        </div>
    </fieldset>
<#elseif isNewbie>   
    <fieldset>
        <legend class="optional">
            迎接你的一对一志愿者资料
        </legend>
      
        
        <div class="form-row">
            <div class="field-label"><label for="name">姓&nbsp;&nbsp;名&nbsp;:&nbsp;</label></div>
            <div class="field-widget"><input name="name" value=${ volunteer.getUsername() } id="name" class="required" disabled/></div>
        </div>
        
        <div class="form-row">
            <div class="field-label"><label for="stuNum">学&nbsp;&nbsp;号&nbsp;:&nbsp;</label></div>
            <div class="field-widget"><input name="stuNum" value=${ volunteer.getSchoolId() } id="stuNum" class="required validate-email" disabled/></div>
        </div> 
        
        <div class="form-row">
            <div class="field-label"><label for="college">学院(部)&nbsp;:&nbsp;</label></div>
            <div class="field-widget"><input name="college" value=${ volunteer.getDepartment() } id="college" class="required validate-email" disabled /></div>
        </div> 
          
        <div class="form-row">
            <div class="field-label"><label for="telephone">电&nbsp;&nbsp;话&nbsp;:&nbsp;</label></div>
            <div class="field-widget"><input name="telephone" value=${ volunteer.getPhone() } id="telephone" class="required validate-email" disabled /></div>
        </div> 

    </fieldset>
    <fieldset>
        <legend class="optional" style="background-color: #69690af5;">
            辅导员老师
        </legend>

        <div class="form-row">
            <div class="field-label"><label for="name">姓&nbsp;&nbsp;名&nbsp;:&nbsp;</label></div>
            <div class="field-widget"><input name="name" value=${ user.getBabysisterName() } id="name" class="required" disabled/></div>
        </div>
        <div class="form-row">
            <div class="field-label"><label for="telephone">电&nbsp;&nbsp;话&nbsp;:&nbsp;</label></div>
            <div class="field-widget"><input name="telephone" value=${ user.getBabysisterPhone() } id="telephone" class="required validate-email" disabled /></div>
        </div>

        <div class="form-row">
            <p class="tip_wx">温馨提示:</p>
            <p class="tip_wx">学长迎接新生时,您需主动展示校园卡并确认新生身份,如有临时变动, 请及时沟通。</p>
        </div>
    </fieldset>
</#if>

		<a href="/login" class="button_center" >
			<input class="reset" type="button" value="退出"  />
		</a>
     	
<#--        <script type="text/javascript">-->
<#--            function logout() {-->
<#--                //write code here to logout-->

<#--            }-->
<#--        </script>-->

    </form>
    </div>
    
        
	</div>

</body>
</html>
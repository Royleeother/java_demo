<html>
    <head>
        <!-- meta charset 指定了页面编码, 否则中文会乱码 -->
        <meta charset="utf-8">
        <!-- title 是浏览器显示的页面标题 -->
        <title>login</title>
        <link rel="stylesheet" href="/login.css">
        <link rel="stylesheet" href="/font.css">
        <link rel="stylesheet" href="/css/general.css">
    </head>
    <body>
    <h1 class="font-medium text-5xl the-blue-i-like text-center logo-font">
        <span class="stroke">
            <span class="main-font text-6xl">迎新</span>
        </span>
    </h1>
    <div class="container mx-auto flex justify-center items-start">
        <div class="
            mt-4
            bg-gray-100
            text-center
            rounded
            shadow-lg
            login-width
            ">
            <div class=" text-center mt-2 font-thin tracking-wider text-2xl text-gray-900 ">
                登录
            </div>
            <div class="w-2/3 mx-auto">
                <form class="text-base" action="login_action" method="post">
                    <input type="text" name="username" placeholder="学号" class="
                                text-left bg-gray-200 w-full mt-3 leading-loose px-2
                                border-bottom outline-none
                                mb-1
                            ">
                    <input type="password" name="password" placeholder="密码(初始密码为身份证后6位)" class="
                        text-left bg-gray-200 w-full mt-3 leading-loose px-2
                        border-bottom outline-none
                        mb-3
                    ">
                    <div class="
                        text-center text-gray-500 bg-gray-200 w-auto mt-1 leading-loose px-2
                        mb-3 rounded
                    ">${ loginRes }</div>
                    <button type="submit" class=" bg-blue-600 text-gray-100 rounded-sm px-1 w-2/3
                                    m-8 main-font text-2xl tracking-widest shadow
                                    hover:bg-blue-700
                    ">
                        确认
                    </button>
                </form>

            </div>

        </div>
    </div>
    </body>
    <style>
        body {
            background: url(/img/car.jpg) no-repeat;
            background-size: cover;
        }

    </style>
</html>
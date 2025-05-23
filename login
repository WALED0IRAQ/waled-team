<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
  <meta charset="UTF-8" />
  <title>تسجيل دخول المدير</title>
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Cairo&display=swap');
    body {
      font-family: 'Cairo', sans-serif;
      background: linear-gradient(135deg, #0f2027, #203a43, #2c5364);
      margin: 0; padding: 0;
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      color: white;
      direction: rtl;
    }
    .login-container {
      background: rgba(255 255 255 / 0.1);
      padding: 30px 40px;
      border-radius: 25px;
      box-shadow: 0 0 30px #42a5f5;
      backdrop-filter: blur(15px);
      width: 320px;
      text-align: center;
    }
    h2 {
      margin-bottom: 25px;
      font-size: 2rem;
      text-shadow: 0 0 10px #42a5f5;
    }
    input[type="password"] {
      width: 100%;
      padding: 12px 15px;
      border-radius: 12px;
      border: none;
      outline: none;
      font-size: 16px;
      font-weight: 600;
      background: rgba(255 255 255 / 0.15);
      color: #e3f2fd;
      box-shadow: inset 0 0 10px rgba(255 255 255 / 0.2);
      transition: box-shadow 0.3s ease;
    }
    input[type="password"]:focus {
      box-shadow: 0 0 10px #42a5f5;
      background: rgba(255 255 255 / 0.3);
      color: #fff;
    }
    button {
      margin-top: 25px;
      width: 100%;
      padding: 12px 0;
      border-radius: 18px;
      border: none;
      background: linear-gradient(135deg, #42a5f5, #1e88e5);
      color: white;
      font-weight: 700;
      font-size: 1.1rem;
      cursor: pointer;
      box-shadow: 0 6px 20px rgba(33, 150, 243, 0.7);
      text-shadow: 0 0 5px rgba(255, 255, 255, 0.7);
      transition: transform 0.3s ease, box-shadow 0.3s ease;
    }
    button:hover {
      transform: scale(1.05);
      box-shadow: 0 8px 25px rgba(33, 150, 243, 1);
    }
    .error-message {
      color: #ff6b6b;
      margin-top: 15px;
      font-weight: 600;
      display: none;
      text-shadow: 0 0 3px #ff6b6b;
    }
  </style>
</head>
<body>

<div class="login-container">
  <h2>تسجيل دخول المدير</h2>
  <input type="password" id="password" placeholder="أدخل كلمة المرور" />
  <button onclick="login()">تسجيل الدخول</button>
  <div class="error-message" id="errorMsg">كلمة المرور غير صحيحة</div>
</div>

<script>
  function login() {
    const passwordInput = document.getElementById("password").value.trim();
    const errorMsg = document.getElementById("errorMsg");
    const correctPassword = "1234"; // عدل كلمة المرور حسب رغبتك

    if(passwordInput === correctPassword){
      localStorage.setItem("loggedIn", "true");
      window.location.href = "admin.html"; // غيّر إلى اسم ملف لوحة تحكم المدير
    } else {
      errorMsg.style.display = "block";
    }
  }

  // لو المستخدم مسجل مسبقًا يعيد التوجيه مباشرة
  if(localStorage.getItem("loggedIn") === "true"){
    window.location.href = "admin.html";
  }
</script>

</body>
</html>

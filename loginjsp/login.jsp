<%
String user = (String) session.getAttribute("username");
String message = (String) request.getAttribute("message");
if (user != null) {
    response.sendRedirect("dashboard.jsp");
    return;
}
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Alzheimer Care</title>
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="navbar.css">
    <style>
        
        .login-container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 70vh;
            padding: 20px;
        }
        
        .login-form {
            background: linear-gradient(135deg, rgba(255,255,255,0.95), rgba(240,240,255,0.9));
            padding: 50px;
            border-radius: 20px;
            box-shadow: 0 15px 35px rgba(175, 33, 218, 0.3), 0 5px 15px rgba(0,0,0,0.1);
            text-align: center;
            max-width: 450px;
            width: 100%;
            animation: formBounceIn 1.2s cubic-bezier(0.68, -0.55, 0.265, 1.55);
            border: 3px solid transparent;
            background-clip: padding-box;
            position: relative;
            overflow: hidden;
        }
        
        .login-form::before {
            content: '';
            position: absolute;
            top: -2px;
            left: -2px;
            right: -2px;
            bottom: -2px;
            background: linear-gradient(45deg, #af21da, #c329e2, #af21da);
            border-radius: 20px;
            z-index: -1;
            animation: borderGlow 3s infinite;
        }
        
        @keyframes borderGlow {
            0%, 100% { opacity: 0.7; }
            50% { opacity: 1; }
        }
        
        @keyframes formBounceIn {
            0% { transform: scale(0.3) rotate(-10deg); opacity: 0; }
            50% { transform: scale(1.05) rotate(2deg); }
            70% { transform: scale(0.95) rotate(-1deg); }
            100% { transform: scale(1) rotate(0deg); opacity: 1; }
        }
        
        .login-form h2 {
            color: #af21da;
            margin-bottom: 30px;
            font-size: 2.5rem;
            text-shadow: 0 3px 6px rgba(175, 33, 218, 0.4);
            animation: titleWave 4s infinite ease-in-out;
            background: linear-gradient(45deg, #af21da, #c329e2);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }
        
        @keyframes titleWave {
            0%, 100% { transform: translateY(0px) scale(1); }
            25% { transform: translateY(-5px) scale(1.02); }
            75% { transform: translateY(3px) scale(0.98); }
        }
        
        .form-group {
            margin-bottom: 30px;
            text-align: left;
        }
        
        .form-group label {
            display: block;
            margin-bottom: 10px;
            color: #333;
            font-weight: bold;
            font-size: 1.2rem;
        }
        
        .form-group input {
            width: 100%;
            padding: 18px 20px;
            border: 3px solid #e0e0e0;
            border-radius: 15px;
            font-size: 1.1rem;
            transition: all 0.4s cubic-bezier(0.25, 0.8, 0.25, 1);
            box-sizing: border-box;
            background: linear-gradient(145deg, #ffffff, #f8f8ff);
        }
        
        .form-group input:focus {
            border-color: #af21da;
            outline: none;
            box-shadow: 0 0 25px rgba(175, 33, 218, 0.5), inset 0 2px 5px rgba(175, 33, 218, 0.1);
            transform: translateY(-3px) scale(1.02);
            background: linear-gradient(145deg, #ffffff, #fff);
        }
        
        .login-btn {
            background: linear-gradient(135deg, #af21da 0%, #c329e2 50%, #af21da 100%);
            color: white;
            padding: 18px 50px;
            border: none;
            border-radius: 30px;
            font-size: 1.3rem;
            font-weight: bold;
            cursor: pointer;
            transition: all 0.4s cubic-bezier(0.25, 0.8, 0.25, 1);
            margin-top: 25px;
            width: 100%;
            position: relative;
            overflow: hidden;
            text-transform: uppercase;
            letter-spacing: 1px;
        }
        
        .login-btn:hover {
            transform: translateY(-5px) scale(1.02);
            box-shadow: 0 15px 30px rgba(175, 33, 218, 0.4), 0 5px 15px rgba(0,0,0,0.2);
            background: linear-gradient(135deg, #c329e2 0%, #af21da 50%, #c329e2 100%);
        }
        
        .login-icon {
            font-size: 5rem;
            color: #af21da;
            margin-bottom: 25px;
            animation: iconFloat 6s infinite ease-in-out;
            filter: drop-shadow(0 5px 10px rgba(175, 33, 218, 0.3));
        }
        .login-icon::before {
            content: '\1F512';
            font-family: "Segoe UI Emoji", "Apple Color Emoji", "Noto Color Emoji", "EmojiOne Color", "Android Emoji", sans-serif;
        }
        
        .welcome-text {
            color: #666;
            margin-bottom: 35px;
            font-size: 1.2rem;
            animation: textSlideIn 1.5s ease-out 0.5s both;
            font-style: italic;
        }
        
        .error-message {
            background: #f8d7da;
            color: #721c24;
            padding: 12px;
            border-radius: 8px;
            margin-bottom: 20px;
            border: 1px solid #f5c6cb;
            animation: shake 0.5s ease-in-out;
        }
        
        @keyframes shake {
            0%, 100% { transform: translateX(0); }
            25% { transform: translateX(-5px); }
            75% { transform: translateX(5px); }
        }
        
        @keyframes textSlideIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body>
    <div class="floating-hearts">&#128156;</div>
    <div class="floating-hearts">&#10084;</div>
    <div class="floating-hearts">&#128153;</div>
    <div class="floating-hearts">&#128154;</div>
    <div class="floating-hearts">&#128155;</div>

    <header>
        <div class="navbar">
            <ol><li>
            <a href="welcom.html">Home</a>
            <a href="aboutus.html">About Us</a>
            <a href="Symptoms.html">Symptoms</a>
            <a href="diet.html">Diet</a>
            <a href="Game.html">Game</a></li>
            <a href="login.jsp">Login</a>
            </li></ol>
        </div>
    </header>

    <main>
        <div class="login-container">
            <div class="login-form">
                <div class="login-icon"></div>
                <h2>Secure Access</h2>
                <p class="welcome-text">Enter your credentials to continue</p>
                
                <% if (message != null) { %>
                    <div class="error-message">
                        <%= message %>
                    </div>
                <% } %>
                
                <form action="login" method="post">
                    <div class="form-group">
                        <label for="username">Username:</label>
                        <input type="text" id="username" name="username" placeholder="Enter your username" required>
                    </div>
                    
                    <div class="form-group">
                        <label for="password">Password:</label>
                        <input type="password" id="password" name="password" placeholder="Enter your password" required>
                    </div>
                    
                    <button type="submit" class="login-btn">Sign In</button>
                </form>
                
                <div style="margin-top: 20px; padding-top: 20px; border-top: 2px solid rgba(175, 33, 218, 0.2);">
                    <p style="color: #666; margin-bottom: 15px;">Don't have an account?</p>
                    <a href="register.html" style="display: inline-block; padding: 12px 30px; background: linear-gradient(45deg, #28a745, #20c997); color: white; text-decoration: none; border-radius: 25px; font-weight: bold; transition: all 0.3s ease;">Create Account</a>
                </div>
            </div>
        </div>
    </main>
    
    <footer>"COLLECT BEAUTIFUL MOMENTS AND LET THEM TELL THE STORY OF YOUR LIFE"</footer>
</body>
</html>


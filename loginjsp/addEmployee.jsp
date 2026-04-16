<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Account - Alzheimer Care</title>
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="navbar.css">
    <style>
        
        .form-container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 60vh;
            padding: 20px;
        }
        
        .add-account-form {
            background: rgba(255, 255, 255, 0.9);
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.2);
            text-align: center;
            max-width: 400px;
            width: 100%;
            animation: formSlideIn 1s ease-out;
        }
        
        @keyframes formSlideIn {
            from { transform: translateY(50px); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        }
        
        .add-account-form h2 {
            color: #af21da;
            margin-bottom: 30px;
            font-size: 2rem;
            text-shadow: 0 2px 4px rgba(175, 33, 218, 0.3);
            animation: titleBounce 2s infinite;
        }
        
        @keyframes titleBounce {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-5px); }
        }
        
        .form-group {
            margin-bottom: 20px;
            text-align: left;
        }
        
        .form-group label {
            display: block;
            margin-bottom: 8px;
            color: #333;
            font-weight: bold;
            font-size: 1.1rem;
        }
        
        .form-group input {
            width: 100%;
            padding: 12px 15px;
            border: 2px solid #ddd;
            border-radius: 8px;
            font-size: 1rem;
            transition: all 0.3s ease;
            box-sizing: border-box;
        }
        
        .form-group input:focus {
            border-color: #af21da;
            outline: none;
            box-shadow: 0 0 10px rgba(175, 33, 218, 0.3);
            transform: scale(1.02);
        }
        
        .submit-btn {
            background: linear-gradient(45deg, #af21da, #c329e2);
            color: white;
            padding: 15px 30px;
            border: none;
            border-radius: 25px;
            font-size: 1.2rem;
            font-weight: bold;
            cursor: pointer;
            transition: all 0.3s ease;
            margin-top: 20px;
            width: 100%;
        }
        
        .submit-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(175, 33, 218, 0.4);
            background: linear-gradient(45deg, #c329e2, #af21da);
        }
        
        * {
            transform-origin: center !important;
        }
    </style>
</head>
<body>

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
        <div class="form-container">
            <div class="add-account-form">
                <h2>Add New Account</h2>
                <form action="AddEmployeeServlet" method="post">
                    <div class="form-group">
                        <label for="name">Full Name:</label>
                        <input type="text" id="name" name="name" placeholder="Enter your full name" required>
                    </div>
                    
                    <div class="form-group">
                        <label for="email">Email Address:</label>
                        <input type="email" id="email" name="email" placeholder="Enter your email" required>
                    </div>
                    
                    <div class="form-group">
                        <label for="phone">Phone Number:</label>
                        <input type="tel" id="phone" name="phone" placeholder="Enter your phone number" required>
                    </div>
                    
                    <button type="submit" class="submit-btn">Save Account</button>
                </form>
            </div>
        </div>
    </main>
    
    <footer>"COLLECT BEAUTIFUL MOMENTS AND LET THEM TELL THE STORY OF YOUR LIFE"</footer>
</body>
</html>

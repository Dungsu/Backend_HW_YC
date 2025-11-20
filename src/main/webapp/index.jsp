<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Mock Data (DB 연동 시 교체)
    String musicTitle = "민수는 혼란스럽다";
    String artistName = "민수";
    String albumUrl = "https://via.placeholder.com/400x400/333333/FFFFFF?text=Album+Art"; 
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Music Tinder</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="style.css">
</head>
<body>

    <aside class="sidebar">
        <div class="logo-box">LOGO</div>
        <div class="logo-box" style="border: none; margin-bottom: 20px; padding:0; text-align: left; font-size: 1rem;">NAVIGATION</div>
        <ul class="nav-menu">
            <li><a href="#"><i class="fa-solid fa-fire-flame-curved" style="width:25px;"></i> 음악 틴더</a></li>
            <li><a href="#"><i class="fa-solid fa-list-ul" style="width:25px;"></i> 내 재생 목록</a></li>
            <li><a href="#"><i class="fa-solid fa-calendar-day" style="width:25px;"></i> 오늘의 추천</a></li>
        </ul>
    </aside>

    <main class="main-content">
        
        <nav class="top-auth">
            <a href="#">로그인</a>
            <a href="#">회원가입</a>
        </nav>

        <div class="stage-area">
            
            <button class="action-btn btn-x">
                <i class="fa-solid fa-xmark"></i>
            </button>

            <div class="phone-frame">
                <div class="music-info-box">
                    <div class="music-title"><%= musicTitle %></div>
                    <div class="artist-name"><%= artistName %></div>
                </div>

                <div class="media-area">
                    <img src="img/album_cover.jpg" alt="Album Cover">
                </div>
                <p class="api-note"></p>

                <div class="progress-bar">
                    <div class="progress-fill"></div>
                    <div class="progress-knob"></div>
                </div>

                <div class="controls-area">
                    <div class="toggle-wrapper">
                        <span class="toggle-label">하이라이트 모드</span>
                        <label class="switch">
                            <input type="checkbox" checked>
                            <span class="slider"></span>
                        </label>
                    </div>

                    <div class="play-btn" id="playBtn">
                        <i class="fa-solid fa-play"></i>
                    </div>
                    
                    <div style="width: 44px;"></div> 
                </div>
            </div>

            <button class="action-btn btn-heart">
                <i class="fa-regular fa-heart"></i>
            </button>

        </div>
    </main>

    <script>
        // 재생 버튼 클릭 시 아이콘 변경 스크립트
        const playBtn = document.getElementById('playBtn');
        playBtn.addEventListener('click', () => {
            const icon = playBtn.querySelector('i');
            if (icon.classList.contains('fa-play')) {
                icon.classList.remove('fa-play');
                icon.classList.add('fa-pause');
            } else {
                icon.classList.remove('fa-pause');
                icon.classList.add('fa-play');
            }
        });
    </script>
</body>
</html>
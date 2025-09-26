<?php

// Personal information
$personal_info = [
    'name' => 'Ng Jue Mang',
    'title' => 'IT Support Engineer',
    'email' => 'ngjuemang@gmail.com',
    'phone' => '90740794',
    'location' => 'Jurong West St 42 Blk 550 #08-235, Singapore 640550',
    'bio' => 'I am a passionate web developer with experience in creating beautiful and functional websites. I love turning ideas into reality through code.',
    'profile_image' => 'https://via.placeholder.com/300x300' // Replace with your image URL
];

// Skills array
$skills = [
    'HTML/CSS', 'JavaScript', 'PHP', 'MySQL', 
    'Git'
];

// Projects array - just add your project details here
$projects = [
    [
        'title' => 'Stocktake V2',
        'description' => 'Revamp of the old version',
        'image' => 'https://via.placeholder.com/400x250',
        'link' => 'https://github.com/yourusername/ecommerce-project',
        'demo' => 'https://your-demo-site.com',
        'technologies' => ['PHP', 'MySQL', 'Bootstrap', 'JavaScript']
    ],
    [
        'title' => 'Task Management App',
        'description' => 'A React-based task management application with drag-and-drop functionality.',
        'image' => 'https://via.placeholder.com/400x250',
        'link' => 'https://github.com/yourusername/task-manager',
        'demo' => 'https://your-task-app.com',
        'technologies' => ['React', 'CSS3', 'JavaScript', 'LocalStorage']
    ],
    [
        'title' => 'Weather Dashboard',
        'description' => 'A weather application that displays current weather and forecast using API integration.',
        'image' => 'https://via.placeholder.com/400x250',
        'link' => 'https://github.com/yourusername/weather-app',
        'demo' => 'https://your-weather-app.com',
        'technologies' => ['JavaScript', 'API', 'CSS3', 'HTML5']
    ]
];

// Social media links
$social_links = [
    'github' => 'https://github.com/juemang079',
    'linkedin' => 'https://linkedin.com/in/ng-jue-mang',
    'twitter' => 'https://twitter.com/yourusername',
    'portfolio' => 'https://yourportfolio.com'
];
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $personal_info['name']; ?> - Portfolio</title>
    <link rel="stylesheet" href="\portfolio\style.css">
</head>
<body>
    <div class="container">
        <!-- Header -->
        <header>
            <img src="<?php echo $personal_info['profile_image']; ?>" alt="Profile" class="profile-img">
            <h1><?php echo $personal_info['name']; ?></h1>
            <p class="title"><?php echo $personal_info['title']; ?></p>
            <p class="bio"><?php echo $personal_info['bio']; ?></p>
            
            <div class="contact-info">
                <div class="contact-item">
                    📧 <?php echo $personal_info['email']; ?>
                </div>
                <div class="contact-item">
                    📱 <?php echo $personal_info['phone']; ?>
                </div>
                <div class="contact-item">
                    📍 <?php echo $personal_info['location']; ?>
                </div>
            </div>

            <div class="social-links">
                <?php foreach($social_links as $platform => $url): ?>
                    <a href="<?php echo $url; ?>" target="_blank" class="social-link">
                        <?php
                        $icons = [
                            'github' => '🔗',
                            'linkedin' => '💼',
                            'twitter' => '🐦',
                            'portfolio' => '🌐'
                        ];
                        echo $icons[$platform] ?? '🔗';
                        ?>
                    </a>
                <?php endforeach; ?>
            </div>
        </header>

        <!-- Navigation -->
        <nav>
            <a href="#" onclick="showSection('about')" class="nav-link active">About</a>
            <a href="#" onclick="showSection('skills')" class="nav-link">Skills</a>
            <a href="#" onclick="showSection('projects')" class="nav-link">Projects</a>
            <a href="#" onclick="showSection('contact')" class="nav-link">Contact</a>
        </nav>

        <!-- About Section -->
        <div id="about" class="section visible">
            <h2>About Me</h2>
            <p style="text-align: center; font-size: 1.1em; color: #666; max-width: 800px; margin: 0 auto;">
                <?php echo $personal_info['bio']; ?> I enjoy working with modern technologies and creating solutions that make a difference. 
                When I'm not coding, you can find me exploring new technologies, contributing to open-source projects, or sharing my knowledge with the community.
            </p>
        </div>

        <!-- Skills Section -->
        <div id="skills" class="section hidden">
            <h2>My Skills</h2>
            <div class="skills-grid">
                <?php foreach($skills as $skill): ?>
                    <div class="skill-item"><?php echo $skill; ?></div>
                <?php endforeach; ?>
            </div>
        </div>

        <!-- Projects Section -->
        <div id="projects" class="section hidden">
            <h2>My Projects</h2>
            <div class="projects-grid">
                <?php foreach($projects as $project): ?>
                    <div class="project-card">
                        <img src="<?php echo $project['image']; ?>" alt="<?php echo $project['title']; ?>" class="project-img">
                        <div class="project-content">
                            <h3 class="project-title"><?php echo $project['title']; ?></h3>
                            <p class="project-description"><?php echo $project['description']; ?></p>
                            
                            <div class="project-tech">
                                <?php foreach($project['technologies'] as $tech): ?>
                                    <span class="tech-tag"><?php echo $tech; ?></span>
                                <?php endforeach; ?>
                            </div>
                            
                            <div class="project-links">
                                <a href="<?php echo $project['link']; ?>" target="_blank" class="btn btn-primary">View Code</a>
                                <?php if(!empty($project['demo'])): ?>
                                    <a href="<?php echo $project['demo']; ?>" target="_blank" class="btn btn-secondary">Live Demo</a>
                                <?php endif; ?>
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>
        </div>

        <!-- Contact Section -->
        <div id="contact" class="section hidden">
            <h2>Get In Touch</h2>
            <div style="text-align: center; max-width: 600px; margin: 0 auto;">
                <p style="font-size: 1.1em; color: #666; margin-bottom: 30px;">
                    I'm always interested in new opportunities and collaborations. 
                    Feel free to reach out if you'd like to work together!
                </p>
                
                <div class="contact-info">
                    <div class="contact-item">
                        <strong>Email:</strong> <?php echo $personal_info['email']; ?>
                    </div>
                    <div class="contact-item">
                        <strong>Phone:</strong> <?php echo $personal_info['phone']; ?>
                    </div>
                    <div class="contact-item">
                        <strong>Location:</strong> <?php echo $personal_info['location']; ?>
                    </div>
                </div>

                <div class="social-links">
                    <?php foreach($social_links as $platform => $url): ?>
                        <a href="<?php echo $url; ?>" target="_blank" class="social-link">
                            <?php
                            $icons = [
                                'github' => '🔗',
                                'linkedin' => '💼', 
                                'twitter' => '🐦',
                                'portfolio' => '🌐'
                            ];
                            echo $icons[$platform] ?? '🔗';
                            ?>
                        </a>
                    <?php endforeach; ?>
                </div>
            </div>
        </div>
    </div>

    <script>
        // Smooth section switching
        function showSection(sectionName) {
            // Hide all sections
            const sections = document.querySelectorAll('.section');
            sections.forEach(section => {
                section.classList.add('hidden');
                section.classList.remove('visible');
            });

            // Show target section with animation
            const targetSection = document.getElementById(sectionName);
            targetSection.classList.remove('hidden');
            
            setTimeout(() => {
                targetSection.classList.add('visible');
            }, 50);

            // Update navigation
            const navLinks = document.querySelectorAll('.nav-link');
            navLinks.forEach(link => link.classList.remove('active'));
            event.target.classList.add('active');
        }

        // Smooth scroll effect for project cards
        function animateOnScroll() {
            const cards = document.querySelectorAll('.project-card');
            cards.forEach(card => {
                const cardTop = card.getBoundingClientRect().top;
                const cardVisible = 150;
                
                if (cardTop < window.innerHeight - cardVisible) {
                    card.style.opacity = '1';
                    card.style.transform = 'translateY(0)';
                }
            });
        }

        // Initialize animations
        window.addEventListener('scroll', animateOnScroll);
        
        // Add hover effects to skill items
        document.addEventListener('DOMContentLoaded', function() {
            const skillItems = document.querySelectorAll('.skill-item');
            skillItems.forEach(item => {
                item.addEventListener('mouseenter', function() {
                    this.style.transform = 'translateY(-5px) scale(1.05)';
                });
                
                item.addEventListener('mouseleave', function() {
                    this.style.transform = 'translateY(0) scale(1)';
                });
            });

            // Add typing effect to title
            const title = document.querySelector('h1');
            const titleText = title.textContent;
            title.textContent = '';
            
            let i = 0;
            function typeWriter() {
                if (i < titleText.length) {
                    title.textContent += titleText.charAt(i);
                    i++;
                    setTimeout(typeWriter, 100);
                }
            }
            
            setTimeout(typeWriter, 500);
        });

        // Add click effect to buttons
        document.querySelectorAll('.btn').forEach(btn => {
            btn.addEventListener('click', function(e) {
                const ripple = document.createElement('span');
                const rect = this.getBoundingClientRect();
                const size = Math.max(rect.width, rect.height);
                const x = e.clientX - rect.left - size / 2;
                const y = e.clientY - rect.top - size / 2;
                
                ripple.style.cssText = `
                    position: absolute;
                    width: ${size}px;
                    height: ${size}px;
                    left: ${x}px;
                    top: ${y}px;
                    background: rgba(255, 255, 255, 0.3);
                    border-radius: 50%;
                    transform: scale(0);
                    animation: ripple 0.6s ease-out;
                    pointer-events: none;
                `;
                
                this.style.position = 'relative';
                this.style.overflow = 'hidden';
                this.appendChild(ripple);
                
                setTimeout(() => {
                    ripple.remove();
                }, 600);
            });
        });

        // Add CSS for ripple animation
        const style = document.createElement('style');
        style.textContent = `
            @keyframes ripple {
                to {
                    transform: scale(4);
                    opacity: 0;
                }
            }
        `;
        document.head.appendChild(style);
    </script>
</body>
</html>
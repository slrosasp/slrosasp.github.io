.about-section {
    max-width: 1200px;
    margin: 0 auto;
    padding: 40px 20px;
}

.about-header {
    text-align: center;
    margin-bottom: 50px;
}

.about-header h2 {
    font-size: 2.5rem;
    color: #2c3e50;
    margin-bottom: 10px;
}

.about-header h2 span {
    color: #3498db;
}

.about-header p {
    color: #7f8c8d;
    font-size: 1.1rem;
}

.about-content {
    display: flex;
    gap: 50px; /* 50px */
    margin-bottom: 60px;
}

.about-image {
    flex: 1;
}

.about-image img {
    width: 100%;
    border-radius: 10px;
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
}

.about-text {
    flex: 1;
}

.about-text h3 {
    font-size: 1.8rem;
    color: #2c3e50;
    margin-bottom: 20px;
}

.about-text p {
    color: #34495e;
    line-height: 1.8;
    margin-bottom: 20px;
}

.about-details {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    gap: 15px;
    margin: 25px 0;
}

.detail-item {
    margin-bottom: 10px;
}

.detail-item strong {
    display: block;
    color: #3498db;
    margin-bottom: 5px;
}

.detail-item span {
    color: #34495e;
}

.about-social {
    margin-top: 30px;
}

.about-social a {
    display: inline-block;
    width: 40px;
    height: 40px;
    background: #f8f9fa;
    border-radius: 50%;
    text-align: center;
    line-height: 40px;
    margin-right: 10px;
    color: #3498db;
    transition: all 0.3s ease;
}

.about-social a:hover {
    background: #3498db;
    color: white;
    transform: translateY(-3px);
}

.about-values {
    margin-top: 60px;
}

.about-values h3 {
    text-align: center;
    font-size: 2rem;
    margin-bottom: 40px;
    color: #2c3e50;
}

.values-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
    gap: 30px;
}

.value-card {
    background: white;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
    text-align: center;
    transition: transform 0.3s ease;
}

.value-card:hover {
    transform: translateY(-10px);
}

.value-card i {
    font-size: 2.5rem;
    color: #3498db;
    margin-bottom: 20px;
}

.value-card h4 {
    font-size: 1.3rem;
    margin-bottom: 15px;
    color: #2c3e50;
}

.value-card p {
    color: #7f8c8d;
    line-height: 1.6;
}

@media (max-width: 768px) {
    .about-content {
        flex-direction: column;
    }

    .about-details {
        grid-template-columns: 1fr;
    }
}

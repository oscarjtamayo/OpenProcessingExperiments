
int no_of_particles = 400;
Particle[] particles = new Particle[no_of_particles];
 
float dt;
int oldMillis;
 
float friction = 0.2;
 
float radius = 1;
 
boolean grav = true;
 
void setup() {
    size(700, 400);
 
    for (int i = 0; i < no_of_particles; i++) {
        float x = random(0, width);
        float y = random(0, height);
        particles[i] = new Particle(x, y, radius);
    }
    frameRate(60);
    smooth();
}
 
void draw() {
    updateParticles();
    
    filter(INVERT);
    colorMode(RGB, 1);
    background(0);
 
    float r;
    
    for (int i = 0; i < no_of_particles; i++) {
        int d = parseInt(particles[i].radius * 2);
        ellipse((float) particles[i].posX, (float) particles[i].posY, d, d);
    }
    
}
 
 
void updateParticles() {
    for (int i = 0; i < no_of_particles; i++) {
        Particle particle = particles[i];
 
        
        if (particle.posY > height) {
            particle.vY = -abs(particle.vY) * (1 - friction);
            particle.posY = height;
        }
 
        
        if (particle.posY < 0) {
            particle.vY = abs(particle.vY) * (1 - friction);
            particle.posY = 0;
        }
 
        
        if (particle.posX < 0) {
            particle.vX = abs(particle.vX) * (1 - friction);
            particle.posX = 0;
        }
 
        
        if (particle.posX > width) {
            particle.vX = -abs(particle.vX) * (1 - friction);
            particle.posX = width;
        }
 
        
        for (int j = 0; j < no_of_particles; j++) {
 
            
            bounce(particles[i], particles[j]);
        }
 
        
        applyMouseGravity(particle);
 
        
        particle.tick();
    }
    dt = 400;
 
}
 
void applyMouseGravity(Particle particle) {
    
        float d = sqrt(pow(particle.posX - mouseX, 2)
                + pow(particle.posY - mouseY, 2))
                * (float) 2.0;
        float ang = atan2(particle.posX - mouseX, particle.posY - mouseY);
        float F = (float) 10 * dt;
        F = min(1 / d, 3);
        
 
        particle.vX += sin(ang) * F;
        particle.vY += cos(ang) * F;
    
}
 
void bounce(Particle a, Particle b) {
    if (sqrt(pow(a.posX - b.posX, 2) + pow(a.posY - b.posY, 2)) < (a.radius + b.radius+5)) {
        if (sqrt(pow(a.posX - b.posX, 2) + pow(a.posY - b.posY, 2)) > sqrt(pow(
                a.posX + a.vX - b.posX - b.vX, 2)
                + pow(a.posY + a.vY - b.posY - b.vY, 2))) {
 
            float commonTangentAngle = atan2(b.posX - a.posX, b.posY
                    - a.posY)
                    + asin(1);
 
            float v1 = a.getVelocity();
            float v2 = b.getVelocity();
            float w1 = a.getMotionDirection();
            float w2 = b.getMotionDirection();
 
            a.vX = sin(commonTangentAngle) * v1 * cos(w1 - commonTangentAngle) + cos(commonTangentAngle) * v2 * sin(w2 - commonTangentAngle);
            a.vY = cos(commonTangentAngle) * v1 * cos(w1 - commonTangentAngle) - sin(commonTangentAngle) * v2 * sin(w2 - commonTangentAngle);
            b.vX = sin(commonTangentAngle) * v2 * cos(w2 - commonTangentAngle) + cos(commonTangentAngle) * v1 * sin(w1 - commonTangentAngle);
            b.vY = cos(commonTangentAngle) * v2 * cos(w2 - commonTangentAngle) - sin(commonTangentAngle) * v1 * sin(w1 - commonTangentAngle);
 
            a.vX *= (1 - friction);
            a.vY *= (1 - friction);
            b.vX *= (1 - friction);
            b.vY *= (1 - friction);
        }
    }
}
 
class Particle {
 
    float posX;
    float posY;
 
    float vX = 0;
    float vY = 0;
 
    float radius;
    
    Particle(float x, float y, float r) {
        posX = x;
        posY = y;
        radius = r;
    }
 
    float getVelocity() {
        return sqrt(vX * vX + vY * vY);
    }
 
    public float getMotionDirection() {
        return atan2(vX, vY);
    }
 
    void tick() {
        posX += vX * dt;
        posY += vY * dt;
    }
 
}


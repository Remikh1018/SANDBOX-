int reset;
int rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight;
int TriangleNoseX, TriangleNoseY, TriangleNoseWidth, TriangleHeight;
//
int faceX, faceY, faceDiameter, faceRadius;
int leftEyeX, leftEyeY, leftEyeDiameter;
int rightEyeX, rightEyeY, rightEyeDiameter;
int noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
float mouthX1, mouthY1, mouthX2, mouthY2, mouthThick;
color red = #FF0303;
color measlesColor = red;
float measlesX, measlesY, measlesDiameter;
//
size (400, 400); //Numbers like coordiante plane
//Portrait Geometry, height is smaller thus dimension of face (circle)
//
faceX = 200; // =400/2
faceY = 200; // =400/2
faceDiameter = 400; //smaller of coordinate plane
//
leftEyeX = 110; // =400/4
leftEyeY = 80; // =400/4
leftEyeDiameter = 100; // =400/8
rightEyeX = 290; // =400*3/4
rightEyeY = leftEyeY; //Y-axis is same for both eyes
rightEyeDiameter = leftEyeDiameter; //Diameter is same for both eyes
//
//Nose in middle of face
triangleNoseX = 200; // =400/2
triangleNoseY = 200; // =400/2
//See paperfolding around center, nose is 1/16 left&right and above&below center
triangleNoseWidth = 130; // =400*2/16
triangleNoseHeight = 130; //400*1/5
//
mouthX1 = leftEyeX; //Corner of Mouth under Eye
mouthY1 = 320; // =400*3/4
mouthX2 = rightEyeX; //Corner of Mouth under Eye
mouthY2 = mouthY1; //Y-xis of mouth same
mouthThick = 30; // =400*1/20
reset = 1;
//
ellipse(faceX, faceY, faceDiameter, faceDiameter);
//
ellipse(leftEyeX, leftEyeY, leftEyeDiameter, leftEyeDiameter);
ellipse(rightEyeX, rightEyeY, rightEyeDiameter, rightEyeDiameter);
//
ellipse(triangleNoseX, triangleNoseY, triangleNoseWidth, triangleNoseHeight);
//
strokeWeight(mouthThick);
line(mouthX1, mouthY1, mouthX2, mouthY2);
strokeWeight(reset);
measlesX = random(rectFaceX, rectFaceX+rectFaceXWidth);
measlesY = random(height*0+measlesDiameter, height-measlesDiameter);
measlesDiameter = random(height*1/20, height*1/10);
fill(measlesColor);
ellipse(measlesX, measlesY, measlesDiameter, measlesDiameter);
fill(reset);
rect(rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight);

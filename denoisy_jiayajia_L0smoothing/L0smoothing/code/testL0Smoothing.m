Im = imread('2.jpg');
S = L0Smoothing(Im,0.2);
imwrite(S,'2_7.jpg');
figure, imshow(S);

clear all

%�����õ�һ��ͼ���в���������gammaУ�������ݱ�����input1.mat���񻯵����ݱ�����input2.mat��
im = imread('7.jpg');
% subplot(2,2,1);
% imshow(im);
% xlabel('origin image');

% ��ɫͨ������
im1 = redCompensate(im,5);
subplot(2,2,1)
imshow(im1);
xlabel('red channel compensate')

% ��ɫͨ�����䣬�ڻ���ˮ����߸�ˮλ���߸�������Ĵ������ڣ�������ɫͨ��˥��ǿ��ʱ������ɫͨ�����в���
%im1 = blueCompensate(im1);
%subplot(2,3,3)
%imshow(im1);
%xlabel('blue channel compensate')

% �Ҷ�����任
im2 = grayWorld(im1);
subplot(2,2,2)
imshow(im2);
xlabel('white balance')

% ٤��У��
im3 = gammaCorrection(im2,1,2);
subplot(2,2,3)
imshow(im3);
xlabel('gamma correction');
%save('input1.mat','im3');
imwrite(im3,'result7_input1.jpg');

% ��
im4 = sharp(im2);
subplot(2,2,4)
imshow(im4);
xlabel('sharp')
%save('input2.mat','im4');
imwrite(im4,'result7_input2.jpg');


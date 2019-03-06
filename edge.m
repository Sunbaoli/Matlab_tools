number = 2866;
for postion =1:number
    prefix1 = 'C:\Users\sunbaoli\Desktop\train_0306\';
    I = imread([prefix1,num2str(postion),'.png']);
    h=fspecial('gaussian',5);%?¸ßË¹ÂË²¨
    BW1=edge(I,'canny');%¸ßË¹ÂË²¨ºóÊ¹ÓÃCannyËã×Ó½øÐÐ±ßÔµ¼ì²â
    %imshow(BW1)
    se = strel('disk',2);
    I2 = imdilate(BW1,se);
    %imshow(I2);
    %file = 'C:\Users\sunbaoli\Desktop\train_edge\';
    filename=strcat(num2str(postion),'.png');
    imwrite(I2,filename);
end

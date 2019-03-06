function y=mad(gt,img)
    if isa(gt,'uint8')
        gt=double(gt);
        img=double(img);
    else
        gt=double(uint8(gt*255));
        img=double(uint8(img*255));
    end
    n=size(gt,1)*size(gt,2);
    res=abs(gt-img);
    y=sum(res(:))/n;
end

function y=rmse(gt,im)
    if ~isa(gt,'uint8')
        gt=double(uint8(gt*255));
        im=double(uint8(im*255));
    else
        gt=double(gt);
        im=double(im);
    end
    n=size(gt,1)*size(gt,2);
    square=((gt-im).^2)/n;
    y=sqrt(sum(square(:)));
end

sum_mad = 0;
sum_rmse = 0;
number=6;
mad_=[];
rmse_=[];

for postion =1:number
    prefix1 = './testx1/';
    prefix2 = './testx1_x8_1299/';
    l=imread([prefix1,num2str(postion),'.png']);
    h=imread([prefix2,num2str(postion),'.png']);
    mad_ = [mad_ mad(h,l)];
    rmse_ =[rmse_ rmse(h,l)];
    %sum_mad= sum_mad+mad_;
    %sum_rmse=sum_rmse+rmse_;
end

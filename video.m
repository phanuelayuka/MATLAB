%load the images with frame rate of 1
images =cell(38,1);
images{1}=imread('images1.jpg');
images{2}=imread('images2.jpg');
images{3}=imread('images3.jpg');
images{4}=imread('images4.jpg');
images{5}=imread('images5.jpg');
images{6}=imread('images6.jpg');
images{7}=imread('images7.jpg');
images{8}=imread('images8.jpg');
images{9}=imread('images9.jpg');
images{10}=imread('images10.jpg');
images{11}=imread('images11.jpg');
images{12}=imread('images12.jpg');
images{13}=imread('images13.jpg');
images{14}=imread('images14.jpg');
images{15}=imread('images15.jpg');
images{16}=imread('images16.jpg');
images{17}=imread('images17.jpg');
images{18}=imread('images18.jpg');
images{19}=imread('images19.jpg');
images{20}=imread('images20.jpg');
images{21}=imread('images21.jpg');
images{22}=imread('images22.jpg');
images{23}=imread('images23.jpg');
images{24}=imread('images24.jpg');
images{25}=imread('images25.jpg');
images{26}=imread('images26.jpg');
images{27}=imread('images27.jpg');
images{28}=imread('images28.jpg');
images{29}=imread('images29.jpg');
images{30}=imread('images30.jpg');
images{31}=imread('images31.jpg');
images{32}=imread('images32.jpg');
images{33}=imread('images33.jpg');
images{34}=imread('images34.jpg');
images{35}=imread('images35.jpg');
images{36}=imread('images36.jpg');
images{37}=imread('images37.jpg');
images{38}=imread('images38.jpg');

%all my images are of the same idential; same simensions
%create a video writer with 1fbs

writerObj=VideoWriter('myvideo.avi');
writerObj.FrameRate=0.5;

%set the seconds for each image
for sec=1:38
    secsPerImage(sec)=1;
end
%open the video writer
open(writerObj);

%write the frames to the video
for u=1:length(images)
    %convert the image into a frame
    frame=im2frame(images{u});
    for v=1:secsPerImage(u)
        writeVideo(writerObj,frame);
    end
    
end

%close the writer object
close(writerObj);
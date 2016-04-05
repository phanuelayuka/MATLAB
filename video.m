%load the images with frame rate of 1
images =cell(15,1);
images{1}=imread('image1.jpg');
images{2}=imread('image2.jpg');
images{3}=imread('image3.jpg');
images{4}=imread('image4.jpg');
images{5}=imread('image5.jpg');
images{6}=imread('image6.jpg');
images{7}=imread('image7.jpg');
images{8}=imread('image8.jpg');
images{9}=imread('image9.jpg');
images{10}=imread('image10.jpg');
images{11}=imread('image11.jpg');
images{12}=imread('image12.jpg');
images{13}=imread('image13.jpg');
images{14}=imread('image14.jpg');
images{15}=imread('image15.jpg');

%all my images are of the same idential; same simensions
%create a video writer with 1fbs

writerObj=VideoWriter('myvideo.avi');
writerObj.FrameRate=1;

%set the seconds for each image

secsPerImage=[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];

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
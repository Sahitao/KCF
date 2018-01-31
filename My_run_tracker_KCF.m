
% run_tracker.m

close all;
% clear all;



%ask the u%choose the path to the videos (you'll be able to choose one with the GUI)
%base_path = 'H:\MUSTer_code_v1.2\MUSTer_code_v1.1\video\';

%parameters according to the paper

% video_name_list = {'Biker',...
%       'Bird1','Bird2',...
%      'BlurBody','BlurCar1','BlurCar2','BlurCar3','BlurCar4','BlurFace',...
%     'BlurOwl','Board', 'Bolt2','Box',  'Car1','Car2','Car24',...
%       'ClifBar','Coupon', 'Crowds','Dancer',  ...
%       'Dancer2','Diving', 'Dog',  ...
%         'DragonBaby','Girl2', 'Gym','Human2',  ...
%          'Human3','Human4', 'Human5','Human6',  ...
%     'Human7','Human8','Human9', ...
%     'Jump','KiteSurf', 'Man','Panda',  ...
%     'RedTeam','Rubik', 'Skater','Skater2',  ...
%     'Skating2.1','Skating2.2', 'Surfer','Toy',  ...
%     'Trans','Twinnings', 'Vase'};
% 
% video_nframes_2 = [142,408,99,334,742,585, 357,...
%                               380,493,631,698,293,1161,1020,...
%                               913,3059,472,327,347,225,150,...
%                               215,127,113,1500,767,1128,1698,...
%                               667,713,792,250,128,305,122,...
%                               84,134,1000,1918,1997,160,435,...
%                               473,473,376,271,124,472,271];

video_name_list = {'David3', 'Biker'};
video_nframes_2 = [252,142];


for i = 1 %:length(video_name_list)
    name = video_name_list{i};
    %video_path = [base_path name '\'];
    res_path = './results-OTB100/';
    if ~exist(res_path,'dir')
        mkdir(res_path);
    end
   

    [positions, precision, fps] = my_run_tracker(name,'gaussian','hog',0,0);
    
%     strut_t.res = positions;
%     strut_t.len = video_nframes_2(i);
%     strut_t.annoBegin = 1;
%     strut_t.startFrame = 1;
%     if strcmp(name, 'BlurCar1')
%         strut_t.startFrame = 247;
%     end
%     
%     if strcmp(name, 'BlurCar3')
%         strut_t.startFrame = 3;
%     end
%     
%     if strcmp(name, 'BlurCar4')
%         strut_t.startFrame = 18;
%     end
%     strut_t.type = 'rect';
% %   res.anno = rect_anno;
%     results = cell(1,20);
%     for j = 1 : 20
%         results{1,j} = strut_t;
%     end
%     
%     save([res_path  name '_KCF.mat'], 'results');
end
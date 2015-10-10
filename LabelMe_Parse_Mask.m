%% Read actual masks from server
%  This script requires LabelMeToolBox
% Define the root folder for the images
HOMEIMAGES = '.\Images'; % you can set here your default folder
HOMEANNOTATIONS = '.\Annotations'; % you can set here your default folder
HOMEMASKS = '.\Masks\'; % you can set here your default folder

% usc_table_top is original name of uscshadow
folderlist = {'users/shengshuyang//usc_table_top'};

% Download files
LMinstall (folderlist, HOMEIMAGES, HOMEANNOTATIONS);

% Create Database from files
D = LMdatabase(HOMEANNOTATIONS);

%%
pause on;
mkdir('.', HOMEMASKS);
for i = 1:size(D,2)
	[annotation, ~] = LMread(D, i, HOMEIMAGES);
	[mask, class] = LMobjectmask(annotation, HOMEIMAGES);
	mask = uint16(sum(mask,3));
	mask_name = strrep(annotation.filename,'rgb.jpg','gt.png');
	mask_name = strcat(HOMEMASKS,mask_name);
	imwrite(mask,mask_name);
	imagesc(mask);
	pause(0.1);
end
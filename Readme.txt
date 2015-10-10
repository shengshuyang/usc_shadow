%%%%%%%% USC SHADOW README %%%%%%%%%%%%		

The dataset contains 5 subfolders:

1. Original PCD: 
    the set of original pcd files (640x480).
2. Image Pairs:
    each image pair can be combined to create an original pcd file.

3. Preprocessed PCD (*_pp.pcd): 
    the set of preprocessed pcd fiels. A axis limit filter was applied on original pcd
    files to remove points that are not on table top. Note that the processed file is 
    still organized and with dimension 640x480, removed points still present in the 
    point cloud, but their positions are invalid.
    
4. Plane Labels:
    uint16 grayscale png files. can be read and visualized by Matlab. Meaning of pixel
    values are as follows:
      OBJECT = 2
      FLOOR(PLANE) = 3
      WALL = 4

5. Ground Truth:
    uint16 grayscale png files. these are ground truth shadow labels created with LabelMe.
    0 for non shadow and 1 for shadow.
    
0. In addition, a Matlab script is given to download annotations and generate ground truth
   images from LabelMe. Use of this script requires LabelMeToolBox and administrative access.
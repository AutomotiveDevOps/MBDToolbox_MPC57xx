function setup_env
% Setup the environment. Download MBDToolbox from NXP. 
% Change extension to .zip (if .mltbx)

% If it's already done.
if exist(fullfile(pwd, 'MBDToolbox_MPC57xx'), 'dir')
    return;
end

% Set cache path for the toolbox in Jenkins
zip_path = getenv('MBDTOOLBOX_ZIP');
if isempty(zip_path)
    % For development, put zip in this folder.
    zip_path = 'MBDToolbox_MPC57xx_3.1.0_20191216.zip';
end



unzip(zip_path)
movefile('fsroot', 'MBDToolbox_MPC57xx')
mbd_mpc_path2;
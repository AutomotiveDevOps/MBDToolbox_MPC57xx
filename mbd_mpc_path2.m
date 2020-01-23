% Fix for a flawed and overthought mbd_mpc_path included from NXP.
function mbd_mpc_path2(varargin)

expandPaths = {
    'mbdtbx_mpc/src'
    'mbdtbx_mpc/devices'
    'mbdtbx_mpc/blocks'
    'mbdtbx_mpc/mscripts'
    'mbdtbx_mpc574x/src'
    'mbdtbx_mpc574x/AMMCLIB_MPC574xP/bam'
    'mbdtbx_mpc574x/mbdtbx_mpc574x/blocks'
    'mbdtbx_mpc574x/mbdtbx_mpc574x/mscripts'
    'mbdtbx_mpc577x/src'
    'mbdtbx_mpc577x/AMMCLIB_MPC5777C/bam'
    'MPC_Examples/common'
    'MPC_Examples/mpc574x'
    %autosar files
    'mbdtbx_mpc_as/blocks'
    'mbdtbx_mpc_as/mscripts'
    'MPC_Examples/autosar'
    };

paths = {
    'mbdtbx_mpc'
    'mbdtbx_mpc574x'
    'mbdtbx_mpc574x/mbdtbx_mpc574x'
    'mbdtbx_mpc577x'
    'MPC_Platform_SDK/platform/devices'
    'MPC_Examples'
    'mbdtbx_mpc_as'
    ''
    };

addlPaths = [expandPaths; paths];

mpc_root = mbd_find_mpc_root;

for p = addlPaths'
    newpath = fullfile(mpc_root, p{1});
    assert(exist(newpath, 'dir')==7);
    addpath(newpath);
end


rehash toolboxcache;

sl_refresh_customizations();
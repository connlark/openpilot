pushd release;

PUSH='master-ci' EXTRA_FILES="__SCRIPTS__/disable_logging.sh __SCRIPTS__/enable_logging.sh __SCRIPTS__/restartOP.sh"./build_devel.sh
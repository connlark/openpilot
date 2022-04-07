sed -i '' 's/, DaemonProcess/ #, DaemonProcess/g' selfdrive/manager/process_config.py
sed -i '' 's/  DaemonProcess/#  DaemonProcess' selfdrive/manager/process_config.py
sed -i '' 's/  NativeProcess/#  NativeProcess/g' selfdrive/manager/process_config.py
sed -i '' 's/  PythonProcess/#  PythonProcess/g' selfdrive/manager/process_config.py
echo "================ init container ======================"

unset proxy http_proxy https_proxy

cd /workspace
python webui.py --nowebui
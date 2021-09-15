kill `lsof -ti:8889`
echo "source ~/py_env/bin/jupyter_remote.sh" | ssh kunal@192.168.0.22 &
ssh -N -f -L localhost:8889:localhost:8889 kunal@192.168.0.22

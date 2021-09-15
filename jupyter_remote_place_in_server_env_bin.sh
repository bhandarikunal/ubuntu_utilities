kill $(lsof -t -i:8888)
kill $(lsof -t -i:8889)
kill $(lsof -t -i:8890)
pkill jupyter
source ~/py_env/bin/activate
jupyter-lab --port 8889 --no-browser

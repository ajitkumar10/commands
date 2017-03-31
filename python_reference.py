// get file size
os.path.getsize('<filepath>')
os.stat('<filepath>').st_size

// create path to file
dir='/opt/run'
file_name='sample.txt'
file_path=os.path.join(dir,file_name)

// check if file exists
os.path.exists('<file_path>')

// get current time
time.ctime()

// convert long (elapsed since 19700101) to time
datetime.datetime
.fromtimestamp(1474380828)
.strftime('%Y-%m-%d %H:%M:%S %p')
// where 1474380828 is an example long value

// full path of script currently running
os.path.realpath(__file__)
// Or
sys.argv[0]
// Or
os.path.basename(__file__)

// delete and/or reload an imported module
import sys
from imp import reload
import django
// reload needs module object and not string
reload(sys.modules['django'])
del django
// btw - django itself uses reload to mitigate need for restarting server

// how to use virtual env
source {venv_path}/bin/activate
// this includes the modules in venv_path e.g.
import sys
sys.path
// now use python like before e.g. #!/usr/bin/python
{call scripts here for this venv}
// when done
deactivate 


To install a package: pip install MyProject
To update a package pip install --upgrade MyProject
To fix a version of a package pip install MyProject==1.0
To install the package manager:

curl -O http://python-distribute.org/distribute_setup.py
python distribute_setup.py
easy_install pip
References:
http://guide.python-distribute.org/
http://pypi.python.org/pypi/distribute
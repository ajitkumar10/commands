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


import requests
from flask import Flask, render_template
from datetime import date

app = Flask(__name__)

@app.route('/')
def holiday(name=None):
	try:
		today = date.today()		

		r = requests.get("https://sec.ipty.de/feiertag/api.php?do=isFeiertag&datum=%02d.%02d.%d&loc=NW" % (today.day, today.month, today.year) )
		holiday = int(r.text)	
		return render_template('index.html', holiday=holiday)
	except Exception as e:
		print "an error occured: %s" % e

# finally, our entrypoint...
if __name__ == "__main__":
	app.run(host="0.0.0.0", debug=False)



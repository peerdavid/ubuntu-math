# ubuntu-math
Ubuntu docker base-image with Python 3 and Octave for different math tasks.

# Create your own image based on ubuntu-math
Use the following base image: <br />
FROM ubuntu-math
<br /><br />
Create a local file called requirements.txt and add all pip packages that should be installed in your image.
<br /><br />
Install additional octave packages (https://octave.sourceforge.io/packages.php) in your own image via:
<br /><br />
RUN apt-get install -y octave-control
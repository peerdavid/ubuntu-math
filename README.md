# ubuntu-math
Ubuntu docker base-image with Python 3 and Octave for different math tasks.

# Create your own image based on ubuntu-math
Use the following base image:

```
FROM ubuntu-math
```

<br />

Create a local file called requirements.txt and add all pip packages that should be installed in your own image. Example:

```
oct2py==4.0.5
numpy==1.12.1
scipy==0.19.0
```

<br />

Install additional octave packages (https://octave.sourceforge.io/packages.php) in your own image via:
```
RUN apt-get install -y octave-control
```

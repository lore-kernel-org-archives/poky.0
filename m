Subject: cant get the python interpreter installed in recipe-sysroot
To: poky@lists.yoctoproject.org
From: "Daniel Squires" <dan@engineeredarts.co.uk>
X-Originating-Location: Letchworth Garden City, England, GB (86.16.192.236)
X-Originating-Platform: Linux Chrome 93
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 29 Sep 2021 07:24:38 -0700
Message-ID: <gAzG.1632925478477700955.M3AT@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="SNUYDogfcvr8Q3CKu7zE"

--SNUYDogfcvr8Q3CKu7zE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm trying to run some unit tests on some of our internal packages using ct=
est which in turn executes some doctest based binaries, these in turn try t=
o start a python based fixture. So part of the problem is ctest executes na=
tively and then tries to exec cross compiled binaries. This is relatively e=
asy to resolve with qemu-user and the relevant bin_fmt strings. With this a=
ll the C only tests are passing. However when it comes to fire up the pytho=
n interpreter it by default tries to run my hosts interpreter.=C2=A0 It's p=
retty trivial to adapt the test suite to detect its within yocto and run th=
e python pointed to by PYTHON, however this is still problematic, some of t=
he modules such as zmq are trying to use c based libraries. I think i need =
to run a python with qemu within the recipe-sysroot however I cannot figure=
 out how to get the python interpreter installed here. With *DEPENDS +=3D "=
python3"* it is still missing. I have seen some of the docs re running test=
s within the final built image however I would like to be able to run the t=
ests on specific recipes without having to build the entire image first hen=
ce I have added a class that implements a *run_test* task=C2=A0 such that i=
t can be used like *bitbake -c run_test <recipe>*.
How can I "install" python3 within the recipe-sysroot ?

--SNUYDogfcvr8Q3CKu7zE
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm trying to run some unit tests on some of our internal packages using ct=
est which in turn executes some doctest based binaries, these in turn try t=
o start a python based fixture. So part of the problem is ctest executes na=
tively and then tries to exec cross compiled binaries. This is relatively e=
asy to resolve with qemu-user and the relevant bin_fmt strings. With this a=
ll the C only tests are passing. However when it comes to fire up the pytho=
n interpreter it by default tries to run my hosts interpreter.&nbsp; It's p=
retty trivial to adapt the test suite to detect its within yocto and run th=
e python pointed to by PYTHON, however this is still problematic, some of t=
he modules such as zmq are trying to use c based libraries. I think i need =
to run a python with qemu within the recipe-sysroot however I cannot figure=
 out how to get the python interpreter installed here. With&nbsp; <strong>D=
EPENDS +=3D "python3"</strong> it is still missing. I have seen some of the=
 docs re running tests within the final built image however I would like to=
 be able to run the tests on specific recipes without having to build the e=
ntire image first hence I have added a class that implements a <strong>run_=
test</strong> task&nbsp; such that it can be used like <strong>bitbake -c r=
un_test &lt;recipe&gt;</strong>.<br />How can I "install" python3 within th=
e recipe-sysroot ?

--SNUYDogfcvr8Q3CKu7zE--

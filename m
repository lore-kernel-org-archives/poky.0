Return-Path: <sparsh150847@yahoo.com>
Received: from nm16-vm1.bullet.mail.sg3.yahoo.com
	(nm16-vm1.bullet.mail.sg3.yahoo.com [106.10.149.64])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 332AEE004A1
	for <poky@yoctoproject.org>; Tue, 24 Jul 2012 05:53:28 -0700 (PDT)
Received: from [106.10.166.115] by nm16.bullet.mail.sg3.yahoo.com with NNFMP;
	24 Jul 2012 12:53:27 -0000
Received: from [106.10.151.123] by tm4.bullet.mail.sg3.yahoo.com with NNFMP;
	24 Jul 2012 12:53:27 -0000
Received: from [127.0.0.1] by omp1005.mail.sg3.yahoo.com with NNFMP;
	24 Jul 2012 12:53:27 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 255867.29497.bm@omp1005.mail.sg3.yahoo.com
Received: (qmail 14900 invoked by uid 60001); 24 Jul 2012 12:53:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1343134407; bh=OYWVzAG04So/0oBivHeGM3h1J/E87HiHn8ANAsHoY14=;
	h=X-YMail-OSG:Received:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=swtSW26WkZ0pG/H9QjBMbItG+yXUk/RfH7E8P5Ge2J3ptvxenrNKPcQey/ToVHeBzmil+2wVUe7D/s/jAXIOr1jqAOhSqB8gEPMslDDE00Lff/ghorI8flT6PboGo5Ul4Sk2vswc4JdP9zWxI/GjOg05sKy1kHNoeQG8gHm7ygI=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=X-YMail-OSG:Received:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=PI2hgpa74Wa57wK54pvk1A8zubqlo/+14BLOxj0RhzJiAFONDVeBD9F7tZIJlveKu3/isfg2W7a040WUU/NSP9PX03NUmsFpKQ1RoAlft9PAQw7h21ncnYFKfRJIPC54D7pwZanSO7f1t9qeaUPphwTL6U2eHOozKHs/Z9DG5MU=;
X-YMail-OSG: OxqNnjsVM1mWD7OMpVvmPy4lvCtBAZfz9xk3E5i_2gkckqK
	AUA48zYQEjDxk1m0vQfTGGCP70l05ykC9R6yxc3Ic3yih0he7Ua08vO19NlJ
	PVFFqJFGeIs7O3clsGcEUNFmA2prc6pXbTc6WYhlHF6P6YqMW.9oLn9dVa4H
	sJMK_3GfI6dXP.oAldu32MVbcbXgp8UY_6th11icGWqfkNc2325Mc2hfT.KE
	J71tJbLaQHd_sQ7cA6zXvYtKAbd9qcybIH9XpGGpaSnsAZ.tzRD3HCTt8K0X
	c6KBegFbI.pop.9Z93mOGqy1T3tddCo.JFXMGXdJm7QzP90zxI7cIpGLVNoB
	TNWEynzJ3SLRLynpRqodi.xniHarXoFtw.rOatW4.mU4amSkPkzGSdd4C79y
	GQ509UC8zUgOkSblLtwvbf6.Vi6O3AKMysiLaVBYY.XX1CFECJH1QXtRXECm
	8v5Cf29yOTJ36v0T26F5aoSXqjMStCBn6PCn2qpCneoqpI8_nb_4cHocQj.z
	pxlZBNRk2
Received: from [115.111.25.162] by web194906.mail.sg3.yahoo.com via HTTP;
	Tue, 24 Jul 2012 20:53:26 SGT
X-Mailer: YahooMailWebService/0.8.120.356233
Message-ID: <1343134406.13794.YahooMailNeo@web194906.mail.sg3.yahoo.com>
Date: Tue, 24 Jul 2012 20:53:26 +0800 (SGT)
From: Sparsh Wid hope <sparsh150847@yahoo.com>
To: poky <poky@yoctoproject.org>
MIME-Version: 1.0
Subject: xbmc compilation failed because of python library issue.
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Sparsh Wid hope <sparsh150847@yahoo.com>
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 24 Jul 2012 12:53:30 -0000
Content-Type: multipart/alternative;
	boundary="-1448603486-1727389009-1343134406=:13794"

---1448603486-1727389009-1343134406=:13794
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Hi All,=0A=0AI'm compiling xbmc on linux-10.10=0A=0AInformation regarding m=
y machine is:=0AIt was created by xbmc configure 11.0, which was=0Agenerate=
d by GNU Autoconf 2.65. =A0Invocation command line was=0A=0A=A0 $ /home/sct=
/xbmc_final/test/xbmc_11jul/poky_xbmc_09Mar2012/build/tmp/work/atom-poky-li=
nux/xbmc-11.1-r0/xbmc/configure --build=3Di686-linux --host=3Di586-poky-lin=
ux --target=3Di586-poky-linux --prefix=3D/usr --exec_prefix=3D/usr --bindir=
=3D/usr/bin --sbindir=3D/usr/sbin --libexecdir=3D/usr/libexec --datadir=3D/=
usr/share --sysconfdir=3D/etc --sharedstatedir=3D/com --localstatedir=3D/va=
r --libdir=3D/usr/lib --includedir=3D/usr/include --oldincludedir=3D/usr/in=
clude --infodir=3D/usr/share/info --mandir=3D/usr/share/man --with-libtool-=
sysroot=3D/home/sct/xbmc_final/test/xbmc_11jul/poky_xbmc_09Mar2012/build/tm=
p/sysroots/fishriver --enable-nls --enable-optimizations --disable-debug --=
disable-vaapi --disable-external-ffmpeg --disable-dvdcss=0A=0A## --------- =
##=0A## Platform. ##=0A## --------- ##=0A=0Ahostname =3D sct-Vostro-220s-Se=
ries=0Auname -m =3D i686=0Auname -r =3D 2.6.35-31-generic-pae=0Auname -s =
=3D Linux=0Auname -v =3D #63-Ubuntu SMP Mon Nov 28 20:48:50 UTC 2011=0A=0A=
=0Atarget platform for which I'm compiling is:=A0Target: i586-poky-linux=0A=
=0AIt gives me some error related to python library while do_configure(). E=
rror log is given below:=0A=0Achecking for python... /home/sct/xbmc_final/t=
est/xbmc_11jul/poky_xbmc_09Mar2012/build/tmp/sysroots/i686-linux/usr/bin/py=
thon=0A| checking for a version of Python >=3D '2.1.0'... yes=0A| checking =
for a version of Python >=3D 2.4... yes=0A| checking for the distutils Pyth=
on package... yes=0A| checking for Python include path... Traceback (most r=
ecent call last):=0A| =A0 File "<string>", line 1, in <module>=0A| =A0 File=
 "/home/sct/xbmc_final/test/xbmc_11jul/poky_xbmc_09Mar2012/build/tmp/sysroo=
ts/i686-linux/usr/lib/python2.6/distutils/sysconfig.py", line 22, in <modul=
e>=0A| =A0 =A0 PREFIX =3D os.path.normpath(sys.prefix).replace( os.getenv("=
BUILD_SYS"), os.getenv("HOST_SYS") )=0A| TypeError: expected a character bu=
ffer object=0A|=A0=0A| checking for Python library path... Traceback (most =
recent call last):=0A| =A0 File "<stdin>", line 4, in <module>=0A| =A0 File=
 "/home/sct/xbmc_final/test/xbmc_11jul/poky_xbmc_09Mar2012/build/tmp/sysroo=
ts/i686-linux/usr/lib/python2.6/distutils/sysconfig.py", line 22, in <modul=
e>=0A| =A0 =A0 PREFIX =3D os.path.normpath(sys.prefix).replace( os.getenv("=
BUILD_SYS"), os.getenv("HOST_SYS") )=0A| TypeError: expected a character bu=
ffer object=0A| Traceback (most recent call last):=0A| =A0 File "<stdin>", =
line 3, in <module>=0A| =A0 File "/home/sct/xbmc_final/test/xbmc_11jul/poky=
_xbmc_09Mar2012/build/tmp/sysroots/i686-linux/usr/lib/python2.6/distutils/s=
ysconfig.py", line 22, in <module>=0A| =A0 =A0 PREFIX =3D os.path.normpath(=
sys.prefix).replace( os.getenv("BUILD_SYS"), os.getenv("HOST_SYS") )=0A| Ty=
peError: expected a character buffer object=0A| Traceback (most recent call=
 last):=0A| =A0 File "<string>", line 1, in <module>=0A| =A0 File "/home/sc=
t/xbmc_final/test/xbmc_11jul/poky_xbmc_09Mar2012/build/tmp/sysroots/i686-li=
nux/usr/lib/python2.6/distutils/sysconfig.py", line 22, in <module>=0A| =A0=
 =A0 PREFIX =3D os.path.normpath(sys.prefix).replace( os.getenv("BUILD_SYS"=
), os.getenv("HOST_SYS") )=0A| TypeError: expected a character buffer objec=
t=0A| Traceback (most recent call last):=0A| =A0 File "<string>", line 1, i=
n <module>=0A| =A0 File "/home/sct/xbmc_final/test/xbmc_11jul/poky_xbmc_09M=
ar2012/build/tmp/sysroots/i686-linux/usr/lib/python2.6/distutils/sysconfig.=
py", line 22, in <module>=0A| =A0 =A0 PREFIX =3D os.path.normpath(sys.prefi=
x).replace( os.getenv("BUILD_SYS"), os.getenv("HOST_SYS") )=0A| TypeError: =
expected a character buffer object=0A| Traceback (most recent call last):=
=0A| =A0 File "<string>", line 1, in <module>=0A| =A0 File "/home/sct/xbmc_=
final/test/xbmc_11jul/poky_xbmc_09Mar2012/build/tmp/sysroots/i686-linux/usr=
/lib/python2.6/distutils/sysconfig.py", line 22, in <module>=0A| =A0 =A0 PR=
EFIX =3D os.path.normpath(sys.prefix).replace( os.getenv("BUILD_SYS"), os.g=
etenv("HOST_SYS") )=0A| TypeError: expected a character buffer object=0A| -=
L -lpython2.6=0A| checking for Python site-packages path... Traceback (most=
 recent call last):=0A| =A0 File "<string>", line 1, in <module>=0A| =A0 Fi=
le "/home/sct/xbmc_final/test/xbmc_11jul/poky_xbmc_09Mar2012/build/tmp/sysr=
oots/i686-linux/usr/lib/python2.6/distutils/sysconfig.py", line 22, in <mod=
ule>=0A| =A0 =A0 PREFIX =3D os.path.normpath(sys.prefix).replace( os.getenv=
("BUILD_SYS"), os.getenv("HOST_SYS") )=0A| TypeError: expected a character =
buffer object=0A|=A0=0A| checking python extra libraries... Traceback (most=
 recent call last):=0A| =A0 File "<string>", line 1, in <module>=0A| =A0 Fi=
le "/home/sct/xbmc_final/test/xbmc_11jul/poky_xbmc_09Mar2012/build/tmp/sysr=
oots/i686-linux/usr/lib/python2.6/distutils/sysconfig.py", line 22, in <mod=
ule>=0A| =A0 =A0 PREFIX =3D os.path.normpath(sys.prefix).replace( os.getenv=
("BUILD_SYS"), os.getenv("HOST_SYS") )=0A| TypeError: expected a character =
buffer object=0A|=A0=0A| checking python extra linking flags... Traceback (=
most recent call last):=0A| =A0 File "<string>", line 1, in <module>=0A| =
=A0 File "/home/sct/xbmc_final/test/xbmc_11jul/poky_xbmc_09Mar2012/build/tm=
p/sysroots/i686-linux/usr/lib/python2.6/distutils/sysconfig.py", line 22, i=
n <module>=0A| =A0 =A0 PREFIX =3D os.path.normpath(sys.prefix).replace( os.=
getenv("BUILD_SYS"), os.getenv("HOST_SYS") )=0A| TypeError: expected a char=
acter buffer object=0A|=A0=0A| checking consistency of all components of py=
thon development environment... no=0A| configure: error: in `/home/sct/xbmc=
_final/test/xbmc_11jul/poky_xbmc_09Mar2012/build/tmp/work/atom-poky-linux/x=
bmc-11.1-r0/xbmc':=0A| configure: error:=0A| =A0 Could not link test progra=
m to Python. Maybe the main Python library has been=0A| =A0 installed in so=
me non-standard library path. If so, pass it to configure,=0A| =A0 via the =
LDFLAGS environment variable.=0A| =A0 Example: ./configure LDFLAGS=3D"-L/us=
r/non-standard-path/python/lib"=0A| =A0 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=0A| =A0 =A0ERROR!=0A| =A0 =A0=
You probably have to install the development version of the Python package=
=0A| =A0 =A0for your distribution. =A0The exact name of this package varies=
 among them.=0A| =A0 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=0A|=A0=0A| See `config.log' for more details.=0A| =
FATAL: oe_runconf failed=0A| ERROR: Function 'do_configure' failed (see /ho=
me/sct/xbmc_final/test/xbmc_11jul/poky_xbmc_09Mar2012/build/tmp/work/atom-p=
oky-linux/xbmc-11.1-r0/temp/log.do_configure.30313 for further information)=
=0ANOTE: package xbmc-11.1-r0: task do_configure: Failed=0AERROR: Task 693 =
(/home/sct/xbmc_final/test/xbmc_11jul/poky_xbmc_09Mar2012/meta-sct/recipes-=
sct/xbmc/xbmc_11.1.bb, do_configure) failed with exit code '1'=0A=0APlease =
help me to resolve this issue.=0A=0AThanks in advance=0A

---1448603486-1727389009-1343134406=:13794
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:ti=
mes new roman, new york, times, serif;font-size:12pt"><div style=3D"font-fa=
mily: 'times new roman', 'new york', times, serif; font-size: 12pt; ">Hi Al=
l,</div><div style=3D"font-family: 'times new roman', 'new york', times, se=
rif; font-size: 12pt; "><br></div><div style=3D"font-family: 'times new rom=
an', 'new york', times, serif; font-size: 12pt; ">I'm compiling xbmc on lin=
ux-10.10</div><div style=3D"font-family: 'times new roman', 'new york', tim=
es, serif; font-size: 12pt; "><br></div><div style=3D"font-family: 'times n=
ew roman', 'new york', times, serif; font-size: 12pt; ">Information regardi=
ng my machine is:</div><div><div><font face=3D"'times new roman', 'new york=
', times, serif">It was created by xbmc configure 11.0, which was</font></d=
iv><div><font face=3D"'times new roman', 'new york', times, serif">generate=
d by GNU Autoconf 2.65. &nbsp;Invocation command line was</font></div><div>=
<font
 face=3D"'times new roman', 'new york', times, serif"><br></font></div><div=
><font face=3D"'times new roman', 'new york', times, serif">&nbsp; $ /home/=
sct/xbmc_final/test/xbmc_11jul/poky_xbmc_09Mar2012/build/tmp/work/atom-poky=
-linux/xbmc-11.1-r0/xbmc/configure --build=3Di686-linux --host=3Di586-poky-=
linux --target=3Di586-poky-linux --prefix=3D/usr --exec_prefix=3D/usr --bin=
dir=3D/usr/bin --sbindir=3D/usr/sbin --libexecdir=3D/usr/libexec --datadir=
=3D/usr/share --sysconfdir=3D/etc --sharedstatedir=3D/com --localstatedir=
=3D/var --libdir=3D/usr/lib --includedir=3D/usr/include --oldincludedir=3D/=
usr/include --infodir=3D/usr/share/info --mandir=3D/usr/share/man --with-li=
btool-sysroot=3D/home/sct/xbmc_final/test/xbmc_11jul/poky_xbmc_09Mar2012/bu=
ild/tmp/sysroots/fishriver --enable-nls --enable-optimizations --disable-de=
bug --disable-vaapi --disable-external-ffmpeg --disable-dvdcss</font></div>=
<div><font face=3D"'times new roman', 'new york', times, serif"><br></font>=
</div><div><font face=3D"'times new
 roman', 'new york', times, serif">## --------- ##</font></div><div><font f=
ace=3D"'times new roman', 'new york', times, serif">## Platform. ##</font><=
/div><div><font face=3D"'times new roman', 'new york', times, serif">## ---=
------ ##</font></div><div><font face=3D"'times new roman', 'new york', tim=
es, serif"><br></font></div><div><font face=3D"'times new roman', 'new york=
', times, serif">hostname =3D sct-Vostro-220s-Series</font></div><div><font=
 face=3D"'times new roman', 'new york', times, serif">uname -m =3D i686</fo=
nt></div><div><font face=3D"'times new roman', 'new york', times, serif">un=
ame -r =3D 2.6.35-31-generic-pae</font></div><div><font face=3D"'times new =
roman', 'new york', times, serif">uname -s =3D Linux</font></div><div><font=
 face=3D"'times new roman', 'new york', times, serif">uname -v =3D #63-Ubun=
tu SMP Mon Nov 28 20:48:50 UTC 2011</font></div><div style=3D"font-family: =
'times new roman', 'new york', times, serif; font-size: 12pt; "><br></div><=
div
 style=3D"font-family: 'times new roman', 'new york', times, serif; font-si=
ze: 12pt; "><br></div><div style=3D"font-family: 'times new roman', 'new yo=
rk', times, serif; font-size: 12pt; ">target platform for which I'm compili=
ng is:&nbsp;Target: i586-poky-linux</div><div style=3D"font-family: 'times =
new roman', 'new york', times, serif; font-size: 12pt; "><br></div><div sty=
le=3D"font-family: 'times new roman', 'new york', times, serif; font-size: =
12pt; ">It gives me some error related to python library while do_configure=
(). Error log is given below:</div><div style=3D"font-family: 'times new ro=
man', 'new york', times, serif; font-size: 12pt; "><br></div><div><div><fon=
t face=3D"'times new roman', 'new york', times, serif">checking for python.=
.. /home/sct/xbmc_final/test/xbmc_11jul/poky_xbmc_09Mar2012/build/tmp/sysro=
ots/i686-linux/usr/bin/python</font></div><div><font face=3D"'times new rom=
an', 'new york', times, serif">| checking for a version of Python &gt;=3D '=
2.1.0'...
 yes</font></div><div><font face=3D"'times new roman', 'new york', times, s=
erif">| checking for a version of Python &gt;=3D 2.4... yes</font></div><di=
v><font face=3D"'times new roman', 'new york', times, serif">| checking for=
 the distutils Python package... yes</font></div><div><font face=3D"'times =
new roman', 'new york', times, serif">| checking for Python include path...=
 Traceback (most recent call last):</font></div><div><font face=3D"'times n=
ew roman', 'new york', times, serif">| &nbsp; File "&lt;string&gt;", line 1=
, in &lt;module&gt;</font></div><div><font face=3D"'times new roman', 'new =
york', times, serif">| &nbsp; File "/home/sct/xbmc_final/test/xbmc_11jul/po=
ky_xbmc_09Mar2012/build/tmp/sysroots/i686-linux/usr/lib/python2.6/distutils=
/sysconfig.py", line 22, in &lt;module&gt;</font></div><div><font face=3D"'=
times new roman', 'new york', times, serif">| &nbsp; &nbsp; PREFIX =3D os.p=
ath.normpath(sys.prefix).replace( os.getenv("BUILD_SYS"), os.getenv("HOST_S=
YS")
 )</font></div><div><font face=3D"'times new roman', 'new york', times, ser=
if">| TypeError: expected a character buffer object</font></div><div><font =
face=3D"'times new roman', 'new york', times, serif">|&nbsp;</font></div><d=
iv><font face=3D"'times new roman', 'new york', times, serif">| checking fo=
r Python library path... Traceback (most recent call last):</font></div><di=
v><font face=3D"'times new roman', 'new york', times, serif">| &nbsp; File =
"&lt;stdin&gt;", line 4, in &lt;module&gt;</font></div><div><font face=3D"'=
times new roman', 'new york', times, serif">| &nbsp; File "/home/sct/xbmc_f=
inal/test/xbmc_11jul/poky_xbmc_09Mar2012/build/tmp/sysroots/i686-linux/usr/=
lib/python2.6/distutils/sysconfig.py", line 22, in &lt;module&gt;</font></d=
iv><div><font face=3D"'times new roman', 'new york', times, serif">| &nbsp;=
 &nbsp; PREFIX =3D os.path.normpath(sys.prefix).replace( os.getenv("BUILD_S=
YS"), os.getenv("HOST_SYS") )</font></div><div><font face=3D"'times new rom=
an', 'new
 york', times, serif">| TypeError: expected a character buffer object</font=
></div><div><font face=3D"'times new roman', 'new york', times, serif">| Tr=
aceback (most recent call last):</font></div><div><font face=3D"'times new =
roman', 'new york', times, serif">| &nbsp; File "&lt;stdin&gt;", line 3, in=
 &lt;module&gt;</font></div><div><font face=3D"'times new roman', 'new york=
', times, serif">| &nbsp; File "/home/sct/xbmc_final/test/xbmc_11jul/poky_x=
bmc_09Mar2012/build/tmp/sysroots/i686-linux/usr/lib/python2.6/distutils/sys=
config.py", line 22, in &lt;module&gt;</font></div><div><font face=3D"'time=
s new roman', 'new york', times, serif">| &nbsp; &nbsp; PREFIX =3D os.path.=
normpath(sys.prefix).replace( os.getenv("BUILD_SYS"), os.getenv("HOST_SYS")=
 )</font></div><div><font face=3D"'times new roman', 'new york', times, ser=
if">| TypeError: expected a character buffer object</font></div><div><font =
face=3D"'times new roman', 'new york', times, serif">| Traceback (most rece=
nt call
 last):</font></div><div><font face=3D"'times new roman', 'new york', times=
, serif">| &nbsp; File "&lt;string&gt;", line 1, in &lt;module&gt;</font></=
div><div><font face=3D"'times new roman', 'new york', times, serif">| &nbsp=
; File "/home/sct/xbmc_final/test/xbmc_11jul/poky_xbmc_09Mar2012/build/tmp/=
sysroots/i686-linux/usr/lib/python2.6/distutils/sysconfig.py", line 22, in =
&lt;module&gt;</font></div><div><font face=3D"'times new roman', 'new york'=
, times, serif">| &nbsp; &nbsp; PREFIX =3D os.path.normpath(sys.prefix).rep=
lace( os.getenv("BUILD_SYS"), os.getenv("HOST_SYS") )</font></div><div><fon=
t face=3D"'times new roman', 'new york', times, serif">| TypeError: expecte=
d a character buffer object</font></div><div><font face=3D"'times new roman=
', 'new york', times, serif">| Traceback (most recent call last):</font></d=
iv><div><font face=3D"'times new roman', 'new york', times, serif">| &nbsp;=
 File "&lt;string&gt;", line 1, in &lt;module&gt;</font></div><div><font
 face=3D"'times new roman', 'new york', times, serif">| &nbsp; File "/home/=
sct/xbmc_final/test/xbmc_11jul/poky_xbmc_09Mar2012/build/tmp/sysroots/i686-=
linux/usr/lib/python2.6/distutils/sysconfig.py", line 22, in &lt;module&gt;=
</font></div><div><font face=3D"'times new roman', 'new york', times, serif=
">| &nbsp; &nbsp; PREFIX =3D os.path.normpath(sys.prefix).replace( os.geten=
v("BUILD_SYS"), os.getenv("HOST_SYS") )</font></div><div><font face=3D"'tim=
es new roman', 'new york', times, serif">| TypeError: expected a character =
buffer object</font></div><div><font face=3D"'times new roman', 'new york',=
 times, serif">| Traceback (most recent call last):</font></div><div><font =
face=3D"'times new roman', 'new york', times, serif">| &nbsp; File "&lt;str=
ing&gt;", line 1, in &lt;module&gt;</font></div><div><font face=3D"'times n=
ew roman', 'new york', times, serif">| &nbsp; File
 "/home/sct/xbmc_final/test/xbmc_11jul/poky_xbmc_09Mar2012/build/tmp/sysroo=
ts/i686-linux/usr/lib/python2.6/distutils/sysconfig.py", line 22, in &lt;mo=
dule&gt;</font></div><div><font face=3D"'times new roman', 'new york', time=
s, serif">| &nbsp; &nbsp; PREFIX =3D os.path.normpath(sys.prefix).replace( =
os.getenv("BUILD_SYS"), os.getenv("HOST_SYS") )</font></div><div><font face=
=3D"'times new roman', 'new york', times, serif">| TypeError: expected a ch=
aracter buffer object</font></div><div><font face=3D"'times new roman', 'ne=
w york', times, serif">| -L -lpython2.6</font></div><div><font face=3D"'tim=
es new roman', 'new york', times, serif">| checking for Python site-package=
s path... Traceback (most recent call last):</font></div><div><font face=3D=
"'times new roman', 'new york', times, serif">| &nbsp; File "&lt;string&gt;=
", line 1, in &lt;module&gt;</font></div><div><font face=3D"'times new roma=
n', 'new york', times, serif">| &nbsp; File
 "/home/sct/xbmc_final/test/xbmc_11jul/poky_xbmc_09Mar2012/build/tmp/sysroo=
ts/i686-linux/usr/lib/python2.6/distutils/sysconfig.py", line 22, in &lt;mo=
dule&gt;</font></div><div><font face=3D"'times new roman', 'new york', time=
s, serif">| &nbsp; &nbsp; PREFIX =3D os.path.normpath(sys.prefix).replace( =
os.getenv("BUILD_SYS"), os.getenv("HOST_SYS") )</font></div><div><font face=
=3D"'times new roman', 'new york', times, serif">| TypeError: expected a ch=
aracter buffer object</font></div><div><font face=3D"'times new roman', 'ne=
w york', times, serif">|&nbsp;</font></div><div><font face=3D"'times new ro=
man', 'new york', times, serif">| checking python extra libraries... Traceb=
ack (most recent call last):</font></div><div><font face=3D"'times new roma=
n', 'new york', times, serif">| &nbsp; File "&lt;string&gt;", line 1, in &l=
t;module&gt;</font></div><div><font face=3D"'times new roman', 'new york', =
times, serif">| &nbsp; File
 "/home/sct/xbmc_final/test/xbmc_11jul/poky_xbmc_09Mar2012/build/tmp/sysroo=
ts/i686-linux/usr/lib/python2.6/distutils/sysconfig.py", line 22, in &lt;mo=
dule&gt;</font></div><div><font face=3D"'times new roman', 'new york', time=
s, serif">| &nbsp; &nbsp; PREFIX =3D os.path.normpath(sys.prefix).replace( =
os.getenv("BUILD_SYS"), os.getenv("HOST_SYS") )</font></div><div><font face=
=3D"'times new roman', 'new york', times, serif">| TypeError: expected a ch=
aracter buffer object</font></div><div><font face=3D"'times new roman', 'ne=
w york', times, serif">|&nbsp;</font></div><div><font face=3D"'times new ro=
man', 'new york', times, serif">| checking python extra linking flags... Tr=
aceback (most recent call last):</font></div><div><font face=3D"'times new =
roman', 'new york', times, serif">| &nbsp; File "&lt;string&gt;", line 1, i=
n &lt;module&gt;</font></div><div><font face=3D"'times new roman', 'new yor=
k', times, serif">| &nbsp; File
 "/home/sct/xbmc_final/test/xbmc_11jul/poky_xbmc_09Mar2012/build/tmp/sysroo=
ts/i686-linux/usr/lib/python2.6/distutils/sysconfig.py", line 22, in &lt;mo=
dule&gt;</font></div><div><font face=3D"'times new roman', 'new york', time=
s, serif">| &nbsp; &nbsp; PREFIX =3D os.path.normpath(sys.prefix).replace( =
os.getenv("BUILD_SYS"), os.getenv("HOST_SYS") )</font></div><div><font face=
=3D"'times new roman', 'new york', times, serif">| TypeError: expected a ch=
aracter buffer object</font></div><div><font face=3D"'times new roman', 'ne=
w york', times, serif">|&nbsp;</font></div><div><font face=3D"'times new ro=
man', 'new york', times, serif">| checking consistency of all components of=
 python development environment... no</font></div><div><font face=3D"'times=
 new roman', 'new york', times, serif">| configure: error: in `/home/sct/xb=
mc_final/test/xbmc_11jul/poky_xbmc_09Mar2012/build/tmp/work/atom-poky-linux=
/xbmc-11.1-r0/xbmc':</font></div><div><font face=3D"'times new roman', 'new=
 york',
 times, serif">| configure: error:</font></div><div><font face=3D"'times ne=
w roman', 'new york', times, serif">| &nbsp; Could not link test program to=
 Python. Maybe the main Python library has been</font></div><div><font face=
=3D"'times new roman', 'new york', times, serif">| &nbsp; installed in some=
 non-standard library path. If so, pass it to configure,</font></div><div><=
font face=3D"'times new roman', 'new york', times, serif">| &nbsp; via the =
LDFLAGS environment variable.</font></div><div><font face=3D"'times new rom=
an', 'new york', times, serif">| &nbsp; Example: ./configure LDFLAGS=3D"-L/=
usr/non-standard-path/python/lib"</font></div><div><font face=3D"'times new=
 roman', 'new york', times, serif">| &nbsp; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</font></div><div><font fac=
e=3D"'times new roman', 'new york', times, serif">| &nbsp; &nbsp;ERROR!</fo=
nt></div><div><font face=3D"'times new roman', 'new york', times, serif">| =
&nbsp;
 &nbsp;You probably have to install the development version of the Python p=
ackage</font></div><div><font face=3D"'times new roman', 'new york', times,=
 serif">| &nbsp; &nbsp;for your distribution. &nbsp;The exact name of this =
package varies among them.</font></div><div><font face=3D"'times new roman'=
, 'new york', times, serif">| &nbsp; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</font></div><div><font face=3D"'=
times new roman', 'new york', times, serif">|&nbsp;</font></div><div><font =
face=3D"'times new roman', 'new york', times, serif">| See `config.log' for=
 more details.</font></div><div><font face=3D"'times new roman', 'new york'=
, times, serif">| FATAL: oe_runconf failed</font></div><div><font face=3D"'=
times new roman', 'new york', times, serif">| ERROR: Function 'do_configure=
' failed (see /home/sct/xbmc_final/test/xbmc_11jul/poky_xbmc_09Mar2012/buil=
d/tmp/work/atom-poky-linux/xbmc-11.1-r0/temp/log.do_configure.30313 for fur=
ther
 information)</font></div><div><font face=3D"'times new roman', 'new york',=
 times, serif">NOTE: package xbmc-11.1-r0: task do_configure: Failed</font>=
</div><div><font face=3D"'times new roman', 'new york', times, serif">ERROR=
: Task 693 (/home/sct/xbmc_final/test/xbmc_11jul/poky_xbmc_09Mar2012/meta-s=
ct/recipes-sct/xbmc/xbmc_11.1.bb, do_configure) failed with exit code '1'</=
font></div><div><font face=3D"'times new roman', 'new york', times, serif">=
<br></font></div><div><font face=3D"'times new roman', 'new york', times, s=
erif">Please help me to resolve this issue.</font></div><div><font face=3D"=
'times new roman', 'new york', times, serif"><br></font></div><div><font fa=
ce=3D"'times new roman', 'new york', times, serif">Thanks in advance</font>=
</div><div style=3D"font-family: 'times new roman', 'new york', times, seri=
f; font-size: 12pt; "><br></div></div></div></div></body></html>

---1448603486-1727389009-1343134406=:13794--

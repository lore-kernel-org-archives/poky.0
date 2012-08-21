Return-Path: <sparsh150847@yahoo.com>
Received: from nm26-vm2.bullet.mail.sg3.yahoo.com
	(nm26-vm2.bullet.mail.sg3.yahoo.com [106.10.151.113])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 8E550E00346
	for <poky@yoctoproject.org>; Mon, 20 Aug 2012 23:49:03 -0700 (PDT)
Received: from [106.10.166.117] by nm26.bullet.mail.sg3.yahoo.com with NNFMP;
	21 Aug 2012 06:49:01 -0000
Received: from [106.10.151.239] by tm6.bullet.mail.sg3.yahoo.com with NNFMP;
	21 Aug 2012 06:49:01 -0000
Received: from [127.0.0.1] by omp1023.mail.sg3.yahoo.com with NNFMP;
	21 Aug 2012 06:49:01 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 631049.46820.bm@omp1023.mail.sg3.yahoo.com
Received: (qmail 34678 invoked by uid 60001); 21 Aug 2012 06:49:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1345531741; bh=fQu2IyAewQGhl23Ho64jvW+6IPyXbLYgAxIdMDa1Ua4=;
	h=X-YMail-OSG:Received:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=olVVD7aegc+wZmAMhfxrpLBvYOfQhSc763zotwJiLaqlBDKJxYVzCUIOatUtoMaksGJiJhLXyo54lTnSn3DxftcDOvcuZjtkO3wM9vV7WLgNLxI253Wwt1Yspk4lOePbYzzIfXOS5+Wt6Ts1rLOVKkyI6Tmyl1ISQKcCrn3+MPU=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=X-YMail-OSG:Received:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=F+zCskxpKcIca9vtoo70cXfmS4TEI2ptd2VZLDIv+ayO3NlpMSb5+4QlP4YaF/ALQLeCp2nQyVyKnWDpKE0b/sBgVxKnbAqmJt2oiGkB2Z3RyHbnvlw+vjZZfNQEaV4UXDBR5P9/P8dmz/Q6v2MH6dkcsdMKV9hwy0ug8ENZ4Sg=;
X-YMail-OSG: 7HQ2fX0VM1kynLNk5X8mhoIMSM1tEWzhjhQpPRwKcVlqdJB
	pMj3tD0dJ3n7T28kI10Raw0FXzc9kH64RrE09_2vw7B3yEoHXFzT3hSSf_T3
	yI2eg.ULdENHbJFkJn8jiRBqrWi4UoBUgrOv8AbFldU1OSEnpnIwqtbYWCRV
	PBf45o2lg_hO_2YsyhNih0XSlHFAWxzd.qLjzGyCsVRvpc8.F5NDETN0w92N
	SRjELtxScJ8e06EsZRljTWsZ2VV.47hmUV8vxu16sGYUi5LIIMz0OWHHOt73
	StqG6.IOTz7Ywz3Zuwulv1Yo3wsk7OUo1mgda.trOdw9oySGdqVEJeR1kfCz
	IcWZF2dBE8h62OeAHvcfSQHoZ9nzJ14OM0LcLOUHrHEuG0espDwlOEmL2OQA
	Me84JaB3jCZOTkqVP8Suq3KKDOve9IfmtTdGRTR3.jhC69hQuvI9nNrAgdvr
	4cs9.6L_xSNtBACivc5yN5di2_GzatMIbp6Lk69YLVq0o0UtnPRQ1o7KGUKr
	HkbGRK88TdqZOlKH9QZ3CB9Hq_vl7yJnelXSUIE0XgPGPAFZ1vXIsQDsElzf
	cymU2jo0jiUBR7SC1jA--
Received: from [115.111.25.162] by web194601.mail.sg3.yahoo.com via HTTP;
	Tue, 21 Aug 2012 14:49:01 SGT
X-Mailer: YahooMailWebService/0.8.121.416
Message-ID: <1345531741.32941.YahooMailNeo@web194601.mail.sg3.yahoo.com>
Date: Tue, 21 Aug 2012 14:49:01 +0800 (SGT)
From: Sparsh Wid hope <sparsh150847@yahoo.com>
To: poky <poky@yoctoproject.org>
MIME-Version: 1.0
Subject: Python related Error while compiling xbmc-11.1 with poky
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Sparsh Wid hope <sparsh150847@yahoo.com>
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 21 Aug 2012 06:49:04 -0000
Content-Type: multipart/alternative;
	boundary="734958990-1343810909-1345531741=:32941"

--734958990-1343810909-1345531741=:32941
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi All,=0A=0AI'm trying to cross-compile xbmc-11.1 on linux through poky. O=
E Build Configuration is given below:=0ABB_VERSION        =3D "1.11.0"=0AME=
TADATA_BRANCH   =3D "bernard-cur"=0AMETADATA_REVISION =3D "Commit:1f2e1ab"=
=0ATARGET_ARCH       =3D "i586"=0ATARGET_OS         =3D "linux"=0AMACHINE  =
         =3D "fishriver"=0ADISTRO            =3D "poky"=0ADISTRO_VERSION   =
 =3D "1.0"=0ATARGET_FPU        =3D ""=0A=0AWhile do_configure() I got some =
python related error. Error log is given below:=0A=0Achecking for python...=
 /home/sct/my_workspace/poky_xbmc_09Mar2012/build/tmp/sysroots/i686-linux/u=
sr/bin/python=0A| checking for a version of Python >=3D '2.1.0'... yes=0A| =
checking for a version of Python >=3D 2.4... yes=0A| checking for the distu=
tils Python package... yes=0A| checking for Python include path... Tracebac=
k (most recent call last):=0A|   File "<string>", line 1, in <module>=0A|  =
 File =0A"/home/sct/my_workspace/poky_xbmc_09Mar2012/build/tmp/sysroots/i68=
6-linux/usr/lib/python2.6/distutils/sysconfig.py",=0A line 22, in <module>=
=0A|     PREFIX =3D os.path.normpath(sys.prefix).replace( os.getenv("BUILD_=
SYS"), os.getenv("HOST_SYS") )=0A| TypeError: expected a character buffer o=
bject=0A| =0A| checking for Python library path... Traceback (most recent c=
all last):=0A|   File "<stdin>", line 4, in <module>=0A|   File =0A"/home/s=
ct/my_workspace/poky_xbmc_09Mar2012/build/tmp/sysroots/i686-linux/usr/lib/p=
ython2.6/distutils/sysconfig.py",=0A line 22, in <module>=0A|     PREFIX =
=3D os.path.normpath(sys.prefix).replace( os.getenv("BUILD_SYS"), os.getenv=
("HOST_SYS") )=0A| TypeError: expected a character buffer object=0A| Traceb=
ack (most recent call last):=0A|   File "<stdin>", line 3, in <module>=0A| =
  File =0A"/home/sct/my_workspace/poky_xbmc_09Mar2012/build/tmp/sysroots/i6=
86-linux/usr/lib/python2.6/distutils/sysconfig.py",=0A line 22, in <module>=
=0A|     PREFIX =3D os.path.normpath(sys.prefix).replace( os.getenv("BUILD_=
SYS"), os.getenv("HOST_SYS") )=0A| TypeError: expected a character buffer o=
bject=0A| Traceback (most recent call last):=0A|   File "<string>", line 1,=
 in <module>=0A|   File =0A"/home/sct/my_workspace/poky_xbmc_09Mar2012/buil=
d/tmp/sysroots/i686-linux/usr/lib/python2.6/distutils/sysconfig.py",=0A lin=
e 22, in <module>=0A|     PREFIX =3D os.path.normpath(sys.prefix).replace( =
os.getenv("BUILD_SYS"), os.getenv("HOST_SYS") )=0A| TypeError: expected a c=
haracter buffer object=0A| Traceback (most recent call last):=0A|   File "<=
string>", line 1, in <module>=0A|   File =0A"/home/sct/my_workspace/poky_xb=
mc_09Mar2012/build/tmp/sysroots/i686-linux/usr/lib/python2.6/distutils/sysc=
onfig.py",=0A line 22, in <module>=0A|     PREFIX =3D os.path.normpath(sys.=
prefix).replace( os.getenv("BUILD_SYS"), os.getenv("HOST_SYS") )=0A| TypeEr=
ror: expected a character buffer object=0A| Traceback (most recent call las=
t):=0A|   File "<string>", line 1, in <module>=0A|   File =0A"/home/sct/my_=
workspace/poky_xbmc_09Mar2012/build/tmp/sysroots/i686-linux/usr/lib/python2=
.6/distutils/sysconfig.py",=0A line 22, in <module>=0A|     PREFIX =3D os.p=
ath.normpath(sys.prefix).replace( os.getenv("BUILD_SYS"), os.getenv("HOST_S=
YS") )=0A| TypeError: expected a character buffer object=0A| -L -lpython2.6=
=0A| checking for Python site-packages path... Traceback (most recent call =
last):=0A|   File "<string>", line 1, in <module>=0A|   File =0A"/home/sct/=
my_workspace/poky_xbmc_09Mar2012/build/tmp/sysroots/i686-linux/usr/lib/pyth=
on2.6/distutils/sysconfig.py",=0A line 22, in <module>=0A|     PREFIX =3D o=
s.path.normpath(sys.prefix).replace( os.getenv("BUILD_SYS"), os.getenv("HOS=
T_SYS") )=0A| TypeError: expected a character buffer object=0A| =0A| checki=
ng python extra libraries... Traceback (most recent call last):=0A|   File =
"<string>", line 1, in <module>=0A|   File =0A"/home/sct/my_workspace/poky_=
xbmc_09Mar2012/build/tmp/sysroots/i686-linux/usr/lib/python2.6/distutils/sy=
sconfig.py",=0A line 22, in <module>=0A|     PREFIX =3D os.path.normpath(sy=
s.prefix).replace( os.getenv("BUILD_SYS"), os.getenv("HOST_SYS") )=0A| Type=
Error: expected a character buffer object=0A| =0A| checking python extra li=
nking flags... Traceback (most recent call last):=0A|   File "<string>", li=
ne 1, in <module>=0A|   File =0A"/home/sct/my_workspace/poky_xbmc_09Mar2012=
/build/tmp/sysroots/i686-linux/usr/lib/python2.6/distutils/sysconfig.py",=
=0A line 22, in <module>=0A|     PREFIX =3D os.path.normpath(sys.prefix).re=
place( os.getenv("BUILD_SYS"), os.getenv("HOST_SYS") )=0A| TypeError: expec=
ted a character buffer object=0A| =0A| checking consistency of all componen=
ts of python development environment... no=0A| configure: error: in `/home/=
sct/my_workspace/poky_xbmc_09Mar2012/build/tmp/work/atom-poky-linux/xbmc-11=
.1-r0/xbmc':=0A| configure: error:=0A|   Could not link test program to Pyt=
hon. Maybe the main Python library has been=0A|   installed in some non-sta=
ndard library path. If so, pass it to configure,=0A|   via the LDFLAGS envi=
ronment variable.=0A|   Example: ./configure LDFLAGS=3D"-L/usr/non-standard=
-path/python/lib"=0A|   =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=0A|    ERROR!=0A|    You probably have to insta=
ll the development version of the Python package=0A|    for your distributi=
on.  The exact name of this package varies among them.=0A|   =3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=0A| =0A|=
 See `config.log' for more details.=0A| FATAL: oe_runconf failed=0A| ERROR:=
 Function 'do_configure' failed (see =0A/home/sct/my_workspace/poky_xbmc_09=
Mar2012/build/tmp/work/atom-poky-linux/xbmc-11.1-r0/temp/log.do_configure.1=
2512=0A for further information)=0ANOTE: package xbmc-11.1-r0: task do_conf=
igure: Failed=0AERROR: Task 705 =0A(/home/sct/my_workspace/poky_xbmc_09Mar2=
012/meta-sct/recipes-sct/xbmc/xbmc_11.1.bb,=0A do_configure) failed with ex=
it code '1'=0A=0APlease help me to resolve this problem.=0AThanks in advanc=
e 

--734958990-1343810909-1345531741=:32941
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:ti=
mes new roman, new york, times, serif;font-size:12pt"><div>Hi All,<br>=0A<b=
r>=0AI'm trying to cross-compile xbmc-11.1 on linux through poky. OE Build =
Configuration is given below:<br>=0ABB_VERSION        =3D "1.11.0"<br>=0AME=
TADATA_BRANCH   =3D "bernard-cur"<br>=0AMETADATA_REVISION =3D "<a href=3D"h=
ttps://github.com/xbmc/xbmc/commit/1f2e1abbe2726ea6fc83e83b644ce7ee32a54fa2=
" target=3D"_blank">Commit:1f2e1ab</a>"<br>=0ATARGET_ARCH       =3D "i586"<=
br>=0ATARGET_OS         =3D "linux"<br>=0AMACHINE           =3D "fishriver"=
<br>=0ADISTRO            =3D "poky"<br>=0ADISTRO_VERSION    =3D "1.0"<br>=
=0ATARGET_FPU        =3D ""<br>=0A<br>=0AWhile do_configure() I got some py=
thon related error. Error log is given below:<br>=0A<br>=0Achecking for pyt=
hon... /home/sct/my_workspace/poky_xbmc_09Mar2012/build/tmp/sysroots/i686-l=
inux/usr/bin/python<br>=0A| checking for a version of Python &gt;=3D '2.1.0=
'... yes<br>=0A| checking for a version of Python &gt;=3D 2.4... yes<br>=0A=
| checking for the distutils Python package... yes<br>=0A| checking for Pyt=
hon include path... Traceback (most recent call last):<br>=0A|   File "&lt;=
string&gt;", line 1, in &lt;module&gt;<br>=0A|   File =0A"/home/sct/my_work=
space/poky_xbmc_09Mar2012/build/tmp/sysroots/i686-linux/usr/lib/python2.6/d=
istutils/sysconfig.py",=0A line 22, in &lt;module&gt;<br>=0A|     PREFIX =
=3D os.path.normpath(sys.prefix).replace( os.getenv("BUILD_SYS"), os.getenv=
("HOST_SYS") )<br>=0A| TypeError: expected a character buffer object<br>=0A=
| <br>=0A| checking for Python library path... Traceback (most recent call =
last):<br>=0A|   File "&lt;stdin&gt;", line 4, in &lt;module&gt;<br>=0A|   =
File =0A"/home/sct/my_workspace/poky_xbmc_09Mar2012/build/tmp/sysroots/i686=
-linux/usr/lib/python2.6/distutils/sysconfig.py",=0A line 22, in &lt;module=
&gt;<br>=0A|     PREFIX =3D os.path.normpath(sys.prefix).replace( os.getenv=
("BUILD_SYS"), os.getenv("HOST_SYS") )<br>=0A| TypeError: expected a charac=
ter buffer object<br>=0A| Traceback (most recent call last):<br>=0A|   File=
 "&lt;stdin&gt;", line 3, in &lt;module&gt;<br>=0A|   File =0A"/home/sct/my=
_workspace/poky_xbmc_09Mar2012/build/tmp/sysroots/i686-linux/usr/lib/python=
2.6/distutils/sysconfig.py",=0A line 22, in &lt;module&gt;<br>=0A|     PREF=
IX =3D os.path.normpath(sys.prefix).replace( os.getenv("BUILD_SYS"), os.get=
env("HOST_SYS") )<br>=0A| TypeError: expected a character buffer object<br>=
=0A| Traceback (most recent call last):<br>=0A|   File "&lt;string&gt;", li=
ne 1, in &lt;module&gt;<br>=0A|   File =0A"/home/sct/my_workspace/poky_xbmc=
_09Mar2012/build/tmp/sysroots/i686-linux/usr/lib/python2.6/distutils/syscon=
fig.py",=0A line 22, in &lt;module&gt;<br>=0A|     PREFIX =3D os.path.normp=
ath(sys.prefix).replace( os.getenv("BUILD_SYS"), os.getenv("HOST_SYS") )<br=
>=0A| TypeError: expected a character buffer object<br>=0A| Traceback (most=
 recent call last):<br>=0A|   File "&lt;string&gt;", line 1, in &lt;module&=
gt;<br>=0A|   File =0A"/home/sct/my_workspace/poky_xbmc_09Mar2012/build/tmp=
/sysroots/i686-linux/usr/lib/python2.6/distutils/sysconfig.py",=0A line 22,=
 in &lt;module&gt;<br>=0A|     PREFIX =3D os.path.normpath(sys.prefix).repl=
ace( os.getenv("BUILD_SYS"), os.getenv("HOST_SYS") )<br>=0A| TypeError: exp=
ected a character buffer object<br>=0A| Traceback (most recent call last):<=
br>=0A|   File "&lt;string&gt;", line 1, in &lt;module&gt;<br>=0A|   File =
=0A"/home/sct/my_workspace/poky_xbmc_09Mar2012/build/tmp/sysroots/i686-linu=
x/usr/lib/python2.6/distutils/sysconfig.py",=0A line 22, in &lt;module&gt;<=
br>=0A|     PREFIX =3D os.path.normpath(sys.prefix).replace( os.getenv("BUI=
LD_SYS"), os.getenv("HOST_SYS") )<br>=0A| TypeError: expected a character b=
uffer object<br>=0A| -L -lpython2.6<br>=0A| checking for Python site-packag=
es path... Traceback (most recent call last):<br>=0A|   File "&lt;string&gt=
;", line 1, in &lt;module&gt;<br>=0A|   File =0A"/home/sct/my_workspace/pok=
y_xbmc_09Mar2012/build/tmp/sysroots/i686-linux/usr/lib/python2.6/distutils/=
sysconfig.py",=0A line 22, in &lt;module&gt;<br>=0A|     PREFIX =3D os.path=
.normpath(sys.prefix).replace( os.getenv("BUILD_SYS"), os.getenv("HOST_SYS"=
) )<br>=0A| TypeError: expected a character buffer object<br>=0A| <br>=0A| =
checking python extra libraries... Traceback (most recent call last):<br>=
=0A|   File "&lt;string&gt;", line 1, in &lt;module&gt;<br>=0A|   File =0A"=
/home/sct/my_workspace/poky_xbmc_09Mar2012/build/tmp/sysroots/i686-linux/us=
r/lib/python2.6/distutils/sysconfig.py",=0A line 22, in &lt;module&gt;<br>=
=0A|     PREFIX =3D os.path.normpath(sys.prefix).replace( os.getenv("BUILD_=
SYS"), os.getenv("HOST_SYS") )<br>=0A| TypeError: expected a character buff=
er object<br>=0A| <br>=0A| checking python extra linking flags... Traceback=
 (most recent call last):<br>=0A|   File "&lt;string&gt;", line 1, in &lt;m=
odule&gt;<br>=0A|   File =0A"/home/sct/my_workspace/poky_xbmc_09Mar2012/bui=
ld/tmp/sysroots/i686-linux/usr/lib/python2.6/distutils/sysconfig.py",=0A li=
ne 22, in &lt;module&gt;<br>=0A|     PREFIX =3D os.path.normpath(sys.prefix=
).replace( os.getenv("BUILD_SYS"), os.getenv("HOST_SYS") )<br>=0A| TypeErro=
r: expected a character buffer object<br>=0A| <br>=0A| checking consistency=
 of all components of python development environment... no<br>=0A| configur=
e: error: in `/home/sct/my_workspace/poky_xbmc_09Mar2012/build/tmp/work/ato=
m-poky-linux/xbmc-11.1-r0/xbmc':<br>=0A| configure: error:<br>=0A|   Could =
not link test program to Python. Maybe the main Python library has been<br>=
=0A|   installed in some non-standard library path. If so, pass it to confi=
gure,<br>=0A|   via the LDFLAGS environment variable.<br>=0A|   Example: ./=
configure LDFLAGS=3D"-L/usr/non-standard-path/python/lib"<br>=0A|   =3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br=
>=0A|    ERROR!<br>=0A|    You probably have to install the development ver=
sion of the Python package<br>=0A|    for your distribution.  The exact nam=
e of this package varies among them.<br>=0A|   =3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>=0A| <br>=0A| See `c=
onfig.log' for more details.<br>=0A| FATAL: oe_runconf failed<br>=0A| ERROR=
: Function 'do_configure' failed (see =0A/home/sct/my_workspace/poky_xbmc_0=
9Mar2012/build/tmp/work/atom-poky-linux/xbmc-11.1-r0/temp/log.do_configure.=
12512=0A for further information)<br>=0ANOTE: package xbmc-11.1-r0: task do=
_configure: Failed<br>=0AERROR: Task 705 =0A(/home/sct/my_workspace/poky_xb=
mc_09Mar2012/meta-sct/recipes-sct/xbmc/xbmc_11.1.bb,=0A do_configure) faile=
d with exit code '1'<br>=0A<br>=0APlease help me to resolve this problem.<b=
r>=0AThanks in advance=0A=09=09=09</div></div></body></html>

--734958990-1343810909-1345531741=:32941--

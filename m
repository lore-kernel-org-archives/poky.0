Return-Path: <sparsh150847@yahoo.com>
Received: from nm5-vm8.bullet.mail.sg3.yahoo.com
	(nm5-vm8.bullet.mail.sg3.yahoo.com [106.10.148.151])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 0E13EE0049B
	for <poky@yoctoproject.org>; Tue, 21 Aug 2012 06:34:11 -0700 (PDT)
Received: from [106.10.166.116] by nm5.bullet.mail.sg3.yahoo.com with NNFMP;
	21 Aug 2012 13:34:08 -0000
Received: from [106.10.151.239] by tm5.bullet.mail.sg3.yahoo.com with NNFMP;
	21 Aug 2012 13:34:08 -0000
Received: from [127.0.0.1] by omp1023.mail.sg3.yahoo.com with NNFMP;
	21 Aug 2012 13:34:08 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 407004.20837.bm@omp1023.mail.sg3.yahoo.com
Received: (qmail 34513 invoked by uid 60001); 21 Aug 2012 13:34:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1345556048; bh=BYHe8DyfISl1HpcrPfpnb68NTv7yElFiKSYP1o4lllA=;
	h=X-YMail-OSG:Received:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=MlKYI5z12pjne4zQsCzM5A6l1+SyiTnOXvZ4DyRWLElnfE0Utua7BvbQ8MUspu42Qv8ottXM/rh7NhVN9eScD6FVsiO+OAntkjh5tEh1ZOlt2KpLFMYlw95P9O7wLTlk7y6vQ+IivwptEBpdJRNPicxRxsvmh81R7qYJ/6+9LSk=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=X-YMail-OSG:Received:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=u26Y0UTtCT4R2UbwvfI5S2x0njjazL+uyU2EjnIhKv7BrAu6FF6xJT9gTmC+83P34tvjZooe9YTvf8xND8Et9W2wSbTgC8sXL/12tI6mh3bj9duLC28l6iAWoY/ubWKSiRwNlFqfRrqgtT/mfskh2k4cW2s2MglRy1LQpGsMMFQ=;
X-YMail-OSG: zR0lB2oVM1nGNrRMkYe2JBMKvcVC3XgOejI1a9kNoYlR_73
	cst_sWr6Ru29GL9PMFAFS7P0SBiOAa3uC8BuWw3fcS5hb98zhVIXgmU1ua7B
	L0D6weOR7dYF6s9u0PgFaCH9OPhDj6Puhrtili2KYgSnQCdJL6st8Bfem5al
	w6fYoGAPkhbYRUIjUHvqKOWl7kLlQj7QMU1jRT.F8cTC2M3jfTQEWIvojqXQ
	XCYEajM5OnAunwuDU_9TXD9Q3tYvlL0EzhosI4TOD8GH7aHMNzVi_WN_Z9PH
	hFTnEPvQ7w0Ofn4EhWRksuXSx8tiHpdHeujIRT.9op07wmYMgH_y0fHwkpY1
	9NmuwdOe9HMe0ZE9IuJSN8ihvS_76u93ofwz.2x40mZ5rUVNhyxN9tdxVuVB
	Q4Iq8OJQjNTcEaShAgTVB5NZny1BPDIa6YX7u4vLs.fZdZGGyWErGnEkkXrn
	U4WdGvXJD61bUEUABh0uJ1WDf82lEOFIk1zJmCAshqzeuDHrVkhKfOpSTpXj
	HP4NIWcIiAZ.lKKReVmxKn6d4qdLBKoNzRQpUZ4OyNXl8
Received: from [115.111.25.162] by web194605.mail.sg3.yahoo.com via HTTP;
	Tue, 21 Aug 2012 21:34:08 SGT
X-Mailer: YahooMailWebService/0.8.121.416
Message-ID: <1345556048.27966.YahooMailNeo@web194605.mail.sg3.yahoo.com>
Date: Tue, 21 Aug 2012 21:34:08 +0800 (SGT)
From: Sparsh Wid hope <sparsh150847@yahoo.com>
To: poky <poky@yoctoproject.org>
MIME-Version: 1.0
Subject: How to install sys module for python via poky
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
X-List-Received-Date: Tue, 21 Aug 2012 13:34:12 -0000
Content-Type: multipart/alternative;
	boundary="1564683395-1061163104-1345556048=:27966"

--1564683395-1061163104-1345556048=:27966
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
ython2.6/distutils/sysconfig.py",=0A line 22, in <module>=0A|PREFIX =3D os.=
path.normpath(sys.prefix).replace( os.getenv("BUILD_SYS"), os.getenv("HOST_=
SYS") )=0A| TypeError: expected a character buffer object=0A| Traceback (mo=
st recent call last):=0A=0AAs per my findings it seems that there is some p=
roblem in installing sys module for python. So please help me to install th=
e sys module via poky recipe.=0A=0AThanks in Advance=0A

--1564683395-1061163104-1345556048=:27966
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
&gt;<br>=0A|<span style=3D"background-color: rgb(255, 0, 127);"> <span styl=
e=3D"background-color: rgb(255, 64, 159);">    PREFIX =3D os.path.normpath(=
sys.prefix).replace( os.getenv("BUILD_SYS"), os.getenv("HOST_SYS") )</span>=
</span><br style=3D"background-color: rgb(255, 64, 159);"><span style=3D"ba=
ckground-color: rgb(255, 64, 159);">=0A| TypeError: expected a character bu=
ffer object</span><br>=0A| Traceback (most recent call last):</div><div sty=
le=3D"color: rgb(0, 0, 0); font-size: 16px; font-family: times new roman,ne=
w york,times,serif; background-color: transparent; font-style: normal;"><br=
></div><div style=3D"color: rgb(0, 0, 0); font-size: 16px; font-family: tim=
es new roman,new york,times,serif; background-color: transparent; font-styl=
e: normal;">As per my findings it seems that there is some problem in insta=
lling sys module for python. So please help me to install the sys module vi=
a poky recipe.</div><div style=3D"color: rgb(0, 0, 0); font-size: 16px; fon=
t-family: times new roman,new york,times,serif; background-color: transpare=
nt; font-style: normal;"><br></div><div style=3D"color: rgb(0, 0, 0); font-=
size: 16px; font-family: times new roman,new york,times,serif; background-c=
olor: transparent; font-style: normal;">Thanks in Advance<br></div></div></=
body></html>

--1564683395-1061163104-1345556048=:27966--

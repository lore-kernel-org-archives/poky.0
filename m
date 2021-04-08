Subject: Strange issue with npm package fetch #poky #npmsw
To: poky@lists.yoctoproject.org
From: "Arun Ravindran" <arunlee@gmail.com>
X-Originating-Location: IE (192.198.151.51)
X-Originating-Platform: Windows Firefox 87
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 08 Apr 2021 09:32:57 -0700
Message-ID: <giUq.1617899577929962653.dcfx@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="9ZmMSMpvtHyuhuWdYt3K"

--9ZmMSMpvtHyuhuWdYt3K
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I have created some recipes for express and body-parser npm packages.
I used devtool add <git URL> to create the bb file and npm-shrinkwrap.json=
.

The recipes works fine on one of our build machines, where as on another i=
t fails!!

The error we get is

aravind2@tmsbuild008:/build/aravind2/work/custom-yocto/mvdevice/build$ bit=
bake core-image-minimal
ERROR: ExpansionError during parsing /build/aravind2/work/custom-yocto/sou=
rces/poky/../../meta-customapps/recipes-support/body-parser/body-parser_git=
.bb=C2=A0=C2=A0 | ETA:=C2=A0 0:00:25
Traceback (most recent call last):
File "/build/aravind2/work/custom-yocto/sources/poky/bitbake/lib/bb/utils.=
py", line 421, in better_eval(source=3D<code object <module> at 0x7f3a9d99f=
a50, file "Var <SRCPV>", line 1>, locals=3D{'d': <bb.data_smart.DataSmart o=
bject at 0x7f3a9bb99c50>}, extraglobals=3D{'d': <bb.data_smart.DataSmart ob=
ject at 0x7f3a9bb99c50>}):
ctx[g] =3D extraglobals[g]
>=C2=A0=C2=A0=C2=A0 return eval(source, ctx, locals)

File "Var <SRCPV>", line 1, in <module>
File "/build/aravind2/work/custom-yocto/sources/poky/bitbake/lib/bb/fetch2=
/__init__.py", line 745, in get_srcrev(d=3D<bb.data_smart.DataSmart object =
at 0x7f3a9bb99c50>, method_name=3D'sortable_revision'):
scms =3D []
>=C2=A0=C2=A0=C2=A0 fetcher =3D Fetch(d.getVar('SRC_URI').split(), d)
urldata =3D fetcher.ud
File "/build/aravind2/work/custom-yocto/sources/poky/bitbake/lib/bb/fetch2=
/__init__.py", line 1600, in Fetch.__init__(urls=3D['git://github.com/expre=
ssjs/body-parser.git;protocol=3Dhttps', 'npmsw:///build/aravind2/work/custo=
m-yocto/sources/poky/../../meta-customapps/recipes-support/body-parser/body=
-parser/npm-shrinkwrap.json'], d=3D<bb.data_smart.DataSmart object at 0x7f3=
a9bb99c50>, cache=3DTrue, localonly=3DFalse, connection_cache=3DNone):
try:
>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ud[url] =3D FetchData(url,=
 d, localonly)
except NonLocalMethod:
File "/build/aravind2/work/custom-yocto/sources/poky/bitbake/lib/bb/fetch2=
/__init__.py", line 1262, in FetchData.__init__(url=3D'npmsw:///build/aravi=
nd2/work/custom-yocto/sources/poky/../../meta-customapps/recipes-support/bo=
dy-parser/body-parser/npm-shrinkwrap.json', d=3D<bb.data_smart.DataSmart ob=
ject at 0x7f3a9bb99c50>, localonly=3DFalse):
if not self.method:
>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 raise =
NoMethodError(url)

bb.data_smart.ExpansionError: Failure expanding variable SRCPV, expression=
 was ${@bb.fetch2.get_srcrev(d)} which triggered exception NoMethodError: C=
ould not find a fetcher which supports the URL: 'npmsw:///build/aravind2/wo=
rk/custom-yocto/sources/poky/../../meta-customapps/recipes-support/body-par=
ser/body-parser/npm-shrinkwrap.json'

Summary: There was 1 ERROR message shown, returning a non-zero exit code.
aravind2@tmsbuild008:/build/aravind2/work/custom-yocto/mvdevice/build$

Both machines are=C2=A0 :=C2=A0=C2=A0=C2=A0 Ubuntu 18.04.5 LTS

what could be the issue here? How could this be fixed?

regards
Arun

--9ZmMSMpvtHyuhuWdYt3K
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />I have created some recipes for express and body-parser npm =
packages.<br />I used devtool add &lt;git URL&gt; to create the bb file and=
 npm-shrinkwrap.json.<br /><br />The recipes works fine on one of our build=
 machines, where as on another it fails!!<br /><br />The error we get is<br=
 /><br />aravind2@tmsbuild008:/build/aravind2/work/custom-yocto/mvdevice/bu=
ild$ bitbake core-image-minimal<br />ERROR: ExpansionError during parsing /=
build/aravind2/work/custom-yocto/sources/poky/../../meta-customapps/recipes=
-support/body-parser/body-parser_git.bb&nbsp;&nbsp; | ETA:&nbsp; 0:00:25<br=
 />Traceback (most recent call last):<br />&nbsp; File "/build/aravind2/wor=
k/custom-yocto/sources/poky/bitbake/lib/bb/utils.py", line 421, in better_e=
val(source=3D&lt;code object &lt;module&gt; at 0x7f3a9d99fa50, file "Var &l=
t;SRCPV&gt;", line 1&gt;, locals=3D{'d': &lt;bb.data_smart.DataSmart object=
 at 0x7f3a9bb99c50&gt;}, extraglobals=3D{'d': &lt;bb.data_smart.DataSmart o=
bject at 0x7f3a9bb99c50&gt;}):<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ctx[g] =3D extrag=
lobals[g]<br />&nbsp;&nbsp;&nbsp; &gt;&nbsp;&nbsp;&nbsp; return eval(source=
, ctx, locals)<br /><br />&nbsp; File "Var &lt;SRCPV&gt;", line 1, in &lt;m=
odule&gt;<br />&nbsp; File "/build/aravind2/work/custom-yocto/sources/poky/=
bitbake/lib/bb/fetch2/__init__.py", line 745, in get_srcrev(d=3D&lt;bb.data=
_smart.DataSmart object at 0x7f3a9bb99c50&gt;, method_name=3D'sortable_revi=
sion'):<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; scms =3D []<b=
r />&nbsp;&nbsp;&nbsp; &gt;&nbsp;&nbsp;&nbsp; fetcher =3D Fetch(d.getVar('S=
RC_URI').split(), d)<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
urldata =3D fetcher.ud<br />&nbsp; File "/build/aravind2/work/custom-yocto/=
sources/poky/bitbake/lib/bb/fetch2/__init__.py", line 1600, in Fetch.__init=
__(urls=3D['git://github.com/expressjs/body-parser.git;protocol=3Dhttps', '=
npmsw:///build/aravind2/work/custom-yocto/sources/poky/../../meta-customapp=
s/recipes-support/body-parser/body-parser/npm-shrinkwrap.json'], d=3D&lt;bb=
.data_smart.DataSmart object at 0x7f3a9bb99c50&gt;, cache=3DTrue, localonly=
=
=3DFalse, connection_cache=3DNone):<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; try:<br />&nbsp;&nbsp;&nbsp; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; self.ud[url] =3D FetchData(url, d, localonly)<br />&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; except NonLocalMethod:<br />&nbsp; File "/=
build/aravind2/work/custom-yocto/sources/poky/bitbake/lib/bb/fetch2/__init_=
_.py", line 1262, in FetchData.__init__(url=3D'npmsw:///build/aravind2/work=
/custom-yocto/sources/poky/../../meta-customapps/recipes-support/body-parse=
r/body-parser/npm-shrinkwrap.json', d=3D&lt;bb.data_smart.DataSmart object =
at 0x7f3a9bb99c50&gt;, localonly=3DFalse):<br />&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if not self.method:<br />&nbs=
p;&nbsp;&nbsp; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; raise NoMethodError(url)<br /><br />bb.data_smart.ExpansionError=
: Failure expanding variable SRCPV, expression was ${@bb.fetch2.get_srcrev(=
d)} which triggered exception NoMethodError: Could not find a fetcher which=
 supports the URL: 'npmsw:///build/aravind2/work/custom-yocto/sources/poky/=
../../meta-customapps/recipes-support/body-parser/body-parser/npm-shrinkwra=
p.json'<br /><br /><br />Summary: There was 1 ERROR message shown, returnin=
g a non-zero exit code.<br /><a href=3D"mailto:aravind2@tmsbuild008:/build/=
aravind2/work/custom-yocto/mvdevice/build$" target=3D"_blank" rel=3D"noopen=
er">aravind2@tmsbuild008:/build/aravind2/work/custom-yocto/mvdevice/build$<=
/a><br /><br />Both machines are&nbsp; :&nbsp;&nbsp;&nbsp; Ubuntu 18.04.5 L=
TS<br /><br />what could be the issue here? How could this be fixed?<br /><=
br />regards<br />Arun

--9ZmMSMpvtHyuhuWdYt3K--

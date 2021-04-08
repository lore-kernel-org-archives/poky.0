Subject: Re: Strange issue with npm package fetch #poky #npmsw
To: poky@lists.yoctoproject.org
From: "Arun Ravindran" <arunlee@gmail.com>
X-Originating-Location: IE (192.198.151.51)
X-Originating-Platform: Windows Firefox 87
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 08 Apr 2021 10:16:04 -0700
References: <11570.1617900444724966559@lists.yoctoproject.org>
In-Reply-To: <11570.1617900444724966559@lists.yoctoproject.org>
Message-ID: <17085.1617902164827608035@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="2UANTBrHUIbj34sU6D8k"

--2UANTBrHUIbj34sU6D8k
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I created the bb files for these packages from the machine which has the ol=
der bitbake (because it needs to build from zeus branch of poky, where as t=
he other builds from dunfell).
The bb files compile now on the older bitbake, but not on the newer one...=
.

aravind2@tmsbuild012:~/work/custom-yocto/mvdevice/build$ bitbake rpimvdevi=
ce-image
Loading cache: 100% |#####################################################=
###########################################################################=
########| Time: 0:00:00
Loaded 3348 entries from dependency cache.
ERROR: ExpansionError during parsing /home/aravind2/work/custom-yocto/poky=
/../meta-customapps/recipes-support/express/express_git.bb=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | ETA:=C2=A0 --:--:--
Traceback (most recent call last):
File "Var <SRCPV>", line 1, in <module>
File "/home/aravind2/work/custom-yocto/poky/bitbake/lib/bb/fetch2/__init__=
.py", line 755, in get_srcrev(d=3D<bb.data_smart.DataSmart object at 0x7f7f=
3b4eca58>, method_name=3D'sortable_revision'):
scms =3D []
>=C2=A0=C2=A0=C2=A0 fetcher =3D Fetch(d.getVar('SRC_URI').split(), d)
urldata =3D fetcher.ud
File "/home/aravind2/work/custom-yocto/poky/bitbake/lib/bb/fetch2/__init__=
.py", line 1638, in Fetch.__init__(urls=3D['git://github.com/expressjs/expr=
ess.git;protocol=3Dhttps', 'npm://registry.npmjs.org;name=3Daccepts;version=
=
=3D1.3.7;subdir=3Dnode_modules/accepts', 'npm://registry.npmjs.org;name=3D=
array-flatten;version=3D1.1.1;subdir=3Dnode_modules/array-flatten', 'npm://=
registry.npmjs.org;name=3Dbody-parser;version=3D1.19.0;subdir=3Dnode_module=
s/body-parser', 'npm://registry.npmjs.org;name=3Dcontent-disposition;versio=
n=3D0.5.3;subdir=3Dnode_modules/content-disposition', 'npm://registry.npmjs=
.org;name=3Dcontent-type;version=3D1.0.4;subdir=3Dnode_modules/content-type=
', 'npm://registry.npmjs.org;name=3Dcookie;version=3D0.4.0;subdir=3Dnode_mo=
dules/cookie', 'npm://registry.npmjs.org;name=3Dcookie-signature;version=3D=
1.0.6;subdir=3Dnode_modules/cookie-signature', 'npm://registry.npmjs.org;na=
me=3Ddebug;version=3D2.6.9;subdir=3Dnode_modules/debug', 'npm://registry.np=
mjs.org;name=3Ddepd;version=3D1.1.2;subdir=3Dnode_modules/depd', 'npm://reg=
istry.npmjs.org;name=3Dencodeurl;version=3D1.0.2;subdir=3Dnode_modules/enco=
deurl', 'npm://registry.npmjs.org;name=3Descape-html;version=3D1.0.3;subdir=
=
=3Dnode_modules/escape-html', 'npm://registry.npmjs.org;name=3Detag;versio=
n=3D1.8.1;subdir=3Dnode_modules/etag', 'npm://registry.npmjs.org;name=3Dfin=
alhandler;version=3D1.1.2;subdir=3Dnode_modules/finalhandler', 'npm://regis=
try.npmjs.org;name=3Dfresh;version=3D0.5.2;subdir=3Dnode_modules/fresh', 'n=
pm://registry.npmjs.org;name=3Dmerge-descriptors;version=3D1.0.1;subdir=3Dn=
ode_modules/merge-descriptors', 'npm://registry.npmjs.org;name=3Dmethods;ve=
rsion=3D1.1.2;subdir=3Dnode_modules/methods', 'npm://registry.npmjs.org;nam=
e=3Don-finished;version=3D2.3.0;subdir=3Dnode_modules/on-finished', 'npm://=
registry.npmjs.org;name=3Dparseurl;version=3D1.3.3;subdir=3Dnode_modules/pa=
rseurl', 'npm://registry.npmjs.org;name=3Dpath-to-regexp;version=3D0.1.7;su=
bdir=3Dnode_modules/path-to-regexp', 'npm://registry.npmjs.org;name=3Dproxy=
-addr;version=3D2.0.6;subdir=3Dnode_modules/proxy-addr', 'npm://registry.np=
mjs.org;name=3Dqs;version=3D6.7.0;subdir=3Dnode_modules/qs', 'npm://registr=
y.npmjs.org;name=3Drange-parser;version=3D1.2.1;subdir=3Dnode_modules/range=
-parser', 'npm://registry.npmjs.org;name=3Dsafe-buffer;version=3D5.1.2;subd=
ir=3Dnode_modules/safe-buffer', 'npm://registry.npmjs.org;name=3Dsend;versi=
on=3D0.17.1;subdir=3Dnode_modules/send', 'npm://registry.npmjs.org;name=3Ds=
erve-static;version=3D1.14.1;subdir=3Dnode_modules/serve-static', 'npm://re=
gistry.npmjs.org;name=3Dsetprototypeof;version=3D1.1.1;subdir=3Dnode_module=
s/setprototypeof', 'npm://registry.npmjs.org;name=3Dstatuses;version=3D1.5.=
0;subdir=3Dnode_modules/statuses', 'npm://registry.npmjs.org;name=3Dtype-is=
;version=3D1.6.18;subdir=3Dnode_modules/type-is', 'npm://registry.npmjs.org=
;name=3Dutils-merge;version=3D1.0.1;subdir=3Dnode_modules/utils-merge', 'np=
m://registry.npmjs.org;name=3Dvary;version=3D1.1.2;subdir=3Dnode_modules/va=
ry'], d=3D<bb.data_smart.DataSmart object at 0x7f7f3b4eca58>, cache=3DTrue,=
 localonly=3DFalse, connection_cache=3DNone):
try:
>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ud[url] =3D FetchData(url,=
 d, localonly)
except NonLocalMethod:
File "/home/aravind2/work/custom-yocto/poky/bitbake/lib/bb/fetch2/__init__=
.py", line 1279, in FetchData.__init__(url=3D'npm://registry.npmjs.org;name=
=
=3Daccepts;version=3D1.3.7;subdir=3Dnode_modules/accepts', d=3D<bb.data_sm=
art.DataSmart object at 0x7f7f3b4eca58>, localonly=3DFalse):
if hasattr(self.method, "urldata_init"):
>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.m=
ethod.urldata_init(self, d)

File "/home/aravind2/work/custom-yocto/poky/bitbake/lib/bb/fetch2/npm.py",=
 line 132, in Npm.urldata_init(ud=3D<bb.fetch2.FetchData object at 0x7f7f3b=
4aa518>, d=3D<bb.data_smart.DataSmart object at 0x7f7f3b4eca58>):
if not ud.package:
>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 raise =
MissingParameterError("Parameter 'package' required", ud.url)

bb.data_smart.ExpansionError: Failure expanding variable SRCPV, expression=
 was ${@bb.fetch2.get_srcrev(d)} which triggered exception MissingParameter=
Error: URL: 'npm://registry.npmjs.org;name=3Daccepts;version=3D1.3.7;subdir=
=
=3Dnode_modules/accepts' is missing the required parameter 'Parameter 'pac=
kage' required'

Summary: There was 1 ERROR message shown, returning a non-zero exit code.
aravind2@tmsbuild012:~/work/custom-yocto/mvdevice/build$

We would need this in both zeus and dunfell, because we have two different=
 targets boards to build where one BSP has no support for dunfell.

Is there a way to make these recipes work in both zeus and dunfell?

regards
Arun

--2UANTBrHUIbj34sU6D8k
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I created the bb files for these packages from the machine which has the ol=
der bitbake (because it needs to build from zeus branch of poky, where as t=
he other builds from dunfell).<br />The bb files compile now on the older b=
itbake, but not on the newer one....<br /><br />aravind2@tmsbuild012:~/work=
/custom-yocto/mvdevice/build$ bitbake rpimvdevice-image<br />Loading cache:=
 100% |####################################################################=
####################################################################| Time:=
 0:00:00<br />Loaded 3348 entries from dependency cache.<br />ERROR: Expans=
ionError during parsing /home/aravind2/work/custom-yocto/poky/../meta-custo=
mapps/recipes-support/express/express_git.bb&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; | ETA:&nbsp; --:--:--<br />Traceback (most recent call=
 last):<br />&nbsp; File "Var &lt;SRCPV&gt;", line 1, in &lt;module&gt;<br =
/>&nbsp; File "/home/aravind2/work/custom-yocto/poky/bitbake/lib/bb/fetch2/=
__init__.py", line 755, in get_srcrev(d=3D&lt;bb.data_smart.DataSmart objec=
t at 0x7f7f3b4eca58&gt;, method_name=3D'sortable_revision'):<br />&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; scms =3D []<br />&nbsp;&nbsp;&nbsp;=
 &gt;&nbsp;&nbsp;&nbsp; fetcher =3D Fetch(d.getVar('SRC_URI').split(), d)<b=
r />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; urldata =3D fetcher.ud=
<br />&nbsp; File "/home/aravind2/work/custom-yocto/poky/bitbake/lib/bb/fet=
ch2/__init__.py", line 1638, in Fetch.__init__(urls=3D['git://github.com/ex=
pressjs/express.git;protocol=3Dhttps', 'npm://registry.npmjs.org;name=3Dacc=
epts;version=3D1.3.7;subdir=3Dnode_modules/accepts', 'npm://registry.npmjs.=
org;name=3Darray-flatten;version=3D1.1.1;subdir=3Dnode_modules/array-flatte=
n', 'npm://registry.npmjs.org;name=3Dbody-parser;version=3D1.19.0;subdir=3D=
node_modules/body-parser', 'npm://registry.npmjs.org;name=3Dcontent-disposi=
tion;version=3D0.5.3;subdir=3Dnode_modules/content-disposition', 'npm://reg=
istry.npmjs.org;name=3Dcontent-type;version=3D1.0.4;subdir=3Dnode_modules/c=
ontent-type', 'npm://registry.npmjs.org;name=3Dcookie;version=3D0.4.0;subdi=
r=3Dnode_modules/cookie', 'npm://registry.npmjs.org;name=3Dcookie-signature=
;version=3D1.0.6;subdir=3Dnode_modules/cookie-signature', 'npm://registry.n=
pmjs.org;name=3Ddebug;version=3D2.6.9;subdir=3Dnode_modules/debug', 'npm://=
registry.npmjs.org;name=3Ddepd;version=3D1.1.2;subdir=3Dnode_modules/depd',=
 'npm://registry.npmjs.org;name=3Dencodeurl;version=3D1.0.2;subdir=3Dnode_m=
odules/encodeurl', 'npm://registry.npmjs.org;name=3Descape-html;version=3D1=
.0.3;subdir=3Dnode_modules/escape-html', 'npm://registry.npmjs.org;name=3De=
tag;version=3D1.8.1;subdir=3Dnode_modules/etag', 'npm://registry.npmjs.org;=
name=3Dfinalhandler;version=3D1.1.2;subdir=3Dnode_modules/finalhandler', 'n=
pm://registry.npmjs.org;name=3Dfresh;version=3D0.5.2;subdir=3Dnode_modules/=
fresh', 'npm://registry.npmjs.org;name=3Dmerge-descriptors;version=3D1.0.1;=
subdir=3Dnode_modules/merge-descriptors', 'npm://registry.npmjs.org;name=3D=
methods;version=3D1.1.2;subdir=3Dnode_modules/methods', 'npm://registry.npm=
js.org;name=3Don-finished;version=3D2.3.0;subdir=3Dnode_modules/on-finished=
', 'npm://registry.npmjs.org;name=3Dparseurl;version=3D1.3.3;subdir=3Dnode_=
modules/parseurl', 'npm://registry.npmjs.org;name=3Dpath-to-regexp;version=
=3D0.1.7;subdir=3Dnode_modules/path-to-regexp', 'npm://registry.npmjs.org;=
name=3Dproxy-addr;version=3D2.0.6;subdir=3Dnode_modules/proxy-addr', 'npm:/=
/registry.npmjs.org;name=3Dqs;version=3D6.7.0;subdir=3Dnode_modules/qs', 'n=
pm://registry.npmjs.org;name=3Drange-parser;version=3D1.2.1;subdir=3Dnode_m=
odules/range-parser', 'npm://registry.npmjs.org;name=3Dsafe-buffer;version=
=3D5.1.2;subdir=3Dnode_modules/safe-buffer', 'npm://registry.npmjs.org;nam=
e=3Dsend;version=3D0.17.1;subdir=3Dnode_modules/send', 'npm://registry.npmj=
s.org;name=3Dserve-static;version=3D1.14.1;subdir=3Dnode_modules/serve-stat=
ic', 'npm://registry.npmjs.org;name=3Dsetprototypeof;version=3D1.1.1;subdir=
=
=3Dnode_modules/setprototypeof', 'npm://registry.npmjs.org;name=3Dstatuses=
;version=3D1.5.0;subdir=3Dnode_modules/statuses', 'npm://registry.npmjs.org=
;name=3Dtype-is;version=3D1.6.18;subdir=3Dnode_modules/type-is', 'npm://reg=
istry.npmjs.org;name=3Dutils-merge;version=3D1.0.1;subdir=3Dnode_modules/ut=
ils-merge', 'npm://registry.npmjs.org;name=3Dvary;version=3D1.1.2;subdir=3D=
node_modules/vary'], d=3D&lt;bb.data_smart.DataSmart object at 0x7f7f3b4eca=
58&gt;, cache=3DTrue, localonly=3DFalse, connection_cache=3DNone):<br />&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; try:<br />&nbsp;&nbsp;&nbsp; &gt=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.ud[url] =3D FetchData(url, d,=
 localonly)<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; except NonLo=
calMethod:<br />&nbsp; File "/home/aravind2/work/custom-yocto/poky/bitbake/=
lib/bb/fetch2/__init__.py", line 1279, in FetchData.__init__(url=3D'npm://r=
egistry.npmjs.org;name=3Daccepts;version=3D1.3.7;subdir=3Dnode_modules/acce=
pts', d=3D&lt;bb.data_smart.DataSmart object at 0x7f7f3b4eca58&gt;, localon=
ly=3DFalse):<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; if hasattr(self.method, "urldata_init"):<br />&nbsp;&nbsp;&=
nbsp; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; self.method.urldata_init(self, d)<br /><br />&nbsp; File "/home/aravind2/=
work/custom-yocto/poky/bitbake/lib/bb/fetch2/npm.py", line 132, in Npm.urld=
ata_init(ud=3D&lt;bb.fetch2.FetchData object at 0x7f7f3b4aa518&gt;, d=3D&lt=
;bb.data_smart.DataSmart object at 0x7f7f3b4eca58&gt;):<br />&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if not ud.packag=
e:<br />&nbsp;&nbsp;&nbsp; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; raise MissingParameterError("Parameter 'package' req=
uired", ud.url)<br /><br />bb.data_smart.ExpansionError: Failure expanding =
variable SRCPV, expression was ${@bb.fetch2.get_srcrev(d)} which triggered =
exception MissingParameterError: URL: 'npm://registry.npmjs.org;name=3Dacce=
pts;version=3D1.3.7;subdir=3Dnode_modules/accepts' is missing the required =
parameter 'Parameter 'package' required'<br /><br /><br />Summary: There wa=
s 1 ERROR message shown, returning a non-zero exit code.<br /><a href=3D"ma=
ilto:aravind2@tmsbuild012:~/work/custom-yocto/mvdevice/build$" target=3D"_b=
lank" rel=3D"noopener">aravind2@tmsbuild012:~/work/custom-yocto/mvdevice/bu=
ild$</a><br /><br />We would need this in both zeus and dunfell, because we=
 have two different targets boards to build where one BSP has no support fo=
r dunfell.<br /><br />Is there a way to make these recipes work in both zeu=
s and dunfell?<br /><br />regards<br />Arun

--2UANTBrHUIbj34sU6D8k--

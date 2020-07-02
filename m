Subject: devtool add pm2 #yocto #devtool
To: poky@lists.yoctoproject.org
From: =?UTF-8?B?QWRyaWFuIER1c2nFhHNraQ==?= <dusinski.adrian@gmail.com>
X-Originating-Location: Zabrze, Silesia, PL (46.134.170.178)
X-Originating-Platform: Linux Firefox 77
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 02 Jul 2020 05:37:10 -0700
Message-ID: <mYon.1593693430796526245.qvQy@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="v44DXzwmeYCBoHnxMb0N"

--v44DXzwmeYCBoHnxMb0N
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I try to install pm2 with devtool with yocto 2.6 (thud)
*devtool add "npm:// registry.npmjs.org ( http://registry.npmjs.org ) ; na=
me=3Dpm2;version=3D3.2.9"*

but I get error:

*File "/home/adrian/workspace/ yoctoTools/yocto-2.6/sources/ sources/poky/=
scripts/ recipetool", line 121, in <module>
ret =3D main()
File "/home/adrian/workspace/ yoctoTools/yocto-2.6/sources/ sources/poky/s=
cripts/ recipetool", line 110, in main
ret =3D args.func(args)
File "/home/adrian/workspace/ yoctoTools/yocto-2.6/sources/ sources/poky/s=
cripts/lib/ recipetool/create.py", line 757, in create_recipe
handler.process(srctree_use, classes, lines_before, lines_after, handled, =
extravalues)
File "/home/adrian/workspace/ yoctoTools/yocto-2.6/sources/ sources/poky/s=
cripts/lib/ recipetool/create_npm.py", line 227, in process
license =3D self._handle_license(pdata)
File "/home/adrian/workspace/ yoctoTools/yocto-2.6/sources/ sources/poky/s=
cripts/lib/ recipetool/create_npm.py", line 78, in _handle_license
license =3D license.replace('AND', '&')
AttributeError: 'list' object has no attribute 'replace'*

Another package are downloaded without this problem

Regards,
Adrian

--v44DXzwmeYCBoHnxMb0N
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I try to install pm2 with devtool with yocto 2.6 (thud)</div>
<div><strong>devtool add "npm://<a href=3D"http://registry.npmjs.org" targ=
et=3D"_blank" rel=3D"noopener" data-saferedirecturl=3D"https://www.google.c=
om/url?q=3Dhttp://registry.npmjs.org&amp;source=3Dgmail&amp;ust=3D159377932=
5299000&amp;usg=3DAFQjCNHeeLo4P78XdSDNUm7cWaYAhYBn1w">registry.npmjs.org</a=
>;<wbr />name=3Dpm2;version=3D3.2.9"</strong></div>
<div>&nbsp;</div>
<div>but I get error:</div>
<div>&nbsp;</div>
<div><strong>&nbsp; File "/home/adrian/workspace/<wbr />yoctoTools/yocto-2=
.6/sources/<wbr />sources/poky/scripts/<wbr />recipetool", line 121, in &lt=
;module&gt;<br />&nbsp; &nbsp; ret =3D main()<br />&nbsp; File "/home/adria=
n/workspace/<wbr />yoctoTools/yocto-2.6/sources/<wbr />sources/poky/scripts=
/<wbr />recipetool", line 110, in main<br />&nbsp; &nbsp; ret =3D args.func=
(args)<br />&nbsp; File "/home/adrian/workspace/<wbr />yoctoTools/yocto-2.6=
/sources/<wbr />sources/poky/scripts/lib/<wbr />recipetool/create.py", line=
 757, in create_recipe<br />&nbsp; &nbsp; handler.process(srctree_use, clas=
ses, lines_before, lines_after, handled, extravalues)<br />&nbsp; File "/ho=
me/adrian/workspace/<wbr />yoctoTools/yocto-2.6/sources/<wbr />sources/poky=
/scripts/lib/<wbr />recipetool/create_npm.py", line 227, in process<br />&n=
bsp; &nbsp; license =3D self._handle_license(pdata)<br />&nbsp; File "/home=
/adrian/workspace/<wbr />yoctoTools/yocto-2.6/sources/<wbr />sources/poky/s=
cripts/lib/<wbr />recipetool/create_npm.py", line 78, in _handle_license<br=
 />&nbsp; &nbsp; license =3D license.replace('AND', '&amp;')<br />Attribute=
Error: 'list' object has no attribute 'replace'</strong></div>
<div>&nbsp;</div>
<div>Another package are downloaded without this problem</div>
<div>&nbsp;</div>
<div>Regards,</div>
Adrian

--v44DXzwmeYCBoHnxMb0N--

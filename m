Received: from linux.microsoft.com (linux.microsoft.com [13.77.154.182])
 by mx.groups.io with SMTP id smtpd.web11.8917.1619075513811383490
 for <poky@lists.yoctoproject.org>;
 Thu, 22 Apr 2021 00:11:54 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@linux.microsoft.com header.s=default header.b=pN0LfZY/;
 spf=pass (domain: linux.microsoft.com, ip: 13.77.154.182, mailfrom: alhe@linux.microsoft.com)
Received: from [10.8.3.3] (unknown [107.158.96.43])
	by linux.microsoft.com (Postfix) with ESMTPSA id 7887A20B8001;
	Thu, 22 Apr 2021 00:11:52 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 7887A20B8001
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
	s=default; t=1619075513;
	bh=nQaVqckGM5PvOxrSUn7VYTQfGPeWkXXoTZnPe15wGvg=;
	h=Subject:To:References:From:Date:In-Reply-To:From;
	b=pN0LfZY/HUGnZKglukv9VsTJwInzkL7xENemrcHegpqW0zIC05tO/BHSNEQFlYdc5
	 t4Gkm8z/EriLtGNhemx/yOBPLE9/cnG+Jal9qxn6JrkQZFgGHevi0tZzLJ0pbHdMFw
	 fp/Q//eG07jlpjVSAY7nrwwhL4jZjldx8bQwp7gA=
Subject: Re: [poky] Strange issue with npm package fetch #poky #npmsw
To: Arun Ravindran <arunlee@gmail.com>, poky@lists.yoctoproject.org
References: <11570.1617900444724966559@lists.yoctoproject.org>
 <17085.1617902164827608035@lists.yoctoproject.org>
From: "Alejandro Hernandez Samaniego" <alhe@linux.microsoft.com>
Message-ID: <34a9f1a5-07b6-54ce-de3e-0a9467b0609c@linux.microsoft.com>
Date: Thu, 22 Apr 2021 07:14:46 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <17085.1617902164827608035@lists.yoctoproject.org>
Content-Type: multipart/alternative;
 boundary="------------83C2A53F9B82A304A3A73089"
Content-Language: en-US

--------------83C2A53F9B82A304A3A73089
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hello Arun,

I believe there are several patches from the master branch that you may=20
need to allow these to work properly.

For Dunfell you may resend the patch(es) to the Bitbake mailing list=20
with the Dunfell tag to see if it gets
accepted and merged since Dunfell is still active, but Zeus is EOL so=20
you'd have to cherry-pick these
manually on your branch.

You can use the following wiki as reference to send the patch to oe-core=
=20
or bitbake ML (use dunfell on subject-prefix).
https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded

Here's the Yocto Project releases webpage as reference as well:
https://wiki.yoctoproject.org/wiki/Releases
Cheers,

Alejandro


On 4/8/21 5:16 PM, Arun Ravindran wrote:
> I created the bb files for these packages from the machine which has=20
> the older bitbake (because it needs to build from zeus branch of poky,=
=20
> where as the other builds from dunfell).
> The bb files compile now on the older bitbake, but not on the newer=20
> one....
>
> aravind2@tmsbuild012:~/work/custom-yocto/mvdevice/build$ bitbake=20
> rpimvdevice-image
> Loading cache: 100%=20
> |#######################################################################=
#################################################################|=20
> Time: 0:00:00
> Loaded 3348 entries from dependency cache.
> ERROR: ExpansionError during parsing=20
> /home/aravind2/work/custom-yocto/poky/../meta-customapps/recipes-support=
/express/express_git.bb=20
> | ETA:=C2=A0 --:--:--
> Traceback (most recent call last):
> =C2=A0 File "Var <SRCPV>", line 1, in <module>
> =C2=A0 File=20
> "/home/aravind2/work/custom-yocto/poky/bitbake/lib/bb/fetch2/__init__.py=
",=20
> line 755, in get_srcrev(d=3D<bb.data_smart.DataSmart object at=20
> 0x7f7f3b4eca58>, method_name=3D'sortable_revision'):
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 scms =3D []
> =C2=A0=C2=A0=C2=A0 >=C2=A0=C2=A0=C2=A0 fetcher =3D Fetch(d.getVar('SRC_U=
RI').split(), d)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 urldata =3D fetcher.ud
> =C2=A0 File=20
> "/home/aravind2/work/custom-yocto/poky/bitbake/lib/bb/fetch2/__init__.py=
",=20
> line 1638, in=20
> Fetch.__init__(urls=3D['git://github.com/expressjs/express.git;protocol=
=3Dhttps',=20
> 'npm://registry.npmjs.org;name=3Daccepts;version=3D1.3.7;subdir=3Dnode_m=
odules/accepts',=20
> 'npm://registry.npmjs.org;name=3Darray-flatten;version=3D1.1.1;subdir=3D=
node_modules/array-flatten',=20
> 'npm://registry.npmjs.org;name=3Dbody-parser;version=3D1.19.0;subdir=3Dn=
ode_modules/body-parser',=20
> 'npm://registry.npmjs.org;name=3Dcontent-disposition;version=3D0.5.3;sub=
dir=3Dnode_modules/content-disposition',=20
> 'npm://registry.npmjs.org;name=3Dcontent-type;version=3D1.0.4;subdir=3Dn=
ode_modules/content-type',=20
> 'npm://registry.npmjs.org;name=3Dcookie;version=3D0.4.0;subdir=3Dnode_mo=
dules/cookie',=20
> 'npm://registry.npmjs.org;name=3Dcookie-signature;version=3D1.0.6;subdir=
=
=3Dnode_modules/cookie-signature',=20
> 'npm://registry.npmjs.org;name=3Ddebug;version=3D2.6.9;subdir=3Dnode_mod=
ules/debug',=20
> 'npm://registry.npmjs.org;name=3Ddepd;version=3D1.1.2;subdir=3Dnode_modu=
les/depd',=20
> 'npm://registry.npmjs.org;name=3Dencodeurl;version=3D1.0.2;subdir=3Dnode=
_modules/encodeurl',=20
> 'npm://registry.npmjs.org;name=3Descape-html;version=3D1.0.3;subdir=3Dno=
de_modules/escape-html',=20
> 'npm://registry.npmjs.org;name=3Detag;version=3D1.8.1;subdir=3Dnode_modu=
les/etag',=20
> 'npm://registry.npmjs.org;name=3Dfinalhandler;version=3D1.1.2;subdir=3Dn=
ode_modules/finalhandler',=20
> 'npm://registry.npmjs.org;name=3Dfresh;version=3D0.5.2;subdir=3Dnode_mod=
ules/fresh',=20
> 'npm://registry.npmjs.org;name=3Dmerge-descriptors;version=3D1.0.1;subdi=
r=3Dnode_modules/merge-descriptors',=20
> 'npm://registry.npmjs.org;name=3Dmethods;version=3D1.1.2;subdir=3Dnode_m=
odules/methods',=20
> 'npm://registry.npmjs.org;name=3Don-finished;version=3D2.3.0;subdir=3Dno=
de_modules/on-finished',=20
> 'npm://registry.npmjs.org;name=3Dparseurl;version=3D1.3.3;subdir=3Dnode_=
modules/parseurl',=20
> 'npm://registry.npmjs.org;name=3Dpath-to-regexp;version=3D0.1.7;subdir=
=3Dnode_modules/path-to-regexp',=20
> 'npm://registry.npmjs.org;name=3Dproxy-addr;version=3D2.0.6;subdir=3Dnod=
e_modules/proxy-addr',=20
> 'npm://registry.npmjs.org;name=3Dqs;version=3D6.7.0;subdir=3Dnode_module=
s/qs',=20
> 'npm://registry.npmjs.org;name=3Drange-parser;version=3D1.2.1;subdir=3Dn=
ode_modules/range-parser',=20
> 'npm://registry.npmjs.org;name=3Dsafe-buffer;version=3D5.1.2;subdir=3Dno=
de_modules/safe-buffer',=20
> 'npm://registry.npmjs.org;name=3Dsend;version=3D0.17.1;subdir=3Dnode_mod=
ules/send',=20
> 'npm://registry.npmjs.org;name=3Dserve-static;version=3D1.14.1;subdir=3D=
node_modules/serve-static',=20
> 'npm://registry.npmjs.org;name=3Dsetprototypeof;version=3D1.1.1;subdir=
=3Dnode_modules/setprototypeof',=20
> 'npm://registry.npmjs.org;name=3Dstatuses;version=3D1.5.0;subdir=3Dnode_=
modules/statuses',=20
> 'npm://registry.npmjs.org;name=3Dtype-is;version=3D1.6.18;subdir=3Dnode_=
modules/type-is',=20
> 'npm://registry.npmjs.org;name=3Dutils-merge;version=3D1.0.1;subdir=3Dno=
de_modules/utils-merge',=20
> 'npm://registry.npmjs.org;name=3Dvary;version=3D1.1.2;subdir=3Dnode_modu=
les/vary'],=20
> d=3D<bb.data_smart.DataSmart object at 0x7f7f3b4eca58>, cache=3DTrue,=20
> localonly=3DFalse, connection_cache=3DNone):
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 try:
> =C2=A0=C2=A0=C2=A0 >=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ud[ur=
l] =3D FetchData(url, d, localonly)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 except NonLocalMethod:
> =C2=A0 File=20
> "/home/aravind2/work/custom-yocto/poky/bitbake/lib/bb/fetch2/__init__.py=
",=20
> line 1279, in=20
> FetchData.__init__(url=3D'npm://registry.npmjs.org;name=3Daccepts;versio=
n=3D1.3.7;subdir=3Dnode_modules/accepts',=20
> d=3D<bb.data_smart.DataSmart object at 0x7f7f3b4eca58>, localonly=3DFals=
e):
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 if hasattr(self.method, "urldata_init"):
> =C2=A0=C2=A0=C2=A0 >=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 self.method.urldata_init(self, d)
>
> =C2=A0 File=20
> "/home/aravind2/work/custom-yocto/poky/bitbake/lib/bb/fetch2/npm.py",=20
> line 132, in Npm.urldata_init(ud=3D<bb.fetch2.FetchData object at=20
> 0x7f7f3b4aa518>, d=3D<bb.data_smart.DataSmart object at 0x7f7f3b4eca58>)=
:
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 if not ud.package:
> =C2=A0=C2=A0=C2=A0 >=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 raise MissingParameterError("Parameter 'package'=20
> required", ud.url)
>
> bb.data_smart.ExpansionError: Failure expanding variable SRCPV,=20
> expression was ${@bb.fetch2.get_srcrev(d)} which triggered exception=20
> MissingParameterError: URL:=20
> 'npm://registry.npmjs.org;name=3Daccepts;version=3D1.3.7;subdir=3Dnode_m=
odules/accepts'=20
> is missing the required parameter 'Parameter 'package' required'
>
>
> Summary: There was 1 ERROR message shown, returning a non-zero exit code=
.
> aravind2@tmsbuild012:~/work/custom-yocto/mvdevice/build$=20
> <mailto:aravind2@tmsbuild012:~/work/custom-yocto/mvdevice/build$>
>
> We would need this in both zeus and dunfell, because we have two=20
> different targets boards to build where one BSP has no support for=20
> dunfell.
>
> Is there a way to make these recipes work in both zeus and dunfell?
>
> regards
> Arun
>
>=20
>

--------------83C2A53F9B82A304A3A73089
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-=
8">
  </head>
  <body>
    Hello Arun,<br>
    <br>
    I believe there are several patches from the master branch that you
    may need to allow these to work properly.<br>
    <br>
    For Dunfell you may resend the patch(es) to the Bitbake mailing list
    with the Dunfell tag to see if it gets<br>
    accepted and merged since Dunfell is still active, but Zeus is EOL
    so you'd have to cherry-pick these<br>
    manually on your branch.<br>
    <br>
    You can use the following wiki as reference to send the patch to
    oe-core or bitbake ML (use dunfell on subject-prefix).<br>
<a class=3D"moz-txt-link-freetext" href=3D"https://www.openembedded.org/wi=
ki/How_to_submit_a_patch_to_OpenEmbedded">https://www.openembedded.org/wiki=
/How_to_submit_a_patch_to_OpenEmbedded</a><br>
    <br>
    Here's the Yocto Project releases webpage as reference as well:<br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://wiki.yoctoproject.o=
rg/wiki/Releases">https://wiki.yoctoproject.org/wiki/Releases</a><br>
    Cheers,<br>
    <br>
    Alejandro
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">On 4/8/21 5:16 PM, Arun Ravindran
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:17085.1617902164827608035@lists.yoctoproject.org">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUT=
F-8">
      I created the bb files for these packages from the machine which
      has the older bitbake (because it needs to build from zeus branch
      of poky, where as the other builds from dunfell).<br>
      The bb files compile now on the older bitbake, but not on the
      newer one....<br>
      <br>
      aravind2@tmsbuild012:~/work/custom-yocto/mvdevice/build$ bitbake
      rpimvdevice-image<br>
      Loading cache: 100%
|#########################################################################=
###############################################################|
      Time: 0:00:00<br>
      Loaded 3348 entries from dependency cache.<br>
      ERROR: ExpansionError during parsing
/home/aravind2/work/custom-yocto/poky/../meta-customapps/recipes-support/e=
xpress/express_git.bb=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
      | ETA:=C2=A0 --:--:--<br>
      Traceback (most recent call last):<br>
      =C2=A0 File "Var &lt;SRCPV&gt;", line 1, in &lt;module&gt;<br>
      =C2=A0 File
"/home/aravind2/work/custom-yocto/poky/bitbake/lib/bb/fetch2/__init__.py",
      line 755, in get_srcrev(d=3D&lt;bb.data_smart.DataSmart object at
      0x7f7f3b4eca58&gt;, method_name=3D'sortable_revision'):<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 scms =3D []<br>
      =C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0 fetcher =3D Fetch(d.getVar=
('SRC_URI').split(), d)<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 urldata =3D fetcher=
.ud<br>
      =C2=A0 File
"/home/aravind2/work/custom-yocto/poky/bitbake/lib/bb/fetch2/__init__.py",
      line 1638, in
Fetch.__init__(urls=3D['git://github.com/expressjs/express.git;protocol=3D=
https',
'npm://registry.npmjs.org;name=3Daccepts;version=3D1.3.7;subdir=3Dnode_mod=
ules/accepts',
'npm://registry.npmjs.org;name=3Darray-flatten;version=3D1.1.1;subdir=3Dno=
de_modules/array-flatten',
'npm://registry.npmjs.org;name=3Dbody-parser;version=3D1.19.0;subdir=3Dnod=
e_modules/body-parser',
'npm://registry.npmjs.org;name=3Dcontent-disposition;version=3D0.5.3;subdi=
r=3Dnode_modules/content-disposition',
'npm://registry.npmjs.org;name=3Dcontent-type;version=3D1.0.4;subdir=3Dnod=
e_modules/content-type',
'npm://registry.npmjs.org;name=3Dcookie;version=3D0.4.0;subdir=3Dnode_modu=
les/cookie',
'npm://registry.npmjs.org;name=3Dcookie-signature;version=3D1.0.6;subdir=
=3Dnode_modules/cookie-signature',
'npm://registry.npmjs.org;name=3Ddebug;version=3D2.6.9;subdir=3Dnode_modul=
es/debug',
'npm://registry.npmjs.org;name=3Ddepd;version=3D1.1.2;subdir=3Dnode_module=
s/depd',
'npm://registry.npmjs.org;name=3Dencodeurl;version=3D1.0.2;subdir=3Dnode_m=
odules/encodeurl',
'npm://registry.npmjs.org;name=3Descape-html;version=3D1.0.3;subdir=3Dnode=
_modules/escape-html',
'npm://registry.npmjs.org;name=3Detag;version=3D1.8.1;subdir=3Dnode_module=
s/etag',
'npm://registry.npmjs.org;name=3Dfinalhandler;version=3D1.1.2;subdir=3Dnod=
e_modules/finalhandler',
'npm://registry.npmjs.org;name=3Dfresh;version=3D0.5.2;subdir=3Dnode_modul=
es/fresh',
'npm://registry.npmjs.org;name=3Dmerge-descriptors;version=3D1.0.1;subdir=
=3Dnode_modules/merge-descriptors',
'npm://registry.npmjs.org;name=3Dmethods;version=3D1.1.2;subdir=3Dnode_mod=
ules/methods',
'npm://registry.npmjs.org;name=3Don-finished;version=3D2.3.0;subdir=3Dnode=
_modules/on-finished',
'npm://registry.npmjs.org;name=3Dparseurl;version=3D1.3.3;subdir=3Dnode_mo=
dules/parseurl',
'npm://registry.npmjs.org;name=3Dpath-to-regexp;version=3D0.1.7;subdir=3Dn=
ode_modules/path-to-regexp',
'npm://registry.npmjs.org;name=3Dproxy-addr;version=3D2.0.6;subdir=3Dnode_=
modules/proxy-addr',
'npm://registry.npmjs.org;name=3Dqs;version=3D6.7.0;subdir=3Dnode_modules/=
qs',
'npm://registry.npmjs.org;name=3Drange-parser;version=3D1.2.1;subdir=3Dnod=
e_modules/range-parser',
'npm://registry.npmjs.org;name=3Dsafe-buffer;version=3D5.1.2;subdir=3Dnode=
_modules/safe-buffer',
'npm://registry.npmjs.org;name=3Dsend;version=3D0.17.1;subdir=3Dnode_modul=
es/send',
'npm://registry.npmjs.org;name=3Dserve-static;version=3D1.14.1;subdir=3Dno=
de_modules/serve-static',
'npm://registry.npmjs.org;name=3Dsetprototypeof;version=3D1.1.1;subdir=3Dn=
ode_modules/setprototypeof',
'npm://registry.npmjs.org;name=3Dstatuses;version=3D1.5.0;subdir=3Dnode_mo=
dules/statuses',
'npm://registry.npmjs.org;name=3Dtype-is;version=3D1.6.18;subdir=3Dnode_mo=
dules/type-is',
'npm://registry.npmjs.org;name=3Dutils-merge;version=3D1.0.1;subdir=3Dnode=
_modules/utils-merge',
'npm://registry.npmjs.org;name=3Dvary;version=3D1.1.2;subdir=3Dnode_module=
s/vary'],
      d=3D&lt;bb.data_smart.DataSmart object at 0x7f7f3b4eca58&gt;,
      cache=3DTrue, localonly=3DFalse, connection_cache=3DNone):<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 try:<br>
      =C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self=
.ud[url] =3D FetchData(url, d,
      localonly)<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 except NonLocalMeth=
od:<br>
      =C2=A0 File
"/home/aravind2/work/custom-yocto/poky/bitbake/lib/bb/fetch2/__init__.py",
      line 1279, in
FetchData.__init__(url=3D'npm://registry.npmjs.org;name=3Daccepts;version=
=3D1.3.7;subdir=3Dnode_modules/accepts',
      d=3D&lt;bb.data_smart.DataSmart object at 0x7f7f3b4eca58&gt;,
      localonly=3DFalse):<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 if hasattr(self.method, "urldata_init"):<br>
      =C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0 self.method.urldata_init(self, d)<br>
      <br>
      =C2=A0 File
      "/home/aravind2/work/custom-yocto/poky/bitbake/lib/bb/fetch2/npm.py"=
,
      line 132, in Npm.urldata_init(ud=3D&lt;bb.fetch2.FetchData object at
      0x7f7f3b4aa518&gt;, d=3D&lt;bb.data_smart.DataSmart object at
      0x7f7f3b4eca58&gt;):<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 if not ud.package:<br>
      =C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0 raise MissingParameterError("Parameter
      'package' required", ud.url)<br>
      <br>
      bb.data_smart.ExpansionError: Failure expanding variable SRCPV,
      expression was ${@bb.fetch2.get_srcrev(d)} which triggered
      exception MissingParameterError: URL:
'npm://registry.npmjs.org;name=3Daccepts;version=3D1.3.7;subdir=3Dnode_mod=
ules/accepts'
      is missing the required parameter 'Parameter 'package' required'<br>
      <br>
      <br>
      Summary: There was 1 ERROR message shown, returning a non-zero
      exit code.<br>
      <a
        href=3D"mailto:aravind2@tmsbuild012:~/work/custom-yocto/mvdevice/b=
uild$"
        target=3D"_blank" rel=3D"noopener" moz-do-not-send=3D"true">aravin=
d2@tmsbuild012:~/work/custom-yocto/mvdevice/build$</a><br>
      <br>
      We would need this in both zeus and dunfell, because we have two
      different targets boards to build where one BSP has no support for
      dunfell.<br>
      <br>
      Is there a way to make these recipes work in both zeus and
      dunfell?<br>
      <br>
      regards<br>
      Arun
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">


</pre>
    </blockquote>
  </body>
</html>

--------------83C2A53F9B82A304A3A73089--

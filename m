Return-Path: <vishwasonu2000@yahoo.com>
Received: from nm2-vm0.bullet.mail.in.yahoo.com
	(nm2-vm0.bullet.mail.in.yahoo.com [121.101.151.210])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id CA894E004CF
	for <poky@yoctoproject.org>; Fri,  7 Oct 2011 03:23:21 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@yahoo.com;
	x-dkim-adsp=none (insecure policy)
Received: from [121.101.151.237] by nm2.bullet.mail.in.yahoo.com with NNFMP;
	07 Oct 2011 10:23:19 -0000
Received: from [121.101.151.232] by tm2.bullet.mail.in.yahoo.com with NNFMP;
	07 Oct 2011 10:22:59 -0000
Received: from [127.0.0.1] by omp1001.mail.in.yahoo.com with NNFMP;
	07 Oct 2011 10:23:18 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 967558.37482.bm@omp1001.mail.in.yahoo.com
Received: (qmail 296 invoked by uid 60001); 7 Oct 2011 10:23:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1317982998; bh=EjvHH7Y0KDBiR0AJ/Bkbb7t3FiwUBKK2ZLrlJsu3+Pc=;
	h=X-YMail-OSG:Received:X-Mailer:References:Message-ID:Date:From:Reply-To:Subject:To:In-Reply-To:MIME-Version:Content-Type;
	b=ZobxLRaYaaWVb6OF5KguKS2b/fLBQe5gE9wyIlYDSmbxOIYZOc44m9+36gQXdR7BNvliy4ItDx5vbMGd7X1ndwfRB72JvgxPZpelPtmV2Eq47F1ArWxrTxvHKKhg4eZyW7S+OgczWd/rMtNyHtqm7Fnw4I2BSek+hZaarFKq9K0=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=X-YMail-OSG:Received:X-Mailer:References:Message-ID:Date:From:Reply-To:Subject:To:In-Reply-To:MIME-Version:Content-Type;
	b=iBMxducpIQ+7jWThHXRniSVSTQZlnI3BT6izV6BssXuJ6wx4zlVa6CElnnntE89v7UwPYp4sA+wEApF1aRKQl5wpRHp+6r9RBw/8nIDyxPiCmzO8gw33BXg9FweLy2PtithQlS8mgNFAfIDwXz2CtvbWTH20etER9a2BZODTXks=;
X-YMail-OSG: x8hpjHMVM1l1LB7hu0CqAJKux4yJMQn7Jx2XI91MmFwvtt2
	lRRpQWmFVcEmkMH5JsqRE01sIctHanjS8awoWA2NUF.0Bdt7.5GLd8PCl.M0
	CTsA7gbzUHEusZTLCii9vifac2ISCcbAmQWzTYCXp6cgSlac7zTTmpC3DrT_
	pBzR349ZTbLw8gz2qpGR7kzRzKOWvtr7uLWoXg2lFBzWxvx.pxp8KyVSt5a0
	x8Q2bG5SrNmmme8gewvspybrfVMBCSxNPmKyTA0nCo1KaU36vg9dl0D1gYKz
	PGwHXvm4o1Gl0asgA8wipBnQlNeevqdXQWxcjZs_i970rFKVoMMhxuxXcFHS
	5bQTiDYZrVC0oriA5lrzpothxhUdpDdflY_0FMgR_W1fHv6la8WLS.TtIoTq
	9TbUKp8Eja0GWIzJgbwsudAnlv8aQu6hL4KjeCywyCutJJrbnRqRoGew-
Received: from [115.111.25.162] by web94706.mail.in2.yahoo.com via HTTP;
	Fri, 07 Oct 2011 15:53:18 IST
X-Mailer: YahooMailWebService/0.8.114.317681
References: <1317712610.92069.YahooMailNeo@web94711.mail.in2.yahoo.com>
	<1317742677.2229.11.camel@scimitar>
	<1317981727.19703.YahooMailNeo@web94701.mail.in2.yahoo.com>
Message-ID: <1317982998.87871.YahooMailNeo@web94706.mail.in2.yahoo.com>
Date: Fri, 7 Oct 2011 15:53:18 +0530 (IST)
From: sonu vishwakarma <vishwasonu2000@yahoo.com>
To: Joshua Lock <josh@linux.intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
In-Reply-To: <1317981727.19703.YahooMailNeo@web94701.mail.in2.yahoo.com>
MIME-Version: 1.0
Subject: Re: : XBMC PACKAGE (package libsdl-mixer-1.2.11-r5: task do_compile: Failed)
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: sonu vishwakarma <vishwasonu2000@yahoo.com>
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 07 Oct 2011 10:23:23 -0000
X-Groupsio-MsgNum: 7038
Content-Type: multipart/mixed;
	boundary="1396951373-1021704877-1317982998=:87871"

--1396951373-1021704877-1317982998=:87871
Content-Type: multipart/alternative; boundary="1396951373-1054975903-1317982998=:87871"

--1396951373-1054975903-1317982998=:87871
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,=0A=0AI'm attaching the recipe which i'm trying to build . =0A=0AThanks =
& Regards,=0ASonu Vishwakarma=0A=0A=0A________________________________=0AFr=
om: sonu vishwakarma <vishwasonu2000@yahoo.com>=0ATo: Joshua Lock <josh@lin=
ux.intel.com>; "poky@yoctoproject.org" <poky@yoctoproject.org>=0ASent: Frid=
ay, 7 October 2011 3:32 PM=0ASubject: Re: [poky] [POKY] : XBMC PACKAGE (pac=
kage libsdl-mixer-1.2.11-r5: task do_compile: Failed)=0A=0A=0A=0A=0AHi,=0AA=
fter knowing the problem , i =0Alooked for the solution and found a patch t=
o libtool =0A'libtool-2.4-r2/libtool-2.4/libltdl/config/ltmain.m4sh'=0Athat=
 describes a function" if PATH begins with the sysroot replace it with =3D =
" , this may be creating the problem . Also in the =0A=0AlibSDL.la i could =
see the definition of dependency_libs that include "=3D/usr/lib.=0AWhat to =
do now ? i couldn't find a solution to this .=0A=0A=0AThanks & Regards,=0AS=
onu Vishwakarma=0A=0A________________________________=0AFrom: Joshua Lock <=
josh@linux.intel.com>=0ATo: poky@yoctoproject.org=0ASent: Tuesday, 4 Octobe=
r 2011 9:07 PM=0ASubject: Re: [poky] [POKY] : XBMC PACKAGE (package libsdl-=
mixer-1.2.11-r5: task do_compile: Failed)=0A=0AOn Tue, 2011-10-04 at 12:46 =
+0530, sonu vishwakarma wrote:=0A> | ./libtool: line 6399: cd: =3D/usr/lib:=
 No such file or directory=0A=0AHere's the problem! Somewhere you're passin=
g =3D/usr/lib which isn't a=0Areal path.=0A=0APlease don't start new thread=
s to continue existing discussion.=0A=0APlease share the recipes=0A you're =
trying to build so that we can try and=0Ahelp.=0A=0AThanks,=0AJoshua=0A-- =
=0AJoshua Lock=0A=A0 =A0 =A0 =A0 Yocto Project "Johannes factotum"=0A=A0 =
=A0 =A0 =A0 Intel Open Source Technology Centre=0A=0A______________________=
_________________________=0Apoky mailing list=0Apoky@yoctoproject.org=0Ahtt=
ps://lists.yoctoproject.org/listinfo/poky

--1396951373-1054975903-1317982998=:87871
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:ti=
mes new roman, new york, times, serif;font-size:12pt"><div><span>Hi,<br></s=
pan></div><div><span>I'm attaching the recipe which i'm trying to build . <=
br></span></div><div>Thanks &amp; Regards,</div>=0ASonu Vishwakarma<div><br=
></div><div style=3D"font-family: times new roman,new york,times,serif; fon=
t-size: 12pt;"><div style=3D"font-family: times new roman,new york,times,se=
rif; font-size: 12pt;"><font face=3D"Arial" size=3D"2"><hr size=3D"1"><b><s=
pan style=3D"font-weight: bold;">From:</span></b> sonu vishwakarma &lt;vish=
wasonu2000@yahoo.com&gt;<br><b><span style=3D"font-weight: bold;">To:</span=
></b> Joshua Lock &lt;josh@linux.intel.com&gt;; "poky@yoctoproject.org" &lt=
;poky@yoctoproject.org&gt;<br><b><span style=3D"font-weight: bold;">Sent:</=
span></b> Friday, 7 October 2011 3:32 PM<br><b><span style=3D"font-weight: =
bold;">Subject:</span></b> Re: [poky] [POKY] : XBMC PACKAGE (package libsdl=
-mixer-1.2.11-r5: task do_compile: Failed)<br></font><br><div id=3D"yiv2074=
412272"><div><div style=3D"color: rgb(0, 0, 0); background-color: rgb(255, =
255, 255); font-family: times new roman,new york,times,serif; font-size: 12=
pt;"><div><span><br></span></div><div><span>Hi,</span></div>=0A<div><span>A=
fter knowing the problem , i =0Alooked for the solution and found a patch t=
o libtool =0A'libtool-2.4-r2/libtool-2.4/libltdl/config/ltmain.m4sh'</span>=
</div>=0A<div><span> that describes a function</span><span> " if PATH begin=
s with the sysroot replace it with =3D " , this may be creating the problem=
 . Also in the <br></span></div>=0A<div><span>libSDL.la i could see </span>=
<span>the definition of dependency_libs that include "=3D/usr/lib.</span></=
div>=0A<div><span>What to do now ? i couldn't find a solution to this .<br>=
</span></div>=0A=0A<div><br></div>=0A<div>Thanks &amp; Regards,</div>=0ASon=
u Vishwakarma<div style=3D"font-family: times new roman,new york,times,seri=
f; font-size: 12pt;"><div style=3D"font-family: times new roman,new york,ti=
mes,serif; font-size: 12pt;"><font face=3D"Arial" size=3D"2"><hr size=3D"1"=
><b><span style=3D"font-weight: bold;">From:</span></b> Joshua Lock &lt;jos=
h@linux.intel.com&gt;<br><b><span style=3D"font-weight: bold;">To:</span></=
b> poky@yoctoproject.org<br><b><span style=3D"font-weight: bold;">Sent:</sp=
an></b> Tuesday, 4 October 2011 9:07 PM<br><b><span style=3D"font-weight: b=
old;">Subject:</span></b> Re: [poky] [POKY] : XBMC PACKAGE (package libsdl-=
mixer-1.2.11-r5: task do_compile: Failed)<br></font><br>On Tue, 2011-10-04 =
at 12:46 +0530, sonu vishwakarma wrote:<br>&gt; | ./libtool: line 6399: cd:=
 =3D/usr/lib: No such file or directory<br><br>Here's the problem! Somewher=
e you're passing =3D/usr/lib which isn't a<br>real path.<br><br>Please don'=
t start new threads to continue existing discussion.<br><br>Please share th=
e recipes=0A you're trying to build so that we can try and<br>help.<br><br>=
Thanks,<br>Joshua<br>-- <br>Joshua Lock<br>&nbsp; &nbsp; &nbsp; &nbsp; Yoct=
o Project "Johannes factotum"<br>&nbsp; &nbsp; &nbsp; &nbsp; Intel Open Sou=
rce Technology Centre<br><br>______________________________________________=
_<br>poky mailing list<br><a rel=3D"nofollow" ymailto=3D"mailto:poky@yoctop=
roject.org" target=3D"_blank" href=3D"mailto:poky@yoctoproject.org">poky@yo=
ctoproject.org</a><br><a rel=3D"nofollow" target=3D"_blank" href=3D"https:/=
/lists.yoctoproject.org/listinfo/poky">https://lists.yoctoproject.org/listi=
nfo/poky</a><br><br><br></div></div></div></div></div><br><br></div></div><=
/div></body></html>

--1396951373-1054975903-1317982998=:87871--

--1396951373-1021704877-1317982998=:87871
Content-Type: application/octet-stream; name="libsdl-mixer_1.2.11.bb"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="libsdl-mixer_1.2.11.bb"

REVTQ1JJUFRJT04gPSAiU2ltcGxlIERpcmVjdE1lZGlhIExheWVyIG1peGVyIGxpYnJhcnkuIgpT
RUNUSU9OID0gImxpYnMiClBSSU9SSVRZID0gIm9wdGlvbmFsIgpERVBFTkRTID0gInZpcnR1YWwv
bGlic2RsIGZsYWMgbGlibWlrbW9kIGxpYnZvcmJpcyAgJHtAYmFzZV9jb25kaXRpb25hbCgnRU5U
RVJQUklTRV9ESVNUUk8nLCAnMScsICcnLCAnbGlibWFkJywgZCl9IgpMSUNFTlNFID0gIkxHUEwi
CkxJQ19GSUxFU19DSEtTVU0gPSAiZmlsZTovL0NPUFlJTkc7bWQ1PTI3ODE4Y2Q3ZmQ4Mzg3N2E4
ZTNlZjgyYjgyNzk4ZWY0IiAKCgpQUiA9ICJyNSIKClNSQ19VUkkgPSAiaHR0cDovL3d3dy5saWJz
ZGwub3JnL3Byb2plY3RzL1NETF9taXhlci9yZWxlYXNlL1NETF9taXhlci0ke1BWfS50YXIuZ3og
XAogICAgICAgICAgIGZpbGU6Ly9maXgtZmxhYy1tYWRuZXNzLmRpZmYiCgpTID0gIiR7V09SS0RJ
Un0vU0RMX21peGVyLSR7UFZ9IgoKZXhwb3J0IFNETF9DT05GSUcgPSAiJHtTVEFHSU5HX0JJTkRJ
Ul9DUk9TU30vc2RsLWNvbmZpZyIKCmluaGVyaXQgYXV0b3Rvb2xzCgojIEFsdGhvdWdoIHdlIGJ1
aWxkIFNNUEVHIGxldHMgbm90IHVzZSBpdCBhcyBpdCBpcyBwb2ludGxlc3MgaW4gdGhlIGVtYmVk
ZGVkIHNwYWNlLgoKIyBBZGQgc3VwcG9ydCBmb3IgcnVudGltZSBsaW5raW5nIHdpdGggbGlibWFk
IHNvIHdlIGNhbiB1c2UgdGhhdCBmb3IgZml4ZWQgcG9pbnQgTVAzIGRlY29kaW5nLgojIEFkZCBz
dXBwb3J0IGZvciBydW50aW1lIGxpbmtpbmcgd2l0aCBsaWJ0cmVtb3Igc28gd2UgY2FuIHVzZSB0
aGF0IGZvciBmaXhlZCBwb2ludCBPR0cgVm9yYmlzIGRlY29kaW5nLgoKRVhUUkFfT0VDT05GID0g
Ii0tZGlzYWJsZS1tdXNpYy1tcDMgLS1lbmFibGUtbXVzaWMtb2dnIC0tZW5hYmxlLW11c2ljLW9n
Zy10cmVtb3IgJHtAYmFzZV9jb25kaXRpb25hbCgnRU5URVJQUklTRV9ESVNUUk8nLCAnMScsICcn
LCAnLS1lbmFibGUtbXVzaWMtbXAzLW1hZC1ncGwnLCBkKX0gTElCUz0tTCR7U1RBR0lOR19MSUJE
SVJ9IC0td2l0aC1kaXJlY3RmYj0ke1NUQUdJTkdfTElCRElSfSIKCmRvX2NvbXBpbGUoKSB7Cgkj
IE92ZXJyaWRlIFNETF9MSUJTIHRvIGluY2x1ZGUgYSBsaW5rZXIgcnBhdGggc28gdGhlIGxpbmtl
cgoJIyBjYW4gZmluZCB0aGUgY29ycmVjdCBsaWJkbC5zbyB3aGVuIGl0IGxpbmtzIHBsYXl3YXZl
IHRvCgkjIGxpYlNETF9taXhlci5zby4KCSBvZV9ydW5tYWtlIFNETF9MSUJTPSIkKHBrZy1jb25m
aWcgc2RsIC0tbGlicykgLVdsLC1ycGF0aC1saW5rLCR7U1RBR0lOR19MSUJESVJ9IgoJI29lX3J1
bm1ha2UgREVTVERJUj0ke0R9IFNETF9MSUJTPSIkKHBrZy1jb25maWcgLS1saWJzIHNkbCkgLVds
LC1ycGF0aC1saW5rLCR7U1RBR0lOR19MSUJESVJ9Igp9CgpTUkNfVVJJW21kNXN1bV0gPSAiNjVh
ZGEzZDk5N2ZlODUxMDkxOTFhNWZiMDgzZjI0OGMiClNSQ19VUklbc2hhMjU2c3VtXSA9ICI4NjE0
NWFjMzljYWM2ZDJjNjE2OWMyMjZmOTM3NjQ4ZGNhNWU4OWRjZDgyODc1MTc2M2RkMTc0ZmE5YWY5
Y2Y5Igo=

--1396951373-1021704877-1317982998=:87871
Content-Type: application/octet-stream; name="libSDL.la"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="libSDL.la"

IyBsaWJTREwubGEgLSBhIGxpYnRvb2wgbGlicmFyeSBmaWxlCiMgR2VuZXJhdGVkIGJ5IGxpYnRv
b2wgKEdOVSBsaWJ0b29sKSAyLjQKIwojIFBsZWFzZSBETyBOT1QgZGVsZXRlIHRoaXMgZmlsZSEK
IyBJdCBpcyBuZWNlc3NhcnkgZm9yIGxpbmtpbmcgdGhlIGxpYnJhcnkuCgojIFRoZSBuYW1lIHRo
YXQgd2UgY2FuIGRsb3BlbigzKS4KZGxuYW1lPSdsaWJTREwtMS4yLnNvLjAnCgojIE5hbWVzIG9m
IHRoaXMgbGlicmFyeS4KbGlicmFyeV9uYW1lcz0nbGliU0RMLTEuMi5zby4wLjExLjMgbGliU0RM
LTEuMi5zby4wIGxpYlNETC5zbycKCiMgVGhlIG5hbWUgb2YgdGhlIHN0YXRpYyBhcmNoaXZlLgpv
bGRfbGlicmFyeT0nbGliU0RMLmEnCgojIExpbmtlciBmbGFncyB0aGF0IGNhbiBub3QgZ28gaW4g
ZGVwZW5kZW5jeV9saWJzLgppbmhlcml0ZWRfbGlua2VyX2ZsYWdzPScnCgojIExpYnJhcmllcyB0
aGF0IHRoaXMgb25lIGRlcGVuZHMgdXBvbi4KI2RlcGVuZGVuY3lfbGlicz0nIC1MIC91c3IvbGli
IC91c3IvbGliL2xpYmRpcmVjdGZiLmxhIC91c3IvbGliL2xpYmZ1c2lvbi5sYSAvdXNyL2xpYi9s
aWJmdXNpb24ubGEgL3Vzci9saWIvbGliZGlyZWN0LmxhIC91c3IvbGliL2xpYmRpcmVjdC5sYSAt
bHogLWx0cyAvdXNyL2xpYi9saWJ6LmxhIC91c3IvbGliL2xpYnRzLmxhIC1sbSAtbGRsIC1scHRo
cmVhZCcKZGVwZW5kZW5jeV9saWJzPScgLUw9L3Vzci9saWIgPS91c3IvbGliL2xpYmRpcmVjdGZi
LmxhID0vdXNyL2xpYi9saWJmdXNpb24ubGEgPS91c3IvbGliL2xpYmZ1c2lvbi5sYSA9L3Vzci9s
aWIvbGliZGlyZWN0LmxhID0vdXNyL2xpYi9saWJkaXJlY3QubGEgLWx6IC1sdHMgPS91c3IvbGli
L2xpYnoubGEgPS91c3IvbGliL2xpYnRzLmxhIC1sbSAtbGRsIC1scHRocmVhZCcKCiMgTmFtZXMg
b2YgYWRkaXRpb25hbCB3ZWFrIGxpYnJhcmllcyBwcm92aWRlZCBieSB0aGlzIGxpYnJhcnkKd2Vh
a19saWJyYXJ5X25hbWVzPScnCgojIFZlcnNpb24gaW5mb3JtYXRpb24gZm9yIGxpYlNETC4KY3Vy
cmVudD0xMQphZ2U9MTEKcmV2aXNpb249MwoKIyBJcyB0aGlzIGFuIGFscmVhZHkgaW5zdGFsbGVk
IGxpYnJhcnk/Cmluc3RhbGxlZD15ZXMKCiMgU2hvdWxkIHdlIHdhcm4gYWJvdXQgcG9ydGFiaWxp
dHkgd2hlbiBsaW5raW5nIGFnYWluc3QgLW1vZHVsZXM/CnNob3VsZG5vdGxpbms9bm8KCiMgRmls
ZXMgdG8gZGxvcGVuL2RscHJlb3BlbgpkbG9wZW49JycKZGxwcmVvcGVuPScnCgojIERpcmVjdG9y
eSB0aGF0IHRoaXMgbGlicmFyeSBuZWVkcyB0byBiZSBpbnN0YWxsZWQgaW46CmxpYmRpcj0nL3Vz
ci9saWInCg==

--1396951373-1021704877-1317982998=:87871--

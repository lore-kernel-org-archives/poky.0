Return-Path: <vishwasonu2000@yahoo.com>
Received: from nm3-vm0.bullet.mail.in.yahoo.com
	(nm3-vm0.bullet.mail.in.yahoo.com [121.101.151.212])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id A81DAE0127C
	for <poky@yoctoproject.org>; Mon, 10 Oct 2011 21:58:12 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@yahoo.com;
	x-dkim-adsp=none (insecure policy)
Received: from [121.101.151.237] by nm3.bullet.mail.in.yahoo.com with NNFMP;
	11 Oct 2011 04:58:09 -0000
Received: from [121.101.151.234] by tm2.bullet.mail.in.yahoo.com with NNFMP;
	11 Oct 2011 04:57:48 -0000
Received: from [127.0.0.1] by omp1003.mail.in.yahoo.com with NNFMP;
	11 Oct 2011 04:58:36 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 381191.43058.bm@omp1003.mail.in.yahoo.com
Received: (qmail 10485 invoked by uid 60001); 11 Oct 2011 04:58:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1318309089; bh=q4qbENzG7wNLHPtc2miz41eQ7YD4CeTwk8VFVxMPFw0=;
	h=X-YMail-OSG:Received:X-Mailer:References:Message-ID:Date:From:Reply-To:Subject:To:In-Reply-To:MIME-Version:Content-Type;
	b=4cQcmF7TwbLv6kNAwg8LDZ+3xKnbYv5KvK+OmTYqvt3iI6xnSu1FTdq8Pv7oWeaxM4vN1Kqgr+O4d43+6ChR4dw4pnm5BHJgjhP8ei5yppngMyS/DtwFZFPH+zzGWG5yXEfIxkJRhWxLd9JQxHJeVlNlZjVJ3cYTR4+iQd8FLAM=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=X-YMail-OSG:Received:X-Mailer:References:Message-ID:Date:From:Reply-To:Subject:To:In-Reply-To:MIME-Version:Content-Type;
	b=MfSl+aqEn3i5+EwtYjFBkIFjdWtomeaCNw8woXT7fTqrKV0AvalTontEhw4e3qT/EPG9W7wenwX6Ul49E/UTHEuBp829Q4/E+m+JoF589h2vKsaAPdl0NmXuciK0LEpj55IvUwil84FJJJlMvA37uu085ANyBel4ElIByd7pgHk=;
X-YMail-OSG: R5HcWeEVM1khSecdDrK4RK.pMniqNxazwJF4WkPEHRbhe6r
	R0V1O1FDxhij6K6Uc2je4RA_1VdZsZyBsG2bOJNAiyQbVji2xKyjtS1ho6cY
	K92FjFInP8tFSQ_lddLXwCHcdiK_LKGdmHYxtukZ81eyP3liNj50br6DN5DO
	eiJIyypqn7f_t2zGhc3eGE2NX6gSUtYebvPep4hHeHsn8ibwbzCYdKCro.gY
	pC6OOrNJgE7UMzSvnlOol2ppB97cgzcRhUj2hbqloE.yTMn8z6k0ZpHMI5.v
	LPNTnYnXvySBvAQYDtWAFO0nKb.WOWqs_uPGjVQ2QcqP3G8zvvXMkCFKWK3v
	5Lpy_SablFHXF2ad2s4txTbj2inVMOuNGJUfoBeDXFVBzOpDySh3r14HUB8r
	J2PupvpGPiD2Gw7DiqydSkVSS6G_vjoBmgdSk9cHAOUmyBLdHKDQb2_RO6vy
	w_h4o0.TOdn01YaRP
Received: from [115.111.25.162] by web94715.mail.in2.yahoo.com via HTTP;
	Tue, 11 Oct 2011 10:28:05 IST
X-Mailer: YahooMailWebService/0.8.114.317681
References: <1317712610.92069.YahooMailNeo@web94711.mail.in2.yahoo.com>
	<1317742677.2229.11.camel@scimitar>
	<1317981727.19703.YahooMailNeo@web94701.mail.in2.yahoo.com>
	<1317982998.87871.YahooMailNeo@web94706.mail.in2.yahoo.com>
Message-ID: <1318309085.98662.YahooMailNeo@web94715.mail.in2.yahoo.com>
Date: Tue, 11 Oct 2011 10:28:05 +0530 (IST)
From: sonu vishwakarma <vishwasonu2000@yahoo.com>
To: Joshua Lock <josh@linux.intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
In-Reply-To: <1317982998.87871.YahooMailNeo@web94706.mail.in2.yahoo.com>
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
X-List-Received-Date: Tue, 11 Oct 2011 04:58:15 -0000
X-Groupsio-MsgNum: 7040
Content-Type: multipart/mixed;
	boundary="-1113201137-1051379166-1318309085=:98662"

---1113201137-1051379166-1318309085=:98662
Content-Type: multipart/alternative; boundary="-1113201137-1050440263-1318309085=:98662"

---1113201137-1050440263-1318309085=:98662
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,=0A=0AI can't find any solution to my libsdl-mixer problem , please help=
 me out.=0AIf you want any other details kindly ask me.I'm once again attac=
hing xbmc =0A=0A& libsdl-mixer recepies.=0A=0AI'm looking forward to hear f=
rom you soon .=0A=0AThanks & Regards,=0ASonu Vishwakarma=0A=0A=0A=0A_______=
_________________________=0AFrom: sonu vishwakarma <vishwasonu2000@yahoo.co=
m>=0ATo: Joshua Lock <josh@linux.intel.com>; "poky@yoctoproject.org" <poky@=
yoctoproject.org>=0ASent: Friday, 7 October 2011 3:53 PM=0ASubject: Re: [po=
ky] [POKY] : XBMC PACKAGE (package libsdl-mixer-1.2.11-r5: task do_compile:=
 Failed)=0A=0A=0AHi,=0A=0AI'm attaching the recipe which i'm trying to buil=
d . =0A=0AThanks & Regards,=0ASonu Vishwakarma=0A=0A=0A____________________=
____________=0AFrom: sonu vishwakarma <vishwasonu2000@yahoo.com>=0ATo: Josh=
ua Lock <josh@linux.intel.com>; "poky@yoctoproject.org" <poky@yoctoproject.=
org>=0ASent: Friday, 7 October 2011 3:32 PM=0ASubject: Re: [poky] [POKY] : =
XBMC PACKAGE (package libsdl-mixer-1.2.11-r5: task do_compile: Failed)=0A=
=0A=0A=0A=0AHi,=0AAfter knowing the problem , i =0Alooked for the solution =
and found a patch to libtool =0A'libtool-2.4-r2/libtool-2.4/libltdl/config/=
ltmain.m4sh'=0Athat describes a function" if PATH begins with the sysroot r=
eplace it with =3D " , this may be creating the problem . Also in the =0A=
=0AlibSDL.la i could see the definition of dependency_libs that include "=
=3D/usr/lib.=0AWhat to do now ? i couldn't find a solution to this .=0A=0A=
=0AThanks & Regards,=0ASonu Vishwakarma=0A=0A______________________________=
__=0AFrom: Joshua Lock <josh@linux.intel.com>=0ATo: poky@yoctoproject.org=
=0ASent: Tuesday, 4 October 2011 9:07 PM=0ASubject: Re: [poky] [POKY] : XBM=
C PACKAGE (package libsdl-mixer-1.2.11-r5: task do_compile: Failed)=0A=0AOn=
 Tue, 2011-10-04 at 12:46 +0530, sonu vishwakarma wrote:=0A> | ./libtool: l=
ine 6399: cd: =3D/usr/lib: No such file or directory=0A=0AHere's the proble=
m! Somewhere you're passing =3D/usr/lib which isn't a=0Areal path.=0A=0APle=
ase don't start new threads to continue existing discussion.=0A=0APlease sh=
are the recipes=0A you're trying to build so that we can try and=0Ahelp.=0A=
=0AThanks,=0AJoshua=0A-- =0AJoshua Lock=0A=A0 =A0 =A0 =A0 Yocto Project "Jo=
hannes factotum"=0A=A0 =A0 =A0 =A0 Intel Open Source Technology Centre=0A=
=0A_______________________________________________=0Apoky mailing list=0Apo=
ky@yoctoproject.org=0Ahttps://lists.yoctoproject.org/listinfo/poky

---1113201137-1050440263-1318309085=:98662
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:ti=
mes new roman, new york, times, serif;font-size:12pt"><div><span>Hi,</span>=
</div><div><br><span></span></div><div><span class=3D"tab">I can't find any=
 solution to my libsdl-mixer problem , please help me out.</span></div><div=
><span class=3D"tab">If you want any other details kindly ask me.I'm once a=
gain attaching xbmc <br></span></div><div><span class=3D"tab">&amp; libsdl-=
mixer recepies.<br></span></div><div><span class=3D"tab">I'm looking forwar=
d to hear from you soon .</span></div><div><br><span class=3D"tab"></span><=
/div><div>Thanks &amp; Regards,</div>=0ASonu Vishwakarma<div><br></div><div=
><br></div><div style=3D"font-family: times new roman,new york,times,serif;=
 font-size: 12pt;"><div style=3D"font-family: times new roman,new york,time=
s,serif; font-size: 12pt;"><font face=3D"Arial" size=3D"2"><hr size=3D"1"><=
b><span style=3D"font-weight: bold;">From:</span></b> sonu vishwakarma &lt;=
vishwasonu2000@yahoo.com&gt;<br><b><span style=3D"font-weight: bold;">To:</=
span></b> Joshua Lock &lt;josh@linux.intel.com&gt;; "poky@yoctoproject.org"=
 &lt;poky@yoctoproject.org&gt;<br><b><span style=3D"font-weight: bold;">Sen=
t:</span></b> Friday, 7 October 2011 3:53 PM<br><b><span style=3D"font-weig=
ht: bold;">Subject:</span></b> Re: [poky] [POKY] : XBMC PACKAGE (package li=
bsdl-mixer-1.2.11-r5: task do_compile: Failed)<br></font><br><div id=3D"yiv=
514529451"><div><div style=3D"color: rgb(0, 0, 0); background-color: rgb(25=
5, 255, 255); font-family: times new roman,new york,times,serif; font-size:=
 12pt;"><div><span>Hi,<br></span></div><div><span>I'm
 attaching the recipe which i'm trying to build . <br></span></div><div>Tha=
nks &amp; Regards,</div>=0ASonu Vishwakarma<div><br></div><div style=3D"fon=
t-family: times new roman,new york,times,serif; font-size: 12pt;"><div styl=
e=3D"font-family: times new roman,new york,times,serif; font-size: 12pt;"><=
font face=3D"Arial" size=3D"2"><hr size=3D"1"><b><span style=3D"font-weight=
: bold;">From:</span></b> sonu vishwakarma &lt;vishwasonu2000@yahoo.com&gt;=
<br><b><span style=3D"font-weight: bold;">To:</span></b> Joshua Lock &lt;jo=
sh@linux.intel.com&gt;; "poky@yoctoproject.org" &lt;poky@yoctoproject.org&g=
t;<br><b><span style=3D"font-weight: bold;">Sent:</span></b> Friday, 7 Octo=
ber 2011 3:32 PM<br><b><span style=3D"font-weight: bold;">Subject:</span></=
b> Re: [poky] [POKY] : XBMC PACKAGE (package libsdl-mixer-1.2.11-r5: task d=
o_compile: Failed)<br></font><br><div id=3D"yiv514529451"><div><div style=
=3D"color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); font-family:=
 times new roman,new york,times,serif; font-size: 12pt;"><div><span><br></s=
pan></div><div><span>Hi,</span></div>=0A<div><span>After knowing the proble=
m , i =0Alooked for the solution and found a patch to libtool =0A'libtool-2=
.4-r2/libtool-2.4/libltdl/config/ltmain.m4sh'</span></div>=0A<div><span> th=
at describes a function</span><span> " if PATH begins with the sysroot repl=
ace it with =3D " , this may be creating the problem . Also in the <br></sp=
an></div>=0A<div><span>libSDL.la i could see </span><span>the definition of=
 dependency_libs that include "=3D/usr/lib.</span></div>=0A<div><span>What =
to do now ? i couldn't find a solution to this .<br></span></div>=0A=0A<div=
><br></div>=0A<div>Thanks &amp; Regards,</div>=0ASonu Vishwakarma<div style=
=3D"font-family: times new roman,new york,times,serif; font-size: 12pt;"><d=
iv style=3D"font-family: times new roman,new york,times,serif; font-size: 1=
2pt;"><font face=3D"Arial" size=3D"2"><hr size=3D"1"><b><span style=3D"font=
-weight: bold;">From:</span></b> Joshua Lock &lt;josh@linux.intel.com&gt;<b=
r><b><span style=3D"font-weight: bold;">To:</span></b> poky@yoctoproject.or=
g<br><b><span style=3D"font-weight: bold;">Sent:</span></b> Tuesday, 4 Octo=
ber 2011 9:07 PM<br><b><span style=3D"font-weight: bold;">Subject:</span></=
b> Re: [poky] [POKY] : XBMC PACKAGE (package libsdl-mixer-1.2.11-r5: task d=
o_compile: Failed)<br></font><br>On Tue, 2011-10-04 at 12:46 +0530, sonu vi=
shwakarma wrote:<br>&gt; | ./libtool: line 6399: cd: =3D/usr/lib: No such f=
ile or directory<br><br>Here's the problem! Somewhere you're passing =3D/us=
r/lib which isn't a<br>real path.<br><br>Please don't start new threads to =
continue existing discussion.<br><br>Please share the recipes=0A you're try=
ing to build so that we can try and<br>help.<br><br>Thanks,<br>Joshua<br>--=
 <br>Joshua Lock<br>&nbsp; &nbsp; &nbsp; &nbsp; Yocto Project "Johannes fac=
totum"<br>&nbsp; &nbsp; &nbsp; &nbsp; Intel Open Source Technology Centre<b=
r><br>_______________________________________________<br>poky mailing list<=
br><a rel=3D"nofollow" ymailto=3D"mailto:poky@yoctoproject.org" target=3D"_=
blank" href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br><=
a rel=3D"nofollow" target=3D"_blank" href=3D"https://lists.yoctoproject.org=
/listinfo/poky">https://lists.yoctoproject.org/listinfo/poky</a><br><br><br=
></div></div></div></div></div><br><br></div></div></div></div></div><br><b=
r></div></div></div></body></html>

---1113201137-1050440263-1318309085=:98662--

---1113201137-1051379166-1318309085=:98662
Content-Type: application/octet-stream; name="xbmc_svn.bb"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="xbmc_svn.bb"

REVTQ1JJUFRJT04gPSAiWEJNQyBNZWRpYSBDZW50ZXIiCkxJQ0VOU0UgPSAieGJtYyIKCQkKREVQ
RU5EUyA9ICJncGVyZi1uYXRpdmUgbGlieG11IGZyaWJpZGkgbXBlZzJkZWMgZmZtcGVnIHNhbWJh
IGZvbnRjb25maWcgY3VybCBweXRob24gbGlibW9kcGx1ZyBsaWJtaWNyb2h0dHBkIHdhdnBhY2sg
bGlibW1zIGNtYWtlLW5hdGl2ZSAgbXlzcWw1IHNxbGl0ZTMgbGlibW1zIGZhYWQyIGxpYmNkaW8g
bGlicGNyZSBib29zdCBsem8yIGVuY2EgYXZhaGkgbGlic2FtcGxlcmF0ZTAgbGlieGluZXJhbWEg
bGlieHJhbmRyIGxpYnh0c3QgYnppcDIgIGphc3BlciB6aXAtbmF0aXZlIHpsaWIgbGlic2RsLW1p
eGVyIgojcmVxdWlyZSByZWNpcGVzL2VnbC9lZ2wuaW5jCgpTUkNSRVYgPSAiZTJhYjQ4MWViZTk2
NDMyMWMzNThhYjlkNjQwMjA4OGM3MTRhZGNiZSIKClBWID0gIjEwLjA1IgpQUiA9ICJyMTEiClBS
X2FwcGVuZCA9ICIrZ2l0ciR7U1JDUFZ9IgoKU1JDX1VSSSA9ICJnaXQ6Ly94Ym1jLmdpdC5zb3Vy
Y2Vmb3JnZS5uZXQvZ2l0cm9vdC94Ym1jL3hibWM7cHJvdG9jb2w9Z2l0O2JyYW5jaD1tYXN0ZXIg
XApmaWxlOi8vMDAwMS1Pbmx5LWNoZWNrLWZvci1uYXNtLW9uLWk2ODYtaXQtaXMtYm9ndXMtb24t
QVJNLXdoaWNoLnBhdGNoIFwKZmlsZTovLzAwMDItRXhjbHVkZS1nbnUtY29uZmlnaXplLWZvci1u
Z3N0ci1tLVRoYW5rcy1rb2VuLnBhdGNoIFwKZmlsZTovLzAwMDMtV29ya2Fyb3VuZC10by1jb21w
aWxlLXB5dGhvbi1vbi1uZ3N0ci1tLXdpdGgtUHl0aG9uLS5wYXRjaCBcCmZpbGU6Ly8wMDA0LURv
bi10LXVzZS1zdWRvLWluLWluc3RhbGwtb2YteGJtYy5iaW4tbm90LWFsbC1kaXN0cmkucGF0Y2gg
XApmaWxlOi8vMDAwNS1IYXJkY29kZS1hcm03LWZvci1ub3cucGF0Y2ggXApmaWxlOi8vMDAwNi1I
YXJkY29kZS1weXRob24yLjYtZm9yLW5vdy5wYXRjaCBcCmZpbGU6Ly8wMDA3LU5vLW5lZWQtZm9y
LUZFSC1vbi1lbWJlZGRlZC1uZWVkLWEtYmV0dGVyLXdheS10by1ub3QucGF0Y2ggXApmaWxlOi8v
MDAwOC1jb25maWd1cmUuaW4tYWxzby1wYXNzLWRvd24tdGFyZ2V0LXdoZW4tdXNpbmctaG9zdC1h
LnBhdGNoIFwKZmlsZTovLzAwMDktQWRkZWQtYS1jb25maWd1cmUtb3B0aW9uLWRpc2FibGUtb3B0
aWNhbC1kcml2ZS5wYXRjaCBcCmZpbGU6Ly8wMDEwLUZpeGVkLXNvLWNvbXBpbGUtd29ya2VkLXdo
ZW4tZGlzYWJsaW5nLW9wdGljYWwucGF0Y2ggXApmaWxlOi8vMDAxMS1yZXZlcnRlZC1zby1ub3Jt
YWwtYm9vdHN0cmFwLWRvZXNuLXQtZXhjbHVkZS1nbnUtY29uLnBhdGNoIFwKZmlsZTovLzAwMTIt
Zml4LWx6by10aGluZ3MucGF0Y2ggXAoiCgppbmhlcml0IGF1dG90b29scyBnZXR0ZXh0CgpTID0g
IiR7V09SS0RJUn0vZ2l0IgoKRVhUUkFfT0VDT05GID0gIiBcCiAtLWVuYWJsZS1nbGVzIFwKIC0t
ZGlzYWJsZS1vcHRpY2FsLWRyaXZlIFwKIC0tZW5hYmxlLWV4dGVybmFsLWxpYnJhcmllcyBcCiIK
CmRvX2NvbmZpZ3VyZSgpIHsKCWlmIFsgLWUgYm9vdHN0cmFwLmFuZ3N0cm9tIF0gOyB0aGVuCgkJ
c2ggYm9vdHN0cmFwLmFuZ3N0cm9tCgllbHNlCgkJc2ggYm9vdHN0cmFwCglmaQoJb2VfcnVuY29u
Zgp9Cgpkb19jb21waWxlX3ByZXBlbmQoKSB7Cglmb3IgaSBpbiAkKGZpbmQgLiAtbmFtZSAiTWFr
ZWZpbCoiKSA7IGRvCgkJc2VkIC1pICdzOkkvdXNyL2luY2x1ZGU6SSR7U1RBR0lOR19JTkNESVJ9
OmcnICRpCglkb25lCglmb3IgaSBpbiAkKGZpbmQgLiAtbmFtZSAiKi5tYWsqIikgOyBkbwoJCXNl
ZCAtaSAnczpJL3Vzci9pbmNsdWRlOkkke1NUQUdJTkdfSU5DRElSfTpnJyAkaQoJZG9uZQoJc2Vk
IC1pICdzOkkvdXNyL2luY2x1ZGU6SSR7U1RBR0lOR19JTkNESVJ9OmcnICR7U30vTWFrZWZpbGUJ
Cn0KCmRvX2luc3RhbGxfYXBwZW5kKCkgewoJbG4gLXNmICR7bGliZGlyfS94Ym1jL3N5c3RlbS9w
eXRob24vcHl0aG9uMjQtYXJtLnNvICR7RH0ke2RhdGFkaXJ9L3hibWMvc3lzdGVtL3B5dGhvbi8g
fHwgdHJ1ZQoJbG4gLXNmICR7bGliZGlyfS94Ym1jL3N5c3RlbS9weXRob24vcHl0aG9uMjYtYXJt
LnNvICR7RH0ke2RhdGFkaXJ9L3hibWMvc3lzdGVtL3B5dGhvbi8gfHwgdHJ1ZQp9CgpGSUxFU18k
e1BOfSArPSAiJHtkYXRhZGlyfS94c2Vzc2lvbnMiCkZJTEVTXyR7UE59LWRiZyArPSAiJHtsaWJk
aXJ9L3hibWMvLmRlYnVnICR7bGliZGlyfS94Ym1jLyovLmRlYnVnICR7bGliZGlyfS94Ym1jLyov
Ki8uZGVidWcgJHtsaWJkaXJ9L3hibWMvKi8qLyovLmRlYnVnIgoKIyBPbmx5IGJ1aWxkcyB3aXRo
IGdsaWJjIGN1cnJlbnRseSwgc28gdGhpcyBpcyAic2FmZSIKUlJFQ09NTUVORFNfJHtQTn0gKz0g
ImdsaWJjLWNoYXJtYXAtaWJtODUwIGdsaWJjLWdjb252LWlibTg1MCIKCiMgR05VX0hBU0ggUUEg
ZXJyb3JzLi4uCklOU0FORV9TS0lQXyR7UE59ID0gIlRydWUiCgoK

---1113201137-1051379166-1318309085=:98662
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

---1113201137-1051379166-1318309085=:98662--

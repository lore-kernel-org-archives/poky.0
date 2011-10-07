Return-Path: <vishwasonu2000@yahoo.com>
Received: from nm3-vm0.bullet.mail.in.yahoo.com
	(nm3-vm0.bullet.mail.in.yahoo.com [121.101.151.212])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id C433AE004CF
	for <poky@yoctoproject.org>; Fri,  7 Oct 2011 03:02:09 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@yahoo.com;
	x-dkim-adsp=none (insecure policy)
Received: from [121.101.151.237] by nm3.bullet.mail.in.yahoo.com with NNFMP;
	07 Oct 2011 10:02:07 -0000
Received: from [121.101.151.235] by tm2.bullet.mail.in.yahoo.com with NNFMP;
	07 Oct 2011 10:01:47 -0000
Received: from [127.0.0.1] by omp1004.mail.in.yahoo.com with NNFMP;
	07 Oct 2011 10:02:07 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 673550.78634.bm@omp1004.mail.in.yahoo.com
Received: (qmail 30704 invoked by uid 60001); 7 Oct 2011 10:02:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1317981727; bh=g9gBMC7JzROD7tT0OodgNjy3p1E5juaHv1+eDi+viNM=;
	h=X-YMail-OSG:Received:X-Mailer:References:Message-ID:Date:From:Reply-To:Subject:To:In-Reply-To:MIME-Version:Content-Type;
	b=JjTAM0bCrMVdpNUA3HA0HhSzFN/zgHjfXelYxZ7b2YD4Vy7cdRys8kfraBnsDIFg7agBJRM6wJPvc72nVNEKMUod9veFAA9Jk0qXAEwj/d/4iB54B5EV1OHvYZRSyzSMBc+cIpkmDvmLCH/vBsjUD/u2zd3qBBJ19eAhheMFe9g=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=X-YMail-OSG:Received:X-Mailer:References:Message-ID:Date:From:Reply-To:Subject:To:In-Reply-To:MIME-Version:Content-Type;
	b=J0oJAJPGtAwUCVobahwOB8t2kl05ZFADfzwgOxAdU5CyH6sxBPEAzbuyZCNPHrFpWrXN2oix6EJRr7WjGmfB02I8WfxraoBEtM7e58ICc0p45K7VyDaBBaD7+fejmRgOKEtdN79yRjO7aJXFViY6zctdP66mrJOmFpS/Uo5pZfo=;
X-YMail-OSG: cxjtnI8VM1kJCaiRmYkTHKQiP6vgOY90VIZSl4876LjfL7V
	tttscLoOtdYI7DUJXE3ko5eHs_LOifukjj1psA3ft97u1ao_Y6s7dS_swUnG
	gQE92tyOHuWxn.CsXK7C4WG_ZpkkS9MFDA1mTm0bMv.vzMEL2_tmkpKOX1Ru
	rEVsPISB.6jnxwYhoqCR3IYXuMHDGDp_yhTwNlhikgAn.OYIw2en_J6.G0da
	BUJiuXtQqkieU93KqUxqvhlR20nQ4sVMUBVYv.aLngNA4z2wReBWxo3l1y5w
	A9XRu_i7tgRo2Ra9PMOzqnb2IDVu7KshmybpzIwnToU7U_BjoPWE7RSuWH86
	6soXbpAA8N4UVlC9Xs6jBf3F5nX3VF54Zej_aRrUlkZjiwWfQDjMzihSsKxQ
	8tb0KnQJ.sr.btbnmVDEGwE6gCuY6AQ9MlMaAfSW.qBuVa6fDn_HJW8M-
Received: from [115.111.25.162] by web94701.mail.in2.yahoo.com via HTTP;
	Fri, 07 Oct 2011 15:32:07 IST
X-Mailer: YahooMailWebService/0.8.114.317681
References: <1317712610.92069.YahooMailNeo@web94711.mail.in2.yahoo.com>
	<1317742677.2229.11.camel@scimitar>
Message-ID: <1317981727.19703.YahooMailNeo@web94701.mail.in2.yahoo.com>
Date: Fri, 7 Oct 2011 15:32:07 +0530 (IST)
From: sonu vishwakarma <vishwasonu2000@yahoo.com>
To: Joshua Lock <josh@linux.intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
In-Reply-To: <1317742677.2229.11.camel@scimitar>
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
X-List-Received-Date: Fri, 07 Oct 2011 10:02:11 -0000
Content-Type: multipart/alternative;
	boundary="1604857446-1617387030-1317981727=:19703"

--1604857446-1617387030-1317981727=:19703
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

=0A=0AHi,=0AAfter knowing the problem , i =0Alooked for the solution and fo=
und a patch to libtool =0A'libtool-2.4-r2/libtool-2.4/libltdl/config/ltmain=
.m4sh'=0Athat describes a function" if PATH begins with the sysroot replace=
 it with =3D " , this may be creating the problem . Also in the =0A=0AlibSD=
L.la i could see the definition of dependency_libs that include "=3D/usr/li=
b.=0AWhat to do now ? i couldn't find a solution to this .=0A=0A=0AThanks &=
 Regards,=0ASonu Vishwakarma=0A=0A________________________________=0AFrom: =
Joshua Lock <josh@linux.intel.com>=0ATo: poky@yoctoproject.org=0ASent: Tues=
day, 4 October 2011 9:07 PM=0ASubject: Re: [poky] [POKY] : XBMC PACKAGE (pa=
ckage libsdl-mixer-1.2.11-r5: task do_compile: Failed)=0A=0AOn Tue, 2011-10=
-04 at 12:46 +0530, sonu vishwakarma wrote:=0A> | ./libtool: line 6399: cd:=
 =3D/usr/lib: No such file or directory=0A=0AHere's the problem! Somewhere =
you're passing =3D/usr/lib which isn't a=0Areal path.=0A=0APlease don't sta=
rt new threads to continue existing discussion.=0A=0APlease share the recip=
es you're trying to build so that we can try and=0Ahelp.=0A=0AThanks,=0AJos=
hua=0A-- =0AJoshua Lock=0A=A0 =A0 =A0 =A0 Yocto Project "Johannes factotum"=
=0A=A0 =A0 =A0 =A0 Intel Open Source Technology Centre=0A=0A_______________=
________________________________=0Apoky mailing list=0Apoky@yoctoproject.or=
g=0Ahttps://lists.yoctoproject.org/listinfo/poky

--1604857446-1617387030-1317981727=:19703
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:ti=
mes new roman, new york, times, serif;font-size:12pt"><div><span><br></span=
></div><div><span>Hi,</span></div>=0A<div><span>After knowing the problem ,=
 i =0Alooked for the solution and found a patch to libtool =0A'libtool-2.4-=
r2/libtool-2.4/libltdl/config/ltmain.m4sh'</span></div>=0A<div><span> that =
describes a function</span><span> " if PATH begins with the sysroot replace=
 it with =3D " , this may be creating the problem . Also in the <br></span>=
</div>=0A<div><span>libSDL.la i could see </span><span>the definition of de=
pendency_libs that include "=3D/usr/lib.</span></div>=0A<div><span>What to =
do now ? i couldn't find a solution to this .<br></span></div>=0A=0A<div><b=
r></div>=0A<div>Thanks &amp; Regards,</div>=0ASonu Vishwakarma<div style=3D=
"font-family: times new roman,new york,times,serif; font-size: 12pt;"><div =
style=3D"font-family: times new roman,new york,times,serif; font-size: 12pt=
;"><font face=3D"Arial" size=3D"2"><hr size=3D"1"><b><span style=3D"font-we=
ight: bold;">From:</span></b> Joshua Lock &lt;josh@linux.intel.com&gt;<br><=
b><span style=3D"font-weight: bold;">To:</span></b> poky@yoctoproject.org<b=
r><b><span style=3D"font-weight: bold;">Sent:</span></b> Tuesday, 4 October=
 2011 9:07 PM<br><b><span style=3D"font-weight: bold;">Subject:</span></b> =
Re: [poky] [POKY] : XBMC PACKAGE (package libsdl-mixer-1.2.11-r5: task do_c=
ompile: Failed)<br></font><br>On Tue, 2011-10-04 at 12:46 +0530, sonu vishw=
akarma wrote:<br>&gt; | ./libtool: line 6399: cd: =3D/usr/lib: No such file=
 or directory<br><br>Here's the problem! Somewhere you're passing =3D/usr/l=
ib which isn't a<br>real path.<br><br>Please don't start new threads to con=
tinue existing discussion.<br><br>Please share the recipes
 you're trying to build so that we can try and<br>help.<br><br>Thanks,<br>J=
oshua<br>-- <br>Joshua Lock<br>&nbsp; &nbsp; &nbsp; &nbsp; Yocto Project "J=
ohannes factotum"<br>&nbsp; &nbsp; &nbsp; &nbsp; Intel Open Source Technolo=
gy Centre<br><br>_______________________________________________<br>poky ma=
iling list<br><a ymailto=3D"mailto:poky@yoctoproject.org" href=3D"mailto:po=
ky@yoctoproject.org">poky@yoctoproject.org</a><br><a href=3D"https://lists.=
yoctoproject.org/listinfo/poky" target=3D"_blank">https://lists.yoctoprojec=
t.org/listinfo/poky</a><br><br><br></div></div></div></body></html>

--1604857446-1617387030-1317981727=:19703--

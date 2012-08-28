Return-Path: <sparsh150847@yahoo.com>
Received: from nm7-vm8.bullet.mail.sg3.yahoo.com
	(nm7-vm8.bullet.mail.sg3.yahoo.com [106.10.148.183])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 6792EE01402
	for <poky@yoctoproject.org>; Mon, 27 Aug 2012 23:50:34 -0700 (PDT)
Received: from [106.10.166.118] by nm7.bullet.mail.sg3.yahoo.com with NNFMP;
	28 Aug 2012 06:50:19 -0000
Received: from [106.10.150.23] by tm7.bullet.mail.sg3.yahoo.com with NNFMP;
	28 Aug 2012 06:50:19 -0000
Received: from [127.0.0.1] by omp1024.mail.sg3.yahoo.com with NNFMP;
	28 Aug 2012 06:50:19 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 135132.20475.bm@omp1024.mail.sg3.yahoo.com
Received: (qmail 73178 invoked by uid 60001); 28 Aug 2012 06:50:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1346136619; bh=J91MOclDRRfDvdDcLqCWBhllz9QqaVT9aKa9wopfUyE=;
	h=X-YMail-OSG:Received:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=D1DLwVpt+d2JkuF4zAVTePN2zIkB7QYb5j84S8xAgAufHx5TUUDrcImdF3HWbF9j1uxvJXphsxiAbvnAx+1Syr5MzHxJIIZrDtln62qvX/ihEXtyVxh1rbAR6h4vFi+P5Fi4RX5P56BodS4c4BM4TiX/L+FLDhQclg4pCTNMJDc=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=X-YMail-OSG:Received:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=fUHYdSsB/XPBboR4ChD+owChEMPuvaFFwb7Sr93Be7bTLdZs+UB0ir6VSyLgs7EFHxbE7A8xANUhfZJ88PndKqYlJOcgVs6wdVfav8xSpA1UjD6vE7YlJV7O2oDvvHwnTEfmMFGRe3HX53DSzAj1gcUmCkSS2Z+2IF0wXFXvFbA=;
X-YMail-OSG: wqv8kWgVM1mE9lWbM4e.I_cq1URD2pOAnqz6T4201I8PbSh
	io3sj7ZaJJnep0_n6AWUWrBZtatdKsN3dec.fLTD9LCvh7odYoxAXbh_v2.w
	45FU0FoGhs0rjJtShI_YknA6Fwb3xjIewAW.KrpeBPadDEgBxN8YJguC80yD
	9ESeQg2agFWavBW_u5QaGbFVCEvmbOe55.01s8sOWNQFMebE8n.3XjSv2jsR
	ECY99wxofaLbpEncqF5HM_2GJdpP1rU3rU5_Va3gjzbQkw1PUDLpVP7WmXrW
	5.PaRh9yuBeGUFqZd7evgCyDnuK73zOjbdEhM6iiT838h.6XdHhwz5cenpLW
	kdB6ZIwxrrvkh8QkHcHs6UzP71FRRhMocu.MVae0W75rmeRmL
Received: from [115.111.25.162] by web194606.mail.sg3.yahoo.com via HTTP;
	Tue, 28 Aug 2012 14:50:18 SGT
X-Mailer: YahooMailWebService/0.8.121.416
Message-ID: <1346136618.70838.YahooMailNeo@web194606.mail.sg3.yahoo.com>
Date: Tue, 28 Aug 2012 14:50:18 +0800 (SGT)
From: Sparsh Wid hope <sparsh150847@yahoo.com>
To: poky <poky@yoctoproject.org>
MIME-Version: 1.0
Subject: Problem while compiling libvpx
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
X-List-Received-Date: Tue, 28 Aug 2012 06:50:35 -0000
Content-Type: multipart/alternative;
	boundary="-1722158877-597880144-1346136618=:70838"

---1722158877-597880144-1346136618=:70838
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Hi All,=0A=0AI'm compiling libvpx through poky and got the error related to=
 linking of toolchain.=A0Build info is here:=0A=0AOE Build Configuration:=
=0ABB_VERSION =A0 =A0 =A0 =A0=3D "1.11.0"=0AMETADATA_BRANCH =A0 =3D "bernar=
d-cur"=0AMETADATA_REVISION =3D "1f2e1abbe2726ea6fc83e83b644ce7ee32a54fa2"=
=0ATARGET_ARCH =A0 =A0 =A0 =3D "i586"=0ATARGET_OS =A0 =A0 =A0 =A0 =3D "linu=
x"=0AMACHINE =A0 =A0 =A0 =A0 =A0 =3D "fishriver"=0ADISTRO =A0 =A0 =A0 =A0 =
=A0 =A0=3D "poky"=0ADISTRO_VERSION =A0 =A0=3D "1.0"=0ATARGET_FPU =A0 =A0 =
=A0 =A0=3D ""=0A=0AError log is as follows:=0A=0AERROR: Logfile of failure =
stored in: /home/sct/my_workspace/poky_xbmc_09Mar2012/build/tmp/work/atom-p=
oky-linux/libvpx-1.0-r0/temp/log.do_configure.4510=0ALog data follows:=0A| =
Configuring selected codecs=0A| =A0 enabling vp8_encoder=0A| =A0 enabling v=
p8_decoder=0A| Configuring for target 'x86-linux-gcc'=0A| =A0 enabling x86=
=0A| =A0 enabling pic=0A| =A0 enabling runtime_cpu_detect=0A| =A0 enabling =
mmx=0A| =A0 enabling sse=0A| =A0 enabling sse2=0A| =A0 enabling sse3=0A| =
=A0 enabling ssse3=0A| =A0 enabling sse4_1=0A| =A0 using i586-poky-linux-as=
=0A| =A0 enabling postproc=0A| Toolchain is unable to link executables=0A|=
=A0=0A| Configuration failed. This could reflect a misconfiguration of your=
=0A| toolchains, improper options selected, or another problem. If you=0A| =
don't see any useful error messages above, the next step is to look=0A| at =
the configure error log file (config.err) to determine what=0A| configure w=
as trying to do when it died.=0A=0APlease help me to resolve the error.

---1722158877-597880144-1346136618=:70838
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:ti=
mes new roman, new york, times, serif;font-size:12pt"><div style=3D"font-fa=
mily: 'times new roman', 'new york', times, serif; font-size: 12pt; ">Hi Al=
l,</div><div style=3D"font-family: 'times new roman', 'new york', times, se=
rif; font-size: 12pt; "><br></div><div style=3D"font-family: 'times new rom=
an', 'new york', times, serif; font-size: 16px; color: rgb(0, 0, 0); backgr=
ound-color: transparent; font-style: normal; ">I'm compiling <span style=3D=
"font-weight: bold;">libvpx </span>through poky and got the error related t=
o <span style=3D"font-weight: bold;">linking of toolchain.</span>&nbsp;Buil=
d info is here:</div><div style=3D"font-family: 'times new roman', 'new yor=
k', times, serif; font-size: 16px; color: rgb(0, 0, 0); background-color: t=
ransparent; font-style: normal; "><br></div><div style=3D"background-color:=
 transparent; "><div style=3D"background-color: transparent; "><span
 style=3D"font-family: 'times new roman', 'new york', times, serif; font-we=
ight: bold;">OE Build Configuration:</span></div><div style=3D"background-c=
olor: transparent; "><span style=3D"font-family: 'times new roman', 'new yo=
rk', times, serif;">BB_VERSION &nbsp; &nbsp; &nbsp; &nbsp;=3D "1.11.0"</spa=
n></div><div style=3D"background-color: transparent; "><span style=3D"font-=
family: 'times new roman', 'new york', times, serif;">METADATA_BRANCH &nbsp=
; =3D "bernard-cur"</span></div><div style=3D"background-color: transparent=
; "><span style=3D"font-family: 'times new roman', 'new york', times, serif=
;">METADATA_REVISION =3D "1f2e1abbe2726ea6fc83e83b644ce7ee32a54fa2"</span><=
/div><div style=3D"background-color: transparent; "><span style=3D"font-fam=
ily: 'times new roman', 'new york', times, serif;">TARGET_ARCH &nbsp; &nbsp=
; &nbsp; =3D "i586"</span></div><div style=3D"background-color: transparent=
; "><span style=3D"font-family: 'times new roman', 'new york', times, serif=
;">TARGET_OS &nbsp;
 &nbsp; &nbsp; &nbsp; =3D "linux"</span></div><div style=3D"background-colo=
r: transparent; "><span style=3D"font-family: 'times new roman', 'new york'=
, times, serif;">MACHINE &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "fishriver"=
</span></div><div style=3D"background-color: transparent; "><span style=3D"=
font-family: 'times new roman', 'new york', times, serif;">DISTRO &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "poky"</span></div><div style=3D"backgr=
ound-color: transparent; "><span style=3D"font-family: 'times new roman', '=
new york', times, serif;">DISTRO_VERSION &nbsp; &nbsp;=3D "1.0"</span></div=
><div style=3D"background-color: transparent; "><span style=3D"font-family:=
 'times new roman', 'new york', times, serif;">TARGET_FPU &nbsp; &nbsp; &nb=
sp; &nbsp;=3D ""</span></div><div style=3D"background-color: transparent; c=
olor: rgb(0, 0, 0); font-size: 16px; font-family: 'times new roman', 'new y=
ork', times, serif; font-style: normal; "><span style=3D"font-family: 'time=
s new roman', 'new
 york', times, serif;"><br></span></div><div style=3D"background-color: tra=
nsparent; color: rgb(0, 0, 0); font-size: 16px; font-family: 'times new rom=
an', 'new york', times, serif; font-style: normal; ">Error log is as follow=
s:</div><div style=3D"background-color: transparent; color: rgb(0, 0, 0); f=
ont-size: 16px; font-family: 'times new roman', 'new york', times, serif; f=
ont-style: normal; "><br></div><div style=3D"background-color: transparent;=
 "><div style=3D"background-color: transparent; "><span style=3D"font-famil=
y: 'times new roman', 'new york', times, serif;">ERROR: Logfile of failure =
stored in: /home/sct/my_workspace/poky_xbmc_09Mar2012/build/tmp/work/atom-p=
oky-linux/libvpx-1.0-r0/temp/log.do_configure.4510</span></div><div style=
=3D"background-color: transparent; "><span style=3D"font-family: 'times new=
 roman', 'new york', times, serif;">Log data follows:</span></div><div styl=
e=3D"background-color: transparent; "><span style=3D"font-family: 'times ne=
w roman',
 'new york', times, serif;">| Configuring selected codecs</span></div><div =
style=3D"background-color: transparent; "><span style=3D"font-family: 'time=
s new roman', 'new york', times, serif;">| &nbsp; enabling vp8_encoder</spa=
n></div><div style=3D"background-color: transparent; "><span style=3D"font-=
family: 'times new roman', 'new york', times, serif;">| &nbsp; enabling vp8=
_decoder</span></div><div style=3D"background-color: transparent; "><span s=
tyle=3D"font-family: 'times new roman', 'new york', times, serif;">| Config=
uring for target 'x86-linux-gcc'</span></div><div style=3D"background-color=
: transparent; "><span style=3D"font-family: 'times new roman', 'new york',=
 times, serif;">| &nbsp; enabling x86</span></div><div style=3D"background-=
color: transparent; "><span style=3D"font-family: 'times new roman', 'new y=
ork', times, serif;">| &nbsp; enabling pic</span></div><div style=3D"backgr=
ound-color: transparent; "><span style=3D"font-family: 'times new roman', '=
new york', times,
 serif;">| &nbsp; enabling runtime_cpu_detect</span></div><div style=3D"bac=
kground-color: transparent; "><span style=3D"font-family: 'times new roman'=
, 'new york', times, serif;">| &nbsp; enabling mmx</span></div><div style=
=3D"background-color: transparent; "><span style=3D"font-family: 'times new=
 roman', 'new york', times, serif;">| &nbsp; enabling sse</span></div><div =
style=3D"background-color: transparent; "><span style=3D"font-family: 'time=
s new roman', 'new york', times, serif;">| &nbsp; enabling sse2</span></div=
><div style=3D"background-color: transparent; "><span style=3D"font-family:=
 'times new roman', 'new york', times, serif;">| &nbsp; enabling sse3</span=
></div><div style=3D"background-color: transparent; "><span style=3D"font-f=
amily: 'times new roman', 'new york', times, serif;">| &nbsp; enabling ssse=
3</span></div><div style=3D"background-color: transparent; "><span style=3D=
"font-family: 'times new roman', 'new york', times, serif;">| &nbsp; enabli=
ng
 sse4_1</span></div><div style=3D"background-color: transparent; "><span st=
yle=3D"font-family: 'times new roman', 'new york', times, serif;">| &nbsp; =
using i586-poky-linux-as</span></div><div style=3D"background-color: transp=
arent; "><span style=3D"font-family: 'times new roman', 'new york', times, =
serif;">| &nbsp; enabling postproc</span></div><div style=3D"background-col=
or: transparent; "><span style=3D"font-family: 'times new roman', 'new york=
', times, serif; font-weight: bold;">| Toolchain is unable to link executab=
les</span></div><div style=3D"background-color: transparent; "><span style=
=3D"font-family: 'times new roman', 'new york', times, serif; ">|&nbsp;</sp=
an></div><div style=3D"background-color: transparent; "><span style=3D"font=
-family: 'times new roman', 'new york', times, serif;">| Configuration fail=
ed. This could reflect a misconfiguration of your</span></div><div style=3D=
"background-color: transparent; "><span style=3D"font-family: 'times new ro=
man', 'new york',
 times, serif;">| toolchains, improper options selected, or another problem=
. If you</span></div><div style=3D"background-color: transparent; "><span s=
tyle=3D"font-family: 'times new roman', 'new york', times, serif;">| don't =
see any useful error messages above, the next step is to look</span></div><=
div style=3D"background-color: transparent; "><span style=3D"font-family: '=
times new roman', 'new york', times, serif;">| at the configure error log f=
ile (config.err) to determine what</span></div><div style=3D"background-col=
or: transparent; "><span style=3D"font-family: 'times new roman', 'new york=
', times, serif;">| configure was trying to do when it died.</span></div><d=
iv style=3D"color: rgb(0, 0, 0); font-family: 'times new roman', 'new york'=
, times, serif; font-size: 16px; font-style: normal; "><br></div><div style=
=3D"color: rgb(0, 0, 0); font-family: 'times new roman', 'new york', times,=
 serif; font-size: 16px; font-style: normal; background-color: transparent;=
 ">Please
 help me to resolve the error.</div></div></div></div></body></html>

---1722158877-597880144-1346136618=:70838--

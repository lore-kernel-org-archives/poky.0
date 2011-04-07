Return-Path: <sparsh150847@yahoo.com>
Received: from nm2-vm0.bullet.mail.in.yahoo.com
	(nm2-vm0.bullet.mail.in.yahoo.com [121.101.151.210])
	by mx1.pokylinux.org (Postfix) with SMTP id 622FC4C80044
	for <poky@yoctoproject.org>; Thu,  7 Apr 2011 00:48:41 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@yahoo.com;
	x-dkim-adsp=none (insecure policy)
Received: from [121.101.151.238] by nm2.bullet.mail.in.yahoo.com with NNFMP;
	07 Apr 2011 05:49:05 -0000
Received: from [121.101.151.233] by tm3.bullet.mail.in.yahoo.com with NNFMP;
	07 Apr 2011 05:49:26 -0000
Received: from [127.0.0.1] by omp1002.mail.in.yahoo.com with NNFMP;
	07 Apr 2011 05:51:56 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 481267.86293.bm@omp1002.mail.in.yahoo.com
Received: (qmail 75085 invoked by uid 60001); 7 Apr 2011 05:48:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1302155319; bh=euCTj909Mhvs7bNJCKspqBQqBGS2kDBIZMaQ+fMiQAY=;
	h=Message-ID:X-YMail-OSG:Received:X-Mailer:Date:From:Subject:To:Cc:In-Reply-To:MIME-Version:Content-Type;
	b=rOZtayKnmOAuOISSsKm4HkO1v0nRpsnD4CqIFXrwpnJkO6Z+BoppiAJPjddgTR9fbMiGLNXYlVm/4Et3eAEsb9EdkFBzEL8guwiFhruXA6zY6HPIMaseMBE5CthEb8gPcrpUl0AhNqzLiuRD6Z+N33UqcIld0JrTpA2tJYsLsLs=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=Message-ID:X-YMail-OSG:Received:X-Mailer:Date:From:Subject:To:Cc:In-Reply-To:MIME-Version:Content-Type;
	b=35kkrd+Mn5DS4Z54S38nX1iMwbKmc2+U+PVifXpNYtSvheBmNhNIbiSvCTjWU6MQp//tiliTn8IWvQJRtYQAc7VoW8WN8ATu6W+zFr/0thUtx8t9l/I5hPrcDLrqcvVBGS/r3NVHJc5ufDBzLXRPgDe8e+GL1GP8SseVFIm9css=;
Message-ID: <496032.60407.qm@web95705.mail.in.yahoo.com>
X-YMail-OSG: U38CVyEVM1lPxmHUiyDCVG9_8QNO0X1t3lQklyZhCPhbYtF
	pMFniHmcZqdINYQ0KX5nWePbIS6kFRqw5lfPCfeynaQvsxyV6_JyBK_Cbgw0
	27UYeXlpJ3f5xesQYNnnLQEq6koiUtyv.5d6Vp1UJWZ7pfKX52l2TT94SAIr
	i9wM_ecerPN8.dJt7fDE0PrDLneOiD3f2qnsyue8aoI21jusHbzFTHKkjoYJ
	ZXzEFH1MKlypr2eJCXIgIHzti5XiLxo8c35rl96XdC0FnZNJoTXgz8L7fHvL
	lBn3fPKdRY2xTxPC41OuKj3Cj2GSli_DV9pgQLQ--
Received: from [115.111.25.162] by web95705.mail.in.yahoo.com via HTTP;
	Thu, 07 Apr 2011 11:18:39 IST
X-Mailer: YahooMailClassic/12.0.2 YahooMailWebService/0.8.109.295617
Date: Thu, 7 Apr 2011 11:18:39 +0530 (IST)
From: Sparsh Wid hope <sparsh150847@yahoo.com>
To: poky <poky@yoctoproject.org>
In-Reply-To: <BANLkTimbfXrXrEujvgNRdakcuynmgUNcAw@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: facing problem in branch validation for beagleboard
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 07 Apr 2011 05:48:42 -0000
Content-Type: multipart/alternative; boundary="0-1365661319-1302155319=:60407"

--0-1365661319-1302155319=:60407
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Hi All,
Hey Bruce thanks for your kind guidance, it helps me to explore the things.=
 I tried to get commit as you suggested:surya@spectracore-Vostro-220s-Serie=
s:~/Surya/pro/my_poky/poky/build/downloads/git2/git.pokylinux.org.linux-yoc=
to-2.6.37$ git checkout -b beagle remotes/origin/yocto/standard/beagleboard
fatal: This operation must be run in a work tree
then I tried by removing my kernel:rm -r home/Surya/pro/my_poky/poky/build/=
tmp/work/beagleboard-poky-linux-gnueabi/linux-yocto-2.6.37+git3+17e49db8624=
324d090dd5aaa18ef977bb2dd5f6d_6+17e49db8624324d090dd5aaa18ef977bb2dd5f6d-r1=
6/ linuxas I notice some untracked files in git status, but it didn't work.=
The commit of my linux-yocto-2.6.37 is:
commit 3c0eee3fe6a3a1c745379547c7e7c904aa64f6d5Author: Linus Torvalds <torv=
alds@linux-foundation.org>Date: =A0 Tue Jan 4 16:50:19 2011 -0800
=A0=A0 =A0Linux 2.6.37-----------------------------------------------------=
---------------------------------------------------------------------------=
----I hope this information will help you to understand my problem.Thanks=
=A0--- On Wed, 6/4/11, Bruce Ashfield <bruce.ashfield@gmail.com> wrote:

From: Bruce Ashfield <bruce.ashfield@gmail.com>
Subject: Re: [poky] facing problem in branch validation for beagleboard
To: "Sparsh Wid hope" <sparsh150847@yahoo.com>
Cc: "poky" <poky@yoctoproject.org>
Date: Wednesday, 6 April, 2011, 6:19 PM

On Wed, Apr 6, 2011 at 9:25 AM, Sparsh Wid hope <sparsh150847@yahoo.com> wr=
ote:
=0A=0A=0A=0AThanks for your response but I don't think any package is going=
 to build. I'm sending you whole message on my console after bitbake. Pleas=
e check it and guide me to solve the problem.Thanks
=0A=0A
Are you referring to this warning ?:
WARNING: No bb files matched BBFILE_PATTERN_yocto '^/home/surya/Surya/pro/m=
y_poky/poky/meta-yocto/'#######| ETA: =A000:00:00=0A=0A
I see it here as well, but it won't impact the board. My beagleboard build =
thencontinues and works fine.=A0
What are the top commits in your linux-yocto-2.6.37 repository on the beagl=
eboard=0ABSP branch ? (find it in build/downloads/git2/).
Bruce=A0=0A=0A
--- On Wed, 6/4/11, Bruce Ashfield <bruce.ashfield@gmail.com> wrote:
=0A=0A
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Subject: Re: [poky] facing problem in branch validation for beagleboard
=0A=0ATo: "Sparsh Wid hope" <sparsh150847@yahoo.com>
Cc: "poky" <poky@yoctoproject.org>
=0A=0ADate: Wednesday, 6 April,=0A 2011, 12:38 PM



On Wed, Apr 6, 2011 at 6:48 AM, Sparsh Wid hope <sparsh150847@yahoo.com> wr=
ote:
=0A=0A=0AHi All,
=0A=0A=0AI'm trying to build a poky image for beagle board with linux-yocto=
-2.6.37 and got following errors.
Hmm. This should never happen, it means that something has gone=0A=0A=0Awro=
ng with the clone of linux-yocto-2.6.37.=A0=A0=0A
Unstaged changes after reset:M =A0 =A0 =A0 .gitignoreM =A0 =A0 =A0 Document=
ation/hwmon/jc42=0A=0A=0A...error: Your local changes to the following file=
s would be overwritten by=0A checkout...Please move or remove them before y=
ou can switch branches.=0A=0A=0AAbortingerror: Cannot delete the branch 'me=
ta-temp' which you are currently on.error: Your local changes to the follow=
ing files would be overwritten by checkout:..=0A=0A=0A.Please move or remov=
e them before you can switch branches.Abortingwarning: could not find ktype=
s/temp.scc./0-meta-temp-a81c58139afe973468e690658cd5f18d.sco: line 14: temp=
_=0A=0A=0A
If this happens, the system was attempting to construct an automatic defini=
tion=A0and it couldn't since the tree wasn't recognizable.=0A=0A=0A
Do any of the qemu targets build ? I'd like to narrow down what could begoi=
ng wrong.
Cheers,
Bruce=A0=0A=0A=0A68b329da9893e34099c7d8ad5cb9c940: command not foundERROR. =
Could not locate meta series for beagleboard-standard=0A=0A=0AERROR: Functi=
on 'do_patch'=0A failed (see /home/surya/Surya/pro/my_poky/poky/build/tmp/w=
ork/beagleboard-poky-linux-gnueabi/linux-yocto-2.6.37+git3+17e49db8624324d0=
90dd5aaa18ef977bb2dd5f6d_3+17e49db8624324d090dd5aaa18ef977bb2dd5f6d-r16/tem=
p/log.do_patch.13906 for further information)=0A=0A=0A---------------------=
---------------------------------------------------------------------------=
-----------------------------------please help me to resolve the problem.Th=
anks in advance=0A=0A=0ASparsh
_______________________________________________
=0Apoky mailing list
=0Apoky@yoctoproject.org
=0Ahttps://lists.yoctoproject.org/listinfo/poky
=0A



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await thee a=
t its end"
=0A


--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await thee a=
t its end"
=0A=0A=0A

--0-1365661319-1302155319=:60407
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<table cellspacing=3D"0" cellpadding=3D"0" border=3D"0" ><tr><td valign=3D"=
top" style=3D"font: inherit;"><font class=3D"Apple-style-span" face=3D"aria=
l" size=3D"2">Hi All,</font><div style=3D"font-family: arial; font-size: 10=
pt; "><br></div><div style=3D"font-family: arial; font-size: 10pt; ">Hey Br=
uce thanks for your kind guidance, it helps me to explore the things. I tri=
ed to get commit as you suggested:</div><div style=3D"font-family: arial; f=
ont-size: 10pt; "><div>surya@spectracore-Vostro-220s-Series:~/Surya/pro/my_=
poky/poky/build/downloads/git2/git.pokylinux.org.linux-yocto-2.6.37$ git ch=
eckout -b beagle remotes/origin/yocto/standard/beagleboard</div><div><br></=
div><div><span class=3D"Apple-style-span" style=3D"background-color: rgb(12=
8, 255, 0);">fatal: This operation must be run in a work tree</span></div><=
div><span class=3D"Apple-style-span" style=3D"background-color: rgb(128, 25=
5, 0);"><br></span></div><div><span class=3D"Apple-style-span" style=3D"bac=
kground-color: rgb(255,
 255, 255);">then I tried by removing my kernel:</span></div><div><span cla=
ss=3D"Apple-style-span" style=3D"background-color: rgb(255, 255, 255);">rm =
-r home/Surya/pro/my_poky/poky/build/tmp/work/beagleboard-poky-linux-gnueab=
i/linux-yocto-2.6.37+git3+17e49db8624324d090dd5aaa18ef977bb2dd5f6d_6+17e49d=
b8624324d090dd5aaa18ef977bb2dd5f6d-r16/ linux</span></div>as I notice some =
untracked files in git status, but it didn't work.</div><div style=3D"font-=
family: arial; font-size: 10pt; ">The commit of my linux-yocto-2.6.37 is:</=
div><div><div><font class=3D"Apple-style-span" face=3D"arial" size=3D"2"><b=
r></font></div><div><font class=3D"Apple-style-span" face=3D"arial" size=3D=
"2" style=3D"background-color: rgb(128, 255, 0);">commit 3c0eee3fe6a3a1c745=
379547c7e7c904aa64f6d5</font></div><div><font class=3D"Apple-style-span" fa=
ce=3D"arial" size=3D"2">Author: Linus Torvalds &lt;torvalds@linux-foundatio=
n.org&gt;</font></div><div><font class=3D"Apple-style-span" face=3D"arial" =
size=3D"2">Date: &nbsp;
 Tue Jan 4 16:50:19 2011 -0800</font></div><div><font class=3D"Apple-style-=
span" face=3D"arial" size=3D"2"><br></font></div><div><font class=3D"Apple-=
style-span" face=3D"arial" size=3D"2">&nbsp;&nbsp; &nbsp;Linux 2.6.37</font=
></div><div style=3D"font-family: arial; font-size: 10pt; ">---------------=
---------------------------------------------------------------------------=
------------------------------------------</div></div><div style=3D"font-fa=
mily: arial; font-size: 10pt; ">I hope this information will help you to un=
derstand my problem.</div><div style=3D"font-family: arial; font-size: 10pt=
; ">Thanks&nbsp;</div><div style=3D"font-family: arial; font-size: 10pt; ">=
--- On <b>Wed, 6/4/11, Bruce Ashfield <i>&lt;bruce.ashfield@gmail.com&gt;</=
i></b> wrote:<br><blockquote style=3D"border-left: 2px solid rgb(16, 16, 25=
5); margin-left: 5px; padding-left: 5px;"><br>From: Bruce Ashfield &lt;bruc=
e.ashfield@gmail.com&gt;<br>Subject: Re: [poky] facing problem in branch va=
lidation for
 beagleboard<br>To: "Sparsh Wid hope" &lt;sparsh150847@yahoo.com&gt;<br>Cc:=
 "poky" &lt;poky@yoctoproject.org&gt;<br>Date: Wednesday, 6 April, 2011, 6:=
19 PM<br><br><div id=3D"yiv135892925"><div class=3D"yiv135892925gmail_quote=
">On Wed, Apr 6, 2011 at 9:25 AM, Sparsh Wid hope <span dir=3D"ltr">&lt;<a =
rel=3D"nofollow" ymailto=3D"mailto:sparsh150847@yahoo.com" target=3D"_blank=
" href=3D"/mc/compose?to=3Dsparsh150847@yahoo.com">sparsh150847@yahoo.com</=
a>&gt;</span> wrote:<br><blockquote class=3D"yiv135892925gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex;">=0A=0A<=
table cellspacing=3D"0" cellpadding=3D"0" border=3D"0"><tbody><tr><td valig=
n=3D"top" style=3D"font:inherit;"><div><table cellspacing=3D"0" cellpadding=
=3D"0" border=3D"0"><tbody><tr><td style=3D"font:inherit;font-family:arial;=
font-size:10pt;">=0A=0AThanks for your response but I don't think any packa=
ge is going to build. I'm sending you whole message on my console after bit=
bake. Please check it and guide me to solve the problem.<div>Thanks<br></di=
v></td></tr>=0A=0A</tbody></table></div></td></tr></tbody></table></blockqu=
ote><div><br></div><div>Are you referring to this warning ?:</div><div><br>=
</div><div><div>WARNING: No bb files matched BBFILE_PATTERN_yocto '^/home/s=
urya/Surya/pro/my_poky/poky/meta-yocto/'#######| ETA: &nbsp;00:00:00</div>=
=0A=0A</div><div><br></div><div>I see it here as well, but it won't impact =
the board. My beagleboard build then</div><div>continues and works fine.&nb=
sp;</div><div><br></div><div>What are the top commits in your linux-yocto-2=
.6.37 repository on the beagleboard</div>=0A<div>BSP branch ? (find it in b=
uild/downloads/git2/).</div><div><br></div><div>Bruce</div><div>&nbsp;</div=
><blockquote class=3D"yiv135892925gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex;"><table cellspacing=3D"0" cellp=
adding=3D"0" border=3D"0">=0A<tbody><tr><td valign=3D"top" style=3D"font:in=
herit;">=0A<div><table cellspacing=3D"0" cellpadding=3D"0" border=3D"0"><tb=
ody><tr><td style=3D"font:inherit;font-family:arial;font-size:10pt;"><div><=
br>--- On <b>Wed, 6/4/11, Bruce Ashfield <i>&lt;<a rel=3D"nofollow" ymailto=
=3D"mailto:bruce.ashfield@gmail.com" target=3D"_blank" href=3D"/mc/compose?=
to=3Dbruce.ashfield@gmail.com">bruce.ashfield@gmail.com</a>&gt;</i></b> wro=
te:<br>=0A=0A<blockquote style=3D"border-left:2px solid rgb(16, 16, 255);ma=
rgin-left:5px;padding-left:5px;"><br>From: Bruce Ashfield &lt;<a rel=3D"nof=
ollow" ymailto=3D"mailto:bruce.ashfield@gmail.com" target=3D"_blank" href=
=3D"/mc/compose?to=3Dbruce.ashfield@gmail.com">bruce.ashfield@gmail.com</a>=
&gt;<br>Subject: Re: [poky] facing problem in branch validation for beagleb=
oard<br>=0A=0ATo: "Sparsh Wid hope" &lt;<a rel=3D"nofollow" ymailto=3D"mail=
to:sparsh150847@yahoo.com" target=3D"_blank" href=3D"/mc/compose?to=3Dspars=
h150847@yahoo.com">sparsh150847@yahoo.com</a>&gt;<br>Cc: "poky" &lt;<a rel=
=3D"nofollow" ymailto=3D"mailto:poky@yoctoproject.org" target=3D"_blank" hr=
ef=3D"/mc/compose?to=3Dpoky@yoctoproject.org">poky@yoctoproject.org</a>&gt;=
<br>=0A=0ADate: Wednesday, 6 April,=0A 2011, 12:38 PM<div><div></div><div><=
br><br><div><br><br><div>On Wed, Apr 6, 2011 at 6:48 AM, Sparsh Wid hope <s=
pan dir=3D"ltr">&lt;<a rel=3D"nofollow">sparsh150847@yahoo.com</a>&gt;</spa=
n> wrote:<br><blockquote style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex;">=0A=0A=0A<table cellspacing=3D"0" cellpadding=3D"0" =
border=3D"0"><tbody><tr><td valign=3D"top" style=3D"font:inherit;"><font fa=
ce=3D"arial" size=3D"2">Hi All,</font><div style=3D"font-family:arial;font-=
size:10pt;"><br></div><div style=3D"font-family:arial;font-size:10pt;">=0A=
=0A=0AI'm trying to build a poky image for beagle board with linux-yocto-2.=
6.37 and got following errors.</div></td></tr></tbody></table></blockquote>=
<div><br></div><div>Hmm. This should never happen, it means that something =
has gone</div>=0A=0A=0A<div>wrong with the clone of linux-yocto-2.6.37.&nbs=
p;</div><div>&nbsp;</div><blockquote style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex;"><table cellspacing=3D"0" cellpadding=3D"=
0" border=3D"0"><tbody><tr>=0A<td valign=3D"top" style=3D"font:inherit;"><d=
iv style=3D"font-family:arial;font-size:10pt;"><br></div><div style=3D"font=
-family:arial;font-size:10pt;"><div>Unstaged changes after reset:</div><div=
>M &nbsp; &nbsp; &nbsp; .gitignore</div><div>M &nbsp; &nbsp; &nbsp; Documen=
tation/hwmon/jc42</div>=0A=0A=0A</div><div style=3D"font-family:arial;font-=
size:10pt;">.</div><div style=3D"font-family:arial;font-size:10pt;">.</div>=
<div style=3D"font-family:arial;font-size:10pt;">.</div><div><font face=3D"=
arial" size=3D"2">error: Your local changes to the following files would be=
 overwritten by=0A checkout</font></div><div><font face=3D"arial" size=3D"2=
">.</font></div><div><font face=3D"arial" size=3D"2">.</font></div><div><fo=
nt face=3D"arial" size=3D"2">.</font></div><div><font face=3D"arial" size=
=3D"2"><div>Please move or remove them before you can switch branches.</div=
>=0A=0A=0A<div>Aborting</div><div>error: Cannot delete the branch 'meta-tem=
p' which you are currently on.</div><div>error: Your local changes to the f=
ollowing files would be overwritten by checkout:</div><div>.</div><div>.</d=
iv>=0A=0A=0A<div>.</div><div><div>Please move or remove them before you can=
 switch branches.</div><div>Aborting</div><div>warning: could not find ktyp=
es/temp.scc</div><div>./0-meta-temp-a81c58139afe973468e690658cd5f18d.sco: l=
ine 14: temp_</div>=0A=0A=0A</div></font></div></td></tr></tbody></table></=
blockquote><div><br></div><div>If this happens, the system was attempting t=
o construct an automatic definition&nbsp;</div><div>and it couldn't since t=
he tree wasn't recognizable.</div>=0A=0A=0A<div><br></div><div>Do any of th=
e qemu targets build ? I'd like to narrow down what could be</div><div>goin=
g wrong.</div><div><br></div><div>Cheers,</div><div><br></div><div>Bruce</d=
iv><div>&nbsp;</div><blockquote style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex;">=0A=0A=0A<table cellspacing=3D"0" cellpadding=
=3D"0" border=3D"0"><tbody><tr><td valign=3D"top" style=3D"font:inherit;"><=
div><font face=3D"arial" size=3D"2"><div><div>68b329da9893e34099c7d8ad5cb9c=
940: command not found</div><div>ERROR. Could not locate meta series for be=
agleboard-standard</div>=0A=0A=0A<div>ERROR: Function 'do_patch'=0A failed =
(see /home/surya/Surya/pro/my_poky/poky/build/tmp/work/beagleboard-poky-lin=
ux-gnueabi/linux-yocto-2.6.37+git3+17e49db8624324d090dd5aaa18ef977bb2dd5f6d=
_3+17e49db8624324d090dd5aaa18ef977bb2dd5f6d-r16/temp/log.do_patch.13906 for=
 further information)</div>=0A=0A=0A</div><div>----------------------------=
---------------------------------------------------------------------------=
----------------------------</div><div>please help me to resolve the proble=
m.</div><div>Thanks in advance</div>=0A=0A=0A<div>Sparsh</div></font></div>=
</td></tr></tbody></table><br>_____________________________________________=
__<br>=0Apoky mailing list<br>=0A<a rel=3D"nofollow">poky@yoctoproject.org<=
/a><br>=0A<a rel=3D"nofollow" target=3D"_blank" href=3D"https://lists.yocto=
project.org/listinfo/poky">https://lists.yoctoproject.org/listinfo/poky</a>=
<br>=0A<br></blockquote></div><br><br clear=3D"all"><br>-- <br>"Thou shalt =
not follow the NULL pointer, for chaos and madness await thee at its end"<b=
r>=0A</div></div></div></blockquote></div></td></tr></tbody></table></div><=
/td></tr></tbody></table></blockquote></div><br><br clear=3D"all"><br>-- <b=
r>"Thou shalt not follow the NULL pointer, for chaos and madness await thee=
 at its end"<br>=0A=0A=0A</div></blockquote></div></td></tr></table>

--0-1365661319-1302155319=:60407--

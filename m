Return-Path: <vishwasonu2000@yahoo.com>
Received: from nm1-vm0.bullet.mail.in.yahoo.com
	(nm1-vm0.bullet.mail.in.yahoo.com [121.101.151.211])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id CBDABE004E4
	for <poky@yoctoproject.org>; Tue,  4 Oct 2011 00:16:55 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@yahoo.com;
	x-dkim-adsp=none (insecure policy)
Received: from [121.101.151.238] by nm1.bullet.mail.in.yahoo.com with NNFMP;
	04 Oct 2011 07:16:51 -0000
Received: from [121.101.151.232] by tm3.bullet.mail.in.yahoo.com with NNFMP;
	04 Oct 2011 07:17:21 -0000
Received: from [127.0.0.1] by omp1001.mail.in.yahoo.com with NNFMP;
	04 Oct 2011 07:16:51 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 631427.6862.bm@omp1001.mail.in.yahoo.com
Received: (qmail 23305 invoked by uid 60001); 4 Oct 2011 07:16:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1317712610; bh=tiZbp9cyN6Rbnp4sRgMoaWT/R4U97VGJsxRaNx1JSFY=;
	h=X-YMail-OSG:Received:X-Mailer:References:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=p13JO78F1CGXxTy7XfedQB1ZXEL6pbEU9zB9FrqqV46VMdyXe0rDY/LEZPe6Hh2hS8FEZFp2lFeDrB2B+UiLGQs0fEKfwVWRwpFNBhnyI0G9Xv6CR0qmeZnYW8v8wS/ZWES7uapQ6GxEOaEeXYctF/+j51w2e5F4aqxCLpmdIkA=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=X-YMail-OSG:Received:X-Mailer:References:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=pHZPYG9++c/vMg9hWyunjfXIFe62PqxeA1oN4vJz60DyoJNXiQT9UuXKKsTfXAfDUsF2D7bloMlPisTzDIspiVsu2t3BTah9jB2mF07O5jV/GpLrz8RWqn6Ec8zlnJEirFNS8gqqNNy6Est0wf63/ARIcUTRqsXDaF4pyRBgnYA=;
X-YMail-OSG: VdRdIaQVM1msDeMgF5QiXyjg0SwZ5H04qH0Z3svE1bPfAzJ
	PYb9zXbnkWGtqABnBAyVhb_yRpxzy81KowOK6rwkwQn.td9eEXIfC8srcuVb
	zTouvICtJWnzq5Jch6qw20ZFr3PnBchRVHn.Mr8quzCwb_rWi1moMyUAYwXs
	bbSjd49GIUcP2Bs7gOQE.znIwM19TrLEvmglRcQz7o_9kzq.LtORxgu_Vokk
	UhQ5U2PoeU_W4wiisxd0BfxbRiL8gWWQ6MQ5u5soTbUm10dwjEm68EdfK741
	Y6L7T8QtudDJz5SzbTqYtBdPbQuX410cIsJXCZBO4MoviVXC4Ng7PxUGHJxC
	UOA_LjswtQ1x1qyReX2QPafYVlH8fKPNnQm8pgLK0fbXm1W0YE1e8uZp.4lw
	LnremEifihgTt97BGk.kYv5RR0A.1mBuDbLqxUbVxboMcpENv6LSAegB3FI8
	ZjbdKqqvgF1GQ8xkiyp4lDhGc6a_IHthlBShLSS5zyE7O.VxZXhZBFw--
Received: from [115.111.25.162] by web94711.mail.in2.yahoo.com via HTTP;
	Tue, 04 Oct 2011 12:46:50 IST
X-Mailer: YahooMailWebService/0.8.114.317681
References: 
Message-ID: <1317712610.92069.YahooMailNeo@web94711.mail.in2.yahoo.com>
Date: Tue, 4 Oct 2011 12:46:50 +0530 (IST)
From: sonu vishwakarma <vishwasonu2000@yahoo.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
MIME-Version: 1.0
Subject: : XBMC PACKAGE (package libsdl-mixer-1.2.11-r5: task do_compile: Failed)
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
X-List-Received-Date: Tue, 04 Oct 2011 07:16:57 -0000
X-Groupsio-MsgNum: 7026
Content-Type: multipart/mixed; boundary="69956577-382905749-1317712610=:92069"

--69956577-382905749-1317712610=:92069
Content-Type: multipart/alternative; boundary="69956577-77733219-1317712610=:92069"

--69956577-77733219-1317712610=:92069
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Sir,=0A=0AI'm trying to pull the package XBMC 10.05 which depends on libsdl=
-mixer , pulled it from open-embedded. While building for libsdl-mixer with=
 the recipe libsdl-mixer_1.2.11.bb i'm getting the error as below :=0A=0A=
=0A=0ANOTE: package libsdl-mixer-1.2.11-r5: task do_compile: Started=0AERRO=
R: Function 'do_compile' failed (see /home/sct/logi/gigabyte/poky_gigabyte_=
16Sep2011/build/tmp/work/atom-poky-linux/libsdl-mixer-1.2.11-r5/temp/log.do=
_compile.4392 for further information)=0AERROR: Logfile of failure stored i=
n: /home/sct/logi/gigabyte/poky_gigabyte_16Sep2011/build/tmp/work/atom-poky=
-linux/libsdl-mixer-1.2.11-r5/temp/log.do_compile.4392=0ALog data follows:=
=0A| NOTE: make -j 4 SDL_LIBS=3D-Wl,-rpath,/usr/lib -lSDL -lpthread   -Wl,-=
rpath-link,/home/sct/logi/gigabyte/poky_gigabyte_16Sep2011/build/tmp/sysroo=
ts/fishriver/usr/lib=0A| /bin/sh ./libtool --mode=3Dlink i586-poky-linux-gc=
c -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfpmath=3Dsse=0A --sysroot=
=3D/home/sct/logi/gigabyte/poky_gigabyte_16Sep2011/build/tmp/sysroots/fishr=
iver -o build/libSDL_mixer.la build/effect_position.lo build/effect_stereor=
everse.lo build/effects_internal.lo build/load_aiff.lo build/load_voc.lo bu=
ild/mixer.lo build/music.lo build/music_cmd.lo build/wavestream.lo build/dy=
namic_mod.lo build/music_mod.lo build/common.lo build/ctrlmode.lo build/fil=
ter.lo build/instrum.lo build/mix.lo build/output.lo build/playmidi.lo buil=
d/readmidi.lo build/resample.lo build/sdl_a.lo build/sdl_c.lo build/tables.=
lo build/timidity.lo build/dynamic_flac.lo build/load_flac.lo build/music_f=
lac.lo build/music_mad.lo  -Wl,-O1  -Wl,--as-needed -Wl,-rpath,/usr/lib -lS=
DL -lpthread   -lmad -no-undefined -rpath /usr/lib -release 1.2 -version-in=
fo 10:1:10=0A| ./libtool: line 6399: cd: =3D/usr/lib: No such file or direc=
tory=0A| libtool: link: warning: cannot determine absolute directory name o=
f `=3D/usr/lib'=0A| /bin/grep: =3D/usr/lib/libdirectfb.la: No=0A such file =
or directory=0A| /bin/sed: can't read =3D/usr/lib/libdirectfb.la: No such f=
ile or directory=0A| libtool: link: `=3D/usr/lib/libdirectfb.la' is not a v=
alid libtool archive=0A| make: *** [build/libSDL_mixer.la] Error 1=0A| FATA=
L: oe_runmake failed=0A| ERROR: Function 'do_compile' failed (see /home/sct=
/logi/gigabyte/poky_gigabyte_16Sep2011/build/tmp/work/atom-poky-linux/libsd=
l-mixer-1.2.11-r5/temp/log.do_compile.4392 for further information)=0ANOTE:=
 package libsdl-mixer-1.2.11-r5: task do_compile: Failed=0A=0A=0A=0AI'm bui=
lding it for the Fishriver machine . My host machine is Ubuntu 10.10 ,64 bi=
t . =0ACan someone help me out of this problem ? =0A=0AWith=0ARegards,=0ASo=
nu Vishwakarma

--69956577-77733219-1317712610=:92069
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:ti=
mes new roman, new york, times, serif;font-size:12pt"><div id=3D"yiv4077150=
64"><div style=3D"color: rgb(0, 0, 0); background-color: rgb(255, 255, 255)=
; font-family: times new roman,new york,times,serif; font-size: 12pt;"><div=
 id=3D"yiv407715064yui_3_2_0_15_131770915919740">Sir,<br><br><span id=3D"yi=
v407715064yui_3_2_0_15_131770915919771" class=3D"yiv407715064Apple-style-sp=
an" style=3D"color: rgb(0, 0, 0); font-family: arial,sans-serif; font-size:=
 13px; font-style: normal; font-variant: normal; letter-spacing: normal; li=
ne-height: normal; orphans: 2; text-indent: 0px; text-transform: none; whit=
e-space: normal; widows: 2; word-spacing: 0px; background-color: rgb(255, 2=
55, 255);"><span id=3D"yiv407715064yui_3_2_0_15_131770915919770" style=3D"f=
ont-family: 'Times New Roman'; white-space: pre-wrap; background-color: rgb=
(255, 255, 255); font-size: 16px;">I'm trying to pull the package XBMC 10.0=
5 which
 depends on libsdl-mixer , pulled it from open-embedded. </span></span><spa=
n id=3D"yiv407715064yui_3_2_0_15_131770915919763" class=3D"yiv407715064Appl=
e-style-span" style=3D"color: rgb(0, 0, 0); font-family: arial,sans-serif; =
font-size: 13px; font-style: normal; font-variant: normal; letter-spacing: =
normal; line-height: normal; orphans: 2; text-indent: 0px; text-transform: =
none; white-space: normal; widows: 2; word-spacing: 0px; background-color: =
rgb(255, 255, 255);"><span id=3D"yiv407715064yui_3_2_0_15_131770915919762" =
style=3D"font-family: 'Times New Roman'; white-space: pre-wrap; background-=
color: rgb(255, 255, 255); font-size: 16px;">While building for libsdl-mixe=
r with the recipe <a rel=3D"nofollow" id=3D"yiv407715064yui_3_2_0_15_131770=
915919794" target=3D"_blank" href=3D"http://libsdl-mixer_1.2.11.bb/" style=
=3D"color: rgb(0, 0, 204); outline-style: none;">libsdl-mixer_1.2.11.bb</a>=
 i'm getting the </span></span><span id=3D"yiv407715064yui_3_2_0_15_1317709=
15919757"
 class=3D"yiv407715064Apple-style-span" style=3D"color: rgb(0, 0, 0); font-=
family: arial,sans-serif; font-size: 13px; font-style: normal; font-variant=
: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-ind=
ent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacin=
g: 0px; background-color: rgb(255, 255, 255);"><span id=3D"yiv407715064yui_=
3_2_0_15_131770915919756" style=3D"font-family: 'Times New Roman'; white-sp=
ace: pre-wrap; background-color: rgb(255, 255, 255); font-size: 16px;">erro=
r as below :</span></span><span></span></div><div id=3D"yiv407715064yui_3_2=
_0_15_131770915919740"><br><span id=3D"yiv407715064yui_3_2_0_15_13177091591=
9757" class=3D"yiv407715064Apple-style-span" style=3D"color: rgb(0, 0, 0); =
font-family: arial,sans-serif; font-size: 13px; font-style: normal; font-va=
riant: normal; letter-spacing: normal; line-height: normal; orphans: 2; tex=
t-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-s=
pacing:
 0px; background-color: rgb(255, 255, 255);"><span id=3D"yiv407715064yui_3_=
2_0_15_131770915919756" style=3D"font-family: 'Times New Roman'; white-spac=
e: pre-wrap; background-color: rgb(255, 255, 255); font-size: 16px;"></span=
></span></div><div id=3D"yiv407715064yui_3_2_0_15_131770915919740"><br><spa=
n id=3D"yiv407715064yui_3_2_0_15_131770915919757" class=3D"yiv407715064Appl=
e-style-span" style=3D"color: rgb(0, 0, 0); font-family: arial,sans-serif; =
font-size: 13px; font-style: normal; font-variant: normal; letter-spacing: =
normal; line-height: normal; orphans: 2; text-indent: 0px; text-transform: =
none; white-space: normal; widows: 2; word-spacing: 0px; background-color: =
rgb(255, 255, 255);"><span id=3D"yiv407715064yui_3_2_0_15_131770915919756" =
style=3D"font-family: 'Times New Roman'; white-space: pre-wrap; background-=
color: rgb(255, 255, 255); font-size: 16px;"></span></span></div><div id=3D=
"yiv407715064yui_3_2_0_15_131770915919740"><span
 id=3D"yiv407715064yui_3_2_0_15_131770915919757" class=3D"yiv407715064Apple=
-style-span" style=3D"color: rgb(0, 0, 0); font-family: arial,sans-serif; f=
ont-size: 13px; font-style: normal; font-variant: normal; letter-spacing: n=
ormal; line-height: normal; orphans: 2; text-indent: 0px; text-transform: n=
one; white-space: normal; widows: 2; word-spacing: 0px; background-color: r=
gb(255, 255, 255);"><span id=3D"yiv407715064yui_3_2_0_15_131770915919756" s=
tyle=3D"font-family: 'Times New Roman'; white-space: pre-wrap; background-c=
olor: rgb(255, 255, 255); font-size: 16px;">NOTE: package libsdl-mixer-1.2.=
11-r5: task do_compile: Started<br>ERROR: Function 'do_compile' failed (see=
 /home/sct/logi/gigabyte/poky_gigabyte_16Sep2011/build/tmp/work/atom-poky-l=
inux/libsdl-mixer-1.2.11-r5/temp/log.do_compile.4392 for further informatio=
n)<br>ERROR: Logfile of failure stored in:
 /home/sct/logi/gigabyte/poky_gigabyte_16Sep2011/build/tmp/work/atom-poky-l=
inux/libsdl-mixer-1.2.11-r5/temp/log.do_compile.4392<br>Log data follows:<b=
r>| NOTE: make -j 4 SDL_LIBS=3D-Wl,-rpath,/usr/lib -lSDL -lpthread   -Wl,-r=
path-link,/home/sct/logi/gigabyte/poky_gigabyte_16Sep2011/build/tmp/sysroot=
s/fishriver/usr/lib<br>| /bin/sh ./libtool --mode=3Dlink i586-poky-linux-gc=
c -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfpmath=3Dsse=0A --sysroot=
=3D/home/sct/logi/gigabyte/poky_gigabyte_16Sep2011/build/tmp/sysroots/fishr=
iver -o build/libSDL_mixer.la build/effect_position.lo build/effect_stereor=
everse.lo build/effects_internal.lo build/load_aiff.lo build/load_voc.lo bu=
ild/mixer.lo build/music.lo build/music_cmd.lo build/wavestream.lo build/dy=
namic_mod.lo build/music_mod.lo build/common.lo build/ctrlmode.lo build/fil=
ter.lo build/instrum.lo build/mix.lo build/output.lo build/playmidi.lo buil=
d/readmidi.lo build/resample.lo build/sdl_a.lo build/sdl_c.lo build/tables.=
lo build/timidity.lo build/dynamic_flac.lo build/load_flac.lo build/music_f=
lac.lo build/music_mad.lo  -Wl,-O1  -Wl,--as-needed -Wl,-rpath,/usr/lib -lS=
DL -lpthread   -lmad -no-undefined -rpath /usr/lib -release 1.2 -version-in=
fo 10:1:10<br>| ./libtool: line 6399: cd: =3D/usr/lib: No such file or dire=
ctory<br>| libtool: link: warning: cannot determine absolute directory name=
 of `=3D/usr/lib'<br>| /bin/grep: =3D/usr/lib/libdirectfb.la: No=0A such fi=
le or directory<br>| /bin/sed: can't read =3D/usr/lib/libdirectfb.la: No su=
ch file or directory<br>| libtool: link: `=3D/usr/lib/libdirectfb.la' is no=
t a valid libtool archive<br>| make: *** [build/libSDL_mixer.la] Error 1<br=
>| FATAL: oe_runmake failed<br>| ERROR: Function 'do_compile' failed (see /=
home/sct/logi/gigabyte/poky_gigabyte_16Sep2011/build/tmp/work/atom-poky-lin=
ux/libsdl-mixer-1.2.11-r5/temp/log.do_compile.4392 for further information)=
<br>NOTE: package libsdl-mixer-1.2.11-r5: task do_compile: Failed<br></span=
></span></div><div id=3D"yiv407715064yui_3_2_0_15_131770915919740"><br><spa=
n id=3D"yiv407715064yui_3_2_0_15_131770915919757" class=3D"yiv407715064Appl=
e-style-span" style=3D"color: rgb(0, 0, 0); font-family: arial,sans-serif; =
font-size: 13px; font-style: normal; font-variant: normal; letter-spacing: =
normal; line-height: normal; orphans: 2; text-indent: 0px; text-transform: =
none; white-space: normal; widows: 2; word-spacing: 0px;
 background-color: rgb(255, 255, 255);"><span id=3D"yiv407715064yui_3_2_0_1=
5_131770915919756" style=3D"font-family: 'Times New Roman'; white-space: pr=
e-wrap; background-color: rgb(255, 255, 255); font-size: 16px;"></span></sp=
an></div><div id=3D"yiv407715064yui_3_2_0_15_131770915919740"><br><span id=
=3D"yiv407715064yui_3_2_0_15_131770915919757" class=3D"yiv407715064Apple-st=
yle-span" style=3D"color: rgb(0, 0, 0); font-family: arial,sans-serif; font=
-size: 13px; font-style: normal; font-variant: normal; letter-spacing: norm=
al; line-height: normal; orphans: 2; text-indent: 0px; text-transform: none=
; white-space: normal; widows: 2; word-spacing: 0px; background-color: rgb(=
255, 255, 255);"><span id=3D"yiv407715064yui_3_2_0_15_131770915919756" styl=
e=3D"font-family: 'Times New Roman'; white-space: pre-wrap; background-colo=
r: rgb(255, 255, 255); font-size: 16px;"></span></span></div><div id=3D"yiv=
407715064yui_3_2_0_15_131770915919740"><span
 id=3D"yiv407715064yui_3_2_0_1_1317709166540225" class=3D"yiv407715064Apple=
-style-span" style=3D"color: rgb(69, 69, 69); font-family: Arial,Helvetica,=
sans-serif; font-size: 12px;"><span id=3D"yiv407715064yui_3_2_0_1_131770916=
6540222" class=3D"yiv407715064Apple-style-span" style=3D"color: rgb(0, 0, 0=
); font-family: arial,sans-serif; font-size: 13px; font-style: normal; font=
-variant: normal; letter-spacing: normal; line-height: normal; orphans: 2; =
text-indent: 0px; text-transform: none; white-space: normal; widows: 2; wor=
d-spacing: 0px; background-color: rgb(255, 255, 255);"><span id=3D"yiv40771=
5064yui_3_2_0_15_1317709159197165" style=3D"font-family: 'Times New Roman';=
 white-space: pre-wrap; background-color: rgb(255, 255, 255); font-size: 16=
px;">I'm building it for the Fishriver machine . My host machine is Ubuntu =
10.10 ,64 bit . </span><div id=3D"yiv407715064yui_3_2_0_1_1317709166540219"=
><font id=3D"yiv407715064yui_3_2_0_1_1317709166540216" face=3D"'Times New R=
oman'"
 size=3D"3"><span id=3D"yiv407715064yui_3_2_0_1_1317709166540213" style=3D"=
white-space: pre-wrap;">Can someone help me out of this problem ? </span></=
font></div><div id=3D"yiv407715064yui_3_2_0_15_1317709159197148"><font id=
=3D"yiv407715064yui_3_2_0_15_1317709159197147" face=3D"'Times New Roman'" s=
ize=3D"3"><span id=3D"yiv407715064yui_3_2_0_15_1317709159197146" style=3D"w=
hite-space: pre-wrap;"><br></span></font></div><div id=3D"yiv407715064yui_3=
_2_0_15_1317709159197135"><font id=3D"yiv407715064yui_3_2_0_15_131770915919=
7134" face=3D"'Times New Roman'" size=3D"3"><span id=3D"yiv407715064yui_3_2=
_0_15_1317709159197133" style=3D"white-space: pre-wrap;">With<br> Regards,<=
/span></font></div><div><font face=3D"'Times New Roman'" size=3D"3"><span s=
tyle=3D"white-space: pre-wrap;">Sonu Vishwakarma</span></font></div></span>=
</span></div></div></div></div></body></html>

--69956577-77733219-1317712610=:92069--

--69956577-382905749-1317712610=:92069
Content-Type: application/octet-stream; name="log.do_compile.4392"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="log.do_compile.4392"

Tk9URTogbWFrZSAtaiA0IFNETF9MSUJTPS1XbCwtcnBhdGgsL3Vzci9saWIgLWxTREwgLWxwdGhy
ZWFkICAgLVdsLC1ycGF0aC1saW5rLC9ob21lL3NjdC9sb2dpL2dpZ2FieXRlL3Bva3lfZ2lnYWJ5
dGVfMTZTZXAyMDExL2J1aWxkL3RtcC9zeXNyb290cy9maXNocml2ZXIvdXNyL2xpYgovYmluL3No
IC4vbGlidG9vbCAtLW1vZGU9bGluayBpNTg2LXBva3ktbGludXgtZ2NjIC1tMzIgLW1hcmNoPWNv
cmUyIC1tc3NlMyAtbXR1bmU9Z2VuZXJpYyAtbWZwbWF0aD1zc2UgLS1zeXNyb290PS9ob21lL3Nj
dC9sb2dpL2dpZ2FieXRlL3Bva3lfZ2lnYWJ5dGVfMTZTZXAyMDExL2J1aWxkL3RtcC9zeXNyb290
cy9maXNocml2ZXIgLW8gYnVpbGQvbGliU0RMX21peGVyLmxhIGJ1aWxkL2VmZmVjdF9wb3NpdGlv
bi5sbyBidWlsZC9lZmZlY3Rfc3RlcmVvcmV2ZXJzZS5sbyBidWlsZC9lZmZlY3RzX2ludGVybmFs
LmxvIGJ1aWxkL2xvYWRfYWlmZi5sbyBidWlsZC9sb2FkX3ZvYy5sbyBidWlsZC9taXhlci5sbyBi
dWlsZC9tdXNpYy5sbyBidWlsZC9tdXNpY19jbWQubG8gYnVpbGQvd2F2ZXN0cmVhbS5sbyBidWls
ZC9keW5hbWljX21vZC5sbyBidWlsZC9tdXNpY19tb2QubG8gYnVpbGQvY29tbW9uLmxvIGJ1aWxk
L2N0cmxtb2RlLmxvIGJ1aWxkL2ZpbHRlci5sbyBidWlsZC9pbnN0cnVtLmxvIGJ1aWxkL21peC5s
byBidWlsZC9vdXRwdXQubG8gYnVpbGQvcGxheW1pZGkubG8gYnVpbGQvcmVhZG1pZGkubG8gYnVp
bGQvcmVzYW1wbGUubG8gYnVpbGQvc2RsX2EubG8gYnVpbGQvc2RsX2MubG8gYnVpbGQvdGFibGVz
LmxvIGJ1aWxkL3RpbWlkaXR5LmxvIGJ1aWxkL2R5bmFtaWNfZmxhYy5sbyBidWlsZC9sb2FkX2Zs
YWMubG8gYnVpbGQvbXVzaWNfZmxhYy5sbyBidWlsZC9tdXNpY19tYWQubG8gIC1XbCwtTzEgIC1X
bCwtLWFzLW5lZWRlZCAtV2wsLXJwYXRoLC91c3IvbGliIC1sU0RMIC1scHRocmVhZCAgIC1sbWFk
IC1uby11bmRlZmluZWQgLXJwYXRoIC91c3IvbGliIC1yZWxlYXNlIDEuMiAtdmVyc2lvbi1pbmZv
IDEwOjE6MTAKLi9saWJ0b29sOiBsaW5lIDYzOTk6IGNkOiA9L3Vzci9saWI6IE5vIHN1Y2ggZmls
ZSBvciBkaXJlY3RvcnkKbGlidG9vbDogbGluazogd2FybmluZzogY2Fubm90IGRldGVybWluZSBh
YnNvbHV0ZSBkaXJlY3RvcnkgbmFtZSBvZiBgPS91c3IvbGliJwovYmluL2dyZXA6ID0vdXNyL2xp
Yi9saWJkaXJlY3RmYi5sYTogTm8gc3VjaCBmaWxlIG9yIGRpcmVjdG9yeQovYmluL3NlZDogY2Fu
J3QgcmVhZCA9L3Vzci9saWIvbGliZGlyZWN0ZmIubGE6IE5vIHN1Y2ggZmlsZSBvciBkaXJlY3Rv
cnkKbGlidG9vbDogbGluazogYD0vdXNyL2xpYi9saWJkaXJlY3RmYi5sYScgaXMgbm90IGEgdmFs
aWQgbGlidG9vbCBhcmNoaXZlCm1ha2U6ICoqKiBbYnVpbGQvbGliU0RMX21peGVyLmxhXSBFcnJv
ciAxCkZBVEFMOiBvZV9ydW5tYWtlIGZhaWxlZApFUlJPUjogRnVuY3Rpb24gJ2RvX2NvbXBpbGUn
IGZhaWxlZCAoc2VlIC9ob21lL3NjdC9sb2dpL2dpZ2FieXRlL3Bva3lfZ2lnYWJ5dGVfMTZTZXAy
MDExL2J1aWxkL3RtcC93b3JrL2F0b20tcG9reS1saW51eC9saWJzZGwtbWl4ZXItMS4yLjExLXI1
L3RlbXAvbG9nLmRvX2NvbXBpbGUuNDM5MiBmb3IgZnVydGhlciBpbmZvcm1hdGlvbikK

--69956577-382905749-1317712610=:92069--

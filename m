Return-Path: <vishwasonu2000@yahoo.com>
Received: from nm2-vm0.bullet.mail.in.yahoo.com
	(nm2-vm0.bullet.mail.in.yahoo.com [121.101.151.210])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 0A082E004E4
	for <poky@yoctoproject.org>; Tue,  4 Oct 2011 00:27:32 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@yahoo.com;
	x-dkim-adsp=none (insecure policy)
Received: from [121.101.151.238] by nm2.bullet.mail.in.yahoo.com with NNFMP;
	04 Oct 2011 07:27:30 -0000
Received: from [121.101.151.234] by tm3.bullet.mail.in.yahoo.com with NNFMP;
	04 Oct 2011 07:28:00 -0000
Received: from [127.0.0.1] by omp1003.mail.in.yahoo.com with NNFMP;
	04 Oct 2011 07:27:59 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 17031.54089.bm@omp1003.mail.in.yahoo.com
Received: (qmail 99909 invoked by uid 60001); 4 Oct 2011 07:27:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1317713250; bh=dtLEILWo8SoDueAzsxwny3ZQ0B08rVeJo7LySti319Q=;
	h=X-YMail-OSG:Received:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=qMW6ACOYtbbyEh2/mG3Sx6fuSyAAhbf9WKOWypkMP7Dd294/JGHGo2mzlebot6PlCo1v7/Jg5AzJ+/23/2uonNsqYxv3p7CgvQBONCnx7vRyI73fJjBUHeMOgvD1J1IgYl4gL1abBZNTn3e7Zzyvm3X10dKCvL0HnATiTs/WKNw=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=X-YMail-OSG:Received:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=KKkNm/KDIsyI2JaBBVJWYC2d3q6IE6sSfaibq8u0t6tAIiiTeVESIvim6GuoqgtGBqe6kU/KElGdXCsmmQWyNpoxBzJ0oE8XvBHVXz1OaCLvBkFXft0OBp9JM+c++CPNxxtHBxdaiPghpIBSR8wzSmMEo0ZxQDKCl/wz4H7OB90=;
X-YMail-OSG: hKNveNgVM1mIDZlmLF2qGxfVBgLKNIUNt5TR.eqylSwleI_
	pvN8nSYTxq4J5TDybtGyUs8RnJp82UCahrrpt9ET9DcLX9bYZQajxd6I6kTt
	uqp5iS1G.M9LU20ZqHcAdp0a605TTH.GHggQzfMvR0DYg50taAhoGTJswX53
	2W_rvHbj50EK2vdpJIynSCuudahPJ4InIK2e7fABNgDle1o0ju_fB.5aFhbp
	1C7eQlkxTYZDH2ZIzVfRA1m_vg0DjR7VfVhn7i4Gjpaxg1xz_ywM1QqsXb3k
	4kkU8TJ6yvMnvMoSTPWaon2HrX.ShQeD1MUVtg5aDswtnlTNRmEX4VrHCwtk
	ifm0YvEUMbOUE_HRtYnx0HhX9NddZgelzy.Fdt4FPYk4XWaziOe1SDaGbGDR
	tzXPqRgf3LHR4dt64i4c5puu80ptrzIUfX_1G5bPkqAJQZ3RS0Z3LQnqJzy5
	Plhgo_VyB7FUgXsJtncs0hEFFugxHVphrCmvNq2HhXrRnQ9PXg179wyaoJ1Z
	MqAROR4olaG1uBT6Dg4eAU3CjYyI6boYbQhG49iGwHGteg3_KPeOc53QVNGA
	ZtrJJEDH894mIJXfZHXKJHMz.nFIvE1i.xfg2c3TcNAx1iLtNmCUmf6jXQiy
	YSgy1x_RMpuF8xw--
Received: from [115.111.25.162] by web94703.mail.in2.yahoo.com via HTTP;
	Tue, 04 Oct 2011 12:57:27 IST
X-Mailer: YahooMailWebService/0.8.114.317681
Message-ID: <1317713247.86493.YahooMailNeo@web94703.mail.in2.yahoo.com>
Date: Tue, 4 Oct 2011 12:57:27 +0530 (IST)
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
X-List-Received-Date: Tue, 04 Oct 2011 07:27:34 -0000
Content-Type: multipart/alternative;
	boundary="-1073307198-1289820440-1317713247=:86493"

---1073307198-1289820440-1317713247=:86493
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

=0A=0ASir,=0A=0AI'm trying to pull the package XBMC 10.05 which depends on =
libsdl-image , pulled it from open-embedded. While building for libsdl-imag=
e with the recipec libsdl-image_1.2.10.bbsimilar error i get for libsdl-mix=
er. I'm getting the error as below :=0A=0ALoading cache: 100% |############=
###########################################################################=
###########################################################################=
######################################| ETA:=A0 00:00:00=0ALoaded 1144 entr=
ies from dependency cache.=0AParsing recipes: 100% |#######################=
###########################################################################=
###########################################################################=
#########################| Time: 00:00:00=0AParsing of 935 .bb files comple=
te (918 cached, 17 parsed). 1158 targets, 16 skipped, 0 masked, 0 errors.=
=0A=0AOE Build Configuration:=0ABB_VERSION=A0=A0=A0=A0=A0=A0=A0 =3D "1.11.0=
"=0AMETADATA_BRANCH=A0=A0 =3D "bernard-cur"=0AMETADATA_REVISION =3D "a4b073=
ae275e1999779f7806477c4720eae64808"=0ATARGET_ARCH=A0=A0=A0=A0=A0=A0 =3D "i5=
86"=0ATARGET_OS=A0=A0=A0=A0=A0=A0=A0=A0 =3D "linux"=0AMACHINE=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 =3D "fishriver"=0ADISTRO=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 =3D "poky"=0ADISTRO_VERSION=A0=A0=A0 =3D "1.0"=0ATARGET_FPU=A0=A0=A0=A0=
=A0=A0=A0 =3D ""=0A=0ANOTE: Resolving any missing task queue dependencies=
=0AERROR: Trying to resolve runtime dependency glibc-charmap-ibm850 resulte=
d in conflicting PREFERRED_PROVIDER entries being found.=0AThe providers fo=
und were: ['virtual:nativesdk:/home/sct/logi/gigabyte/poky_gigabyte_16Sep20=
11/meta/recipes-core/eglibc/eglibc_2.12.bb', '/home/sct/logi/gigabyte/poky_=
gigabyte_16Sep2011/meta/recipes-core/eglibc/eglibc_2.12.bb']=0AThe PREFERRE=
D_PROVIDER entries resulting in this conflict were: ['PREFERRED_PROVIDER_vi=
rtual/libc-nativesdk =3D eglibc-nativesdk', 'PREFERRED_PROVIDER_virtual/lib=
c =3D eglibc']=0ANOTE: Runtime target 'libsdl-qpe' is unbuildable, removing=
...=0AMissing or unbuildable dependency chain was: ['libsdl-qpe', 'virtual/=
libqpe1']=0ANOTE: Runtime target 'virtual/libqpe1' is unbuildable, removing=
...=0AMissing or unbuildable dependency chain was: ['virtual/libqpe1']=0ANO=
TE: Runtime target 'libopie2' is unbuildable, removing...=0AMissing or unbu=
ildable dependency chain was: ['libopie2']=0ANOTE: multiple providers are a=
vailable for virtual/libsdl (libsdl-directfb, libsdl-x11, libsdl-qpe)=0ANOT=
E: consider defining a PREFERRED_PROVIDER entry to match virtual/libsdl=0AN=
OTE: multiple providers are available for runtime glibc-charmap-ibm850 (egl=
ibc, eglibc-nativesdk, glibc-nativesdk, glibc)=0ANOTE: consider defining a =
PREFERRED_PROVIDER entry to match glibc-charmap-ibm850=0AERROR: Nothing PRO=
VIDES 'virtual/libqpe1'=0AERROR: Nothing PROVIDES 'libopie2'=0AERROR: Nothi=
ng RPROVIDES 'virtual/libqpe1'=0AERROR: Nothing RPROVIDES 'libopie2'=0ANOTE=
: Preparing runqueue=0AERROR: Multiple .bb files are due to be built which =
each provide virtual/libgl (/home/sct/logi/gigabyte/poky_gigabyte_16Sep2011=
/meta/recipes-graphics/mesa/libva_1.0_12.bb /home/sct/logi/gigabyte/poky_gi=
gabyte_16Sep2011/meta/recipes-graphics/mesa/mesa-dri_7.10.3.bb).=0A=A0This =
usually means one provides something the other doesn't and should.=0A.=0A.=
=0A.=0A.=0AERROR: Function 'do_compile' failed (see /home/sct/logi/gigabyte=
/poky_gigabyte_16Sep2011/build/tmp/work/atom-poky-linux/libsdl-image-1.2.10=
-r5.2/temp/log.do_compile.22977 for further information)=0AERROR: Logfile o=
f failure stored in: /home/sct/logi/gigabyte/poky_gigabyte_16Sep2011/build/=
tmp/work/atom-poky-linux/libsdl-image-1.2.10-r5.2/temp/log.do_compile.22977=
=0ALog data follows:=0A| NOTE: make -j 4=0A| /bin/sh ./i586-poky-linux-libt=
ool --tag=3DCC=A0=A0 --mode=3Dlink i586-poky-linux-gcc -m32 -march=3Dcore2 =
-msse3 -mtune=3Dgeneric -mfpmath=3Dsse --sysroot=3D/home/sct/logi/gigabyte/=
poky_gigabyte_16Sep2011/build/tmp/sysroots/fishriver=A0 -I/home/sct/logi/gi=
gabyte/poky_gigabyte_16Sep2011/build/tmp/sysroots/fishriver/usr/include/lib=
png12=A0=A0 -fexpensive-optimizations -fomit-frame-pointer -frename-registe=
rs -O2 -ggdb -feliminate-unused-debug-types -I/home/sct/logi/gigabyte/poky_=
gigabyte_16Sep2011/build/tmp/sysroots/fishriver/usr/include/SDL -D_GNU_SOUR=
CE=3D1 -D_REENTRANT -no-undefined -release 1.2 -version-info 8:2:8 -Wl,-O1=
=A0 -Wl,--as-needed -o libSDL_image.la -rpath /usr/lib IMG.lo IMG_bmp.lo IM=
G_gif.lo IMG_jpg.lo IMG_lbm.lo IMG_pcx.lo IMG_png.lo IMG_pnm.lo IMG_tga.lo =
IMG_tif.lo IMG_xcf.lo IMG_xpm.lo IMG_xv.lo IMG_ImageIO.lo -lpng -lz -ljpeg =
-ltiff -lz=A0 -L/home/sct/logi/gigabyte/poky_gigabyte_16Sep2011/build/tmp/s=
ysroots/fishriver/usr/lib
 -Wl,-rpath,/home/sct/logi/gigabyte/poky_gigabyte_16Sep2011/build/tmp/sysro=
ots/fishriver/usr/lib -lSDL -lpthread=0A| i586-poky-linux-libtool: link: wa=
rning: `/home/sct/logi/gigabyte/poky_gigabyte_16Sep2011/build/tmp/sysroots/=
fishriver/usr/lib/libz.la' seems to be moved=0A| i586-poky-linux-libtool: l=
ink: warning: library `/home/sct/logi/gigabyte/poky_gigabyte_16Sep2011/buil=
d/tmp/sysroots/fishriver/usr/lib/libjpeg.la' was moved.=0A| /bin/grep: /hom=
e/sct/logi/gigabyte/poky_gigabyte_16Sep2011/build/tmp/sysroots/fishriver/ho=
me/sct/logi/gigabyte/poky_gigabyte_16Sep2011/build/tmp/work/atom-poky-linux=
/jpeg-6b-r0/image/usr/lib/libjpeg.la: No such file or directory=0A| /bin/se=
d: can't read /home/sct/logi/gigabyte/poky_gigabyte_16Sep2011/build/tmp/sys=
roots/fishriver/home/sct/logi/gigabyte/poky_gigabyte_16Sep2011/build/tmp/wo=
rk/atom-poky-linux/jpeg-6b-r0/image/usr/lib/libjpeg.la: No such file or dir=
ectory=0A| i586-poky-linux-libtool: link: `/home/sct/logi/gigabyte/poky_gig=
abyte_16Sep2011/build/tmp/sysroots/fishriver/home/sct/logi/gigabyte/poky_gi=
gabyte_16Sep2011/build/tmp/work/atom-poky-linux/jpeg-6b-r0/image/usr/lib/li=
bjpeg.la' is not a valid libtool archive=0A| make: *** [libSDL_image.la] Er=
ror 1=0A| FATAL: oe_runmake failed=0A| ERROR: Function 'do_compile' failed =
(see /home/sct/logi/gigabyte/poky_gigabyte_16Sep2011/build/tmp/work/atom-po=
ky-linux/libsdl-image-1.2.10-r5.2/temp/log.do_compile.22977 for further inf=
ormation)=0ANOTE: package libsdl-image-1.2.10-r5.2: task do_compile: Failed=
=0AERROR: Task 3156 (/home/sct/logi/gigabyte/poky_gigabyte_16Sep2011/meta-s=
ct/recipes-sct/libsdl/libsdl-image_1.2.10.bb, do_compile) failed with exit =
code '1'=0A=0AERROR: '/home/sct/logi/gigabyte/poky_gigabyte_16Sep2011/meta-=
sct/recipes-sct/libsdl/libsdl-image_1.2.10.bb' failed=0A=0A=0A=0AI'm buildi=
ng it for the Fishriver machine . My host machine is Ubuntu 10.10 ,64 bit .=
 =0ACan someone help me out of this problem ? =0A=0AWith Regards,=0ASonu Vi=
shwakarma

---1073307198-1289820440-1317713247=:86493
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:ti=
mes new roman, new york, times, serif;font-size:12pt"><div><br></div><div i=
d=3D"yiv186618822yui_3_2_0_15_131770915919740">Sir,<br><br><span id=3D"yiv1=
86618822yui_3_2_0_15_131770915919771" class=3D"yiv186618822Apple-style-span=
" style=3D"color: rgb(0, 0, 0); font-family: arial,sans-serif; font-size: 1=
3px; font-style: normal; font-variant: normal; letter-spacing: normal; line=
-height: normal; orphans: 2; text-indent: 0px; text-transform: none; white-=
space: normal; widows: 2; word-spacing: 0px; background-color: rgb(255, 255=
, 255);"><span id=3D"yiv186618822yui_3_2_0_15_131770915919770" style=3D"fon=
t-family: 'Times New Roman'; white-space: pre-wrap; background-color: rgb(2=
55, 255, 255); font-size: 16px;">I'm trying to pull the package XBMC 10.05 =
which depends on libsdl-image , pulled it from open-embedded. </span></span=
><span id=3D"yiv186618822yui_3_2_0_15_131770915919763"
 class=3D"yiv186618822Apple-style-span" style=3D"color: rgb(0, 0, 0); font-=
family: arial,sans-serif; font-size: 13px; font-style: normal; font-variant=
: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-ind=
ent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacin=
g: 0px; background-color: rgb(255, 255, 255);"><span id=3D"yiv186618822yui_=
3_2_0_15_131770915919762" style=3D"font-family: 'Times New Roman'; white-sp=
ace: pre-wrap; background-color: rgb(255, 255, 255); font-size: 16px;">Whil=
e building for libsdl-image with the recipe</span></span>c libsdl-image_1.2=
.10.bb<span id=3D"yiv186618822yui_3_2_0_15_131770915919763" class=3D"yiv186=
618822Apple-style-span" style=3D"color: rgb(0, 0, 0); font-family: arial,sa=
ns-serif; font-size: 13px; font-style: normal; font-variant: normal; letter=
-spacing: normal; line-height: normal; orphans: 2; text-indent: 0px; text-t=
ransform: none; white-space: normal; widows: 2; word-spacing: 0px;
 background-color: rgb(255, 255, 255);"><span id=3D"yiv186618822yui_3_2_0_1=
5_131770915919762" style=3D"font-family: 'Times New Roman'; white-space: pr=
e-wrap; background-color: rgb(255, 255, 255); font-size: 16px;"> similar er=
ror i get for libsdl-mixer. I'm getting the </span></span><span id=3D"yiv18=
6618822yui_3_2_0_15_131770915919757" class=3D"yiv186618822Apple-style-span"=
 style=3D"color: rgb(0, 0, 0); font-family: arial,sans-serif; font-size: 13=
px; font-style: normal; font-variant: normal; letter-spacing: normal; line-=
height: normal; orphans: 2; text-indent: 0px; text-transform: none; white-s=
pace: normal; widows: 2; word-spacing: 0px; background-color: rgb(255, 255,=
 255);"><span id=3D"yiv186618822yui_3_2_0_15_131770915919756" style=3D"font=
-family: 'Times New Roman'; white-space: pre-wrap; background-color: rgb(25=
5, 255, 255); font-size: 16px;">error as below :</span></span><span></span>=
</div><br><div>Loading cache: 100%
 |#########################################################################=
###########################################################################=
####################################################| ETA:&nbsp; 00:00:00<b=
r>Loaded 1144 entries from dependency cache.<br>Parsing recipes: 100% |####=
###########################################################################=
###########################################################################=
############################################| Time: 00:00:00<br>Parsing of =
935 .bb files complete (918 cached, 17 parsed). 1158 targets, 16 skipped, 0=
 masked, 0 errors.<br><br>OE Build Configuration:<br>BB_VERSION&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "1.11.0"<br>METADATA_BRANCH&nbsp;&nbsp; =
=3D "bernard-cur"<br>METADATA_REVISION =3D "a4b073ae275e1999779f7806477c472=
0eae64808"<br>TARGET_ARCH&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "i586"<br=
>TARGET_OS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D
 "linux"<br>MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; =3D "fishriver"<br>DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; =3D "poky"<br>DISTRO_VERSION&nbsp;&nbsp;&nbsp; =3D "1=
.0"<br>TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D ""<br><br>N=
OTE: Resolving any missing task queue dependencies<br>ERROR: Trying to reso=
lve runtime dependency glibc-charmap-ibm850 resulted in conflicting PREFERR=
ED_PROVIDER entries being found.<br>The providers found were: ['virtual:nat=
ivesdk:/home/sct/logi/gigabyte/poky_gigabyte_16Sep2011/meta/recipes-core/eg=
libc/eglibc_2.12.bb', '/home/sct/logi/gigabyte/poky_gigabyte_16Sep2011/meta=
/recipes-core/eglibc/eglibc_2.12.bb']<br>The PREFERRED_PROVIDER entries res=
ulting in this conflict were: ['PREFERRED_PROVIDER_virtual/libc-nativesdk =
=3D eglibc-nativesdk', 'PREFERRED_PROVIDER_virtual/libc =3D eglibc']<br>NOT=
E: Runtime target 'libsdl-qpe' is unbuildable, removing...<br>Missing or
 unbuildable dependency chain was: ['libsdl-qpe', 'virtual/libqpe1']<br>NOT=
E: Runtime target 'virtual/libqpe1' is unbuildable, removing...<br>Missing =
or unbuildable dependency chain was: ['virtual/libqpe1']<br>NOTE: Runtime t=
arget 'libopie2' is unbuildable, removing...<br>Missing or unbuildable depe=
ndency chain was: ['libopie2']<br>NOTE: multiple providers are available fo=
r virtual/libsdl (libsdl-directfb, libsdl-x11, libsdl-qpe)<br>NOTE: conside=
r defining a PREFERRED_PROVIDER entry to match virtual/libsdl<br>NOTE: mult=
iple providers are available for runtime glibc-charmap-ibm850 (eglibc, egli=
bc-nativesdk, glibc-nativesdk, glibc)<br>NOTE: consider defining a PREFERRE=
D_PROVIDER entry to match glibc-charmap-ibm850<br>ERROR: Nothing PROVIDES '=
virtual/libqpe1'<br>ERROR: Nothing PROVIDES 'libopie2'<br>ERROR: Nothing RP=
ROVIDES 'virtual/libqpe1'<br>ERROR: Nothing RPROVIDES 'libopie2'<br>NOTE: P=
reparing runqueue<br>ERROR: Multiple .bb files are due to be built
 which each provide virtual/libgl (/home/sct/logi/gigabyte/poky_gigabyte_16=
Sep2011/meta/recipes-graphics/mesa/libva_1.0_12.bb /home/sct/logi/gigabyte/=
poky_gigabyte_16Sep2011/meta/recipes-graphics/mesa/mesa-dri_7.10.3.bb).<br>=
&nbsp;This usually means one provides something the other doesn't and shoul=
d.</div><div>.</div><div>.</div><div>.</div><div>.</div><div>ERROR: Functio=
n 'do_compile' failed (see /home/sct/logi/gigabyte/poky_gigabyte_16Sep2011/=
build/tmp/work/atom-poky-linux/libsdl-image-1.2.10-r5.2/temp/log.do_compile=
.22977 for further information)<br>ERROR: Logfile of failure stored in: /ho=
me/sct/logi/gigabyte/poky_gigabyte_16Sep2011/build/tmp/work/atom-poky-linux=
/libsdl-image-1.2.10-r5.2/temp/log.do_compile.22977<br>Log data follows:<br=
>| NOTE: make -j 4<br>| /bin/sh ./i586-poky-linux-libtool --tag=3DCC&nbsp;&=
nbsp; --mode=3Dlink i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=
=3Dgeneric -mfpmath=3Dsse
 --sysroot=3D/home/sct/logi/gigabyte/poky_gigabyte_16Sep2011/build/tmp/sysr=
oots/fishriver&nbsp; -I/home/sct/logi/gigabyte/poky_gigabyte_16Sep2011/buil=
d/tmp/sysroots/fishriver/usr/include/libpng12&nbsp;&nbsp; -fexpensive-optim=
izations -fomit-frame-pointer -frename-registers -O2 -ggdb -feliminate-unus=
ed-debug-types -I/home/sct/logi/gigabyte/poky_gigabyte_16Sep2011/build/tmp/=
sysroots/fishriver/usr/include/SDL -D_GNU_SOURCE=3D1 -D_REENTRANT -no-undef=
ined -release 1.2 -version-info 8:2:8 -Wl,-O1&nbsp; -Wl,--as-needed -o libS=
DL_image.la -rpath /usr/lib IMG.lo IMG_bmp.lo IMG_gif.lo IMG_jpg.lo IMG_lbm=
.lo IMG_pcx.lo IMG_png.lo IMG_pnm.lo IMG_tga.lo IMG_tif.lo IMG_xcf.lo IMG_x=
pm.lo IMG_xv.lo IMG_ImageIO.lo -lpng -lz -ljpeg -ltiff -lz&nbsp; -L/home/sc=
t/logi/gigabyte/poky_gigabyte_16Sep2011/build/tmp/sysroots/fishriver/usr/li=
b -Wl,-rpath,/home/sct/logi/gigabyte/poky_gigabyte_16Sep2011/build/tmp/sysr=
oots/fishriver/usr/lib -lSDL -lpthread<br>| i586-poky-linux-libtool:
 link: warning: `/home/sct/logi/gigabyte/poky_gigabyte_16Sep2011/build/tmp/=
sysroots/fishriver/usr/lib/libz.la' seems to be moved<br>| i586-poky-linux-=
libtool: link: warning: library `/home/sct/logi/gigabyte/poky_gigabyte_16Se=
p2011/build/tmp/sysroots/fishriver/usr/lib/libjpeg.la' was moved.<br>| /bin=
/grep: /home/sct/logi/gigabyte/poky_gigabyte_16Sep2011/build/tmp/sysroots/f=
ishriver/home/sct/logi/gigabyte/poky_gigabyte_16Sep2011/build/tmp/work/atom=
-poky-linux/jpeg-6b-r0/image/usr/lib/libjpeg.la: No such file or directory<=
br>| /bin/sed: can't read /home/sct/logi/gigabyte/poky_gigabyte_16Sep2011/b=
uild/tmp/sysroots/fishriver/home/sct/logi/gigabyte/poky_gigabyte_16Sep2011/=
build/tmp/work/atom-poky-linux/jpeg-6b-r0/image/usr/lib/libjpeg.la: No such=
 file or directory<br>| i586-poky-linux-libtool: link:
 `/home/sct/logi/gigabyte/poky_gigabyte_16Sep2011/build/tmp/sysroots/fishri=
ver/home/sct/logi/gigabyte/poky_gigabyte_16Sep2011/build/tmp/work/atom-poky=
-linux/jpeg-6b-r0/image/usr/lib/libjpeg.la' is not a valid libtool archive<=
br>| make: *** [libSDL_image.la] Error 1<br>| FATAL: oe_runmake failed<br>|=
 ERROR: Function 'do_compile' failed (see /home/sct/logi/gigabyte/poky_giga=
byte_16Sep2011/build/tmp/work/atom-poky-linux/libsdl-image-1.2.10-r5.2/temp=
/log.do_compile.22977 for further information)<br>NOTE: package libsdl-imag=
e-1.2.10-r5.2: task do_compile: Failed<br>ERROR: Task 3156 (/home/sct/logi/=
gigabyte/poky_gigabyte_16Sep2011/meta-sct/recipes-sct/libsdl/libsdl-image_1=
.2.10.bb, do_compile) failed with exit code '1'<br><br>ERROR: '/home/sct/lo=
gi/gigabyte/poky_gigabyte_16Sep2011/meta-sct/recipes-sct/libsdl/libsdl-imag=
e_1.2.10.bb' failed</div><div><br></div><div><br></div><div><br></div><div =
id=3D"yiv186618822yui_3_2_0_15_131770915919740"><span
 id=3D"yiv186618822yui_3_2_0_1_1317709166540225" class=3D"yiv186618822Apple=
-style-span" style=3D"color: rgb(69, 69, 69); font-family: Arial,Helvetica,=
sans-serif; font-size: 12px;"><span id=3D"yiv186618822yui_3_2_0_1_131770916=
6540222" class=3D"yiv186618822Apple-style-span" style=3D"color: rgb(0, 0, 0=
); font-family: arial,sans-serif; font-size: 13px; font-style: normal; font=
-variant: normal; letter-spacing: normal; line-height: normal; orphans: 2; =
text-indent: 0px; text-transform: none; white-space: normal; widows: 2; wor=
d-spacing: 0px; background-color: rgb(255, 255, 255);"><span id=3D"yiv18661=
8822yui_3_2_0_15_1317709159197165" style=3D"font-family: 'Times New Roman';=
 white-space: pre-wrap; background-color: rgb(255, 255, 255); font-size: 16=
px;">I'm building it for the Fishriver machine . My host machine is Ubuntu =
10.10 ,64 bit . </span><div id=3D"yiv186618822yui_3_2_0_1_1317709166540219"=
><font id=3D"yiv186618822yui_3_2_0_1_1317709166540216" face=3D"'Times New R=
oman'"
 size=3D"3"><span id=3D"yiv186618822yui_3_2_0_1_1317709166540213" style=3D"=
white-space: pre-wrap;">Can someone help me out of this problem ? </span></=
font></div><div id=3D"yiv186618822yui_3_2_0_15_1317709159197148"><font id=
=3D"yiv186618822yui_3_2_0_15_1317709159197147" face=3D"'Times New Roman'" s=
ize=3D"3"><span id=3D"yiv186618822yui_3_2_0_15_1317709159197146" style=3D"w=
hite-space: pre-wrap;"><br></span></font></div><div id=3D"yiv186618822yui_3=
_2_0_15_1317709159197135"><font id=3D"yiv186618822yui_3_2_0_15_131770915919=
7134" face=3D"'Times New Roman'" size=3D"3"><span id=3D"yiv186618822yui_3_2=
_0_15_1317709159197133" style=3D"white-space: pre-wrap;">With Regards,</spa=
n></font></div><div><font face=3D"'Times New Roman'" size=3D"3"><span style=
=3D"white-space: pre-wrap;">Sonu Vishwakarma</span></font></div></span></sp=
an></div><div><br><br></div></div></body></html>

---1073307198-1289820440-1317713247=:86493--

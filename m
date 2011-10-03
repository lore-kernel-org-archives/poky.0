Return-Path: <vsailub4u@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A0C9E004E9
	for <poky@yoctoproject.org>; Mon,  3 Oct 2011 07:11:14 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pzk36 with SMTP id 36so3388179pzk.7
	for <poky@yoctoproject.org>; Mon, 03 Oct 2011 07:11:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=17ZuluGLniR+mRjp1+YpLtd9LN7CdQc9/IMrrq6fO9k=;
	b=Ra++TGMiF01erET6cgWfWZ7J6Q3a2K/7me3GGtAYbWlBpNPA1SFvCsLvLepg1X0vGs
	7FFPv++LmR64UuXJFJREGsm9Um30nKlAB0HEKeMK+CGiYPRk+1QHN9nW8mi2lZwl9iFm
	7o5g3Mv2sujjOPE2fFtr+K/Dp2SARHz7B/mdI=
MIME-Version: 1.0
Received: by 10.68.32.133 with SMTP id j5mr1367018pbi.68.1317651073991; Mon,
	03 Oct 2011 07:11:13 -0700 (PDT)
Received: by 10.142.177.7 with HTTP; Mon, 3 Oct 2011 07:11:13 -0700 (PDT)
In-Reply-To: <1317650995.67125.YahooMailNeo@web94712.mail.in2.yahoo.com>
References: <1317650263.70639.YahooMailNeo@web94705.mail.in2.yahoo.com>
	<1317650995.67125.YahooMailNeo@web94712.mail.in2.yahoo.com>
Date: Mon, 3 Oct 2011 19:41:13 +0530
Message-ID: <CAFt-cowut0x80hGjRK3tRxzRygsurb0pHmNR=WHARoLvv16P7w@mail.gmail.com>
From: v sailaja <vsailub4u@gmail.com>
To: poky@yoctoproject.org
Subject: : XBMC error (libsdl-mixer_1.2.11.bb & libsdl-image_1.2.10.bb failed)
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
X-List-Received-Date: Mon, 03 Oct 2011 14:11:15 -0000
Content-Type: multipart/alternative; boundary=bcaec51dd7d934035404ae658cdd

--bcaec51dd7d934035404ae658cdd
Content-Type: text/plain; charset=ISO-8859-1

Hi,
I'm trying to pull the package XBMC 10.05 which depends on libsdl-mixer and
libsdl-image and these are there in the

meta/recipe as libsdl. While building for libsdl-mixer with the recipe
libsdl-mixer_1.2.11.bb and libsdl-image with the

recipe libsdl-image_1.2.10.bb i'm getting the error as below:



| i586-poky-linux-libtool: link: warning:
`/home/sct/logi/gigabyte/poky_gigabyte_16Sep2011/build/tmp/sysroots/fishriver/usr/lib/
libz.la'
seems to be moved

| i586-poky-linux-libtool: link: warning: library
`/home/sct/logi/gigabyte/poky_gigabyte_16Sep2011/build/tmp/sysroots/fishriver/usr/lib/
libjpeg.la'
was moved.

| /bin/grep:
/home/sct/logi/gigabyte/poky_gigabyte_16Sep2011/build/tmp/sysroots/fishriver/home/sct/logi/gigabyte/poky_gigabyte_16Sep2011/build/tmp/work/atom-poky-linux/jpeg-6b-r0/image/usr/lib/
libjpeg.la:
No such file or directory

| /bin/sed: can't read
/home/sct/logi/gigabyte/poky_gigabyte_16Sep2011/build/tmp/sysroots/fishriver/home/sct/logi/gigabyte/poky_gigabyte_16Sep2011/build/tmp/work/atom-poky-linux/jpeg-6b-r0/image/usr/lib/
libjpeg.la:
No such file or directory

| i586-poky-linux-libtool: link:
`/home/sct/logi/gigabyte/poky_gigabyte_16Sep2011/build/tmp/sysroots/fishriver/home/sct/logi/gigabyte/poky_gigabyte_16Sep2011/build/tmp/work/atom-poky-linux/jpeg-6b-r0/image/usr/lib/
libjpeg.la'
is not a valid libtool archive

| make: *** [libSDL_image.la] Error 1

| FATAL: oe_runmake failed

| ERROR: Function 'do_compile' failed (see
/home/sct/logi/gigabyte/poky_gigabyte_16Sep2011/build/tmp/work/atom-poky-linux/libsdl-image-1.2.10-r5.2/temp/log.do_compile.10878
for further information)

NOTE: package libsdl-image-1.2.10-r5.2: task do_compile: Failed

ERROR: Task 3048
(/home/sct/logi/gigabyte/poky_gigabyte_16Sep2011/meta-sct/recipes-sct/libsdl/
libsdl-image_1.2.10.bb,
do_compile) failed with exit code '1'



I'm pulling for the Fishriver machine . My host machine is Ubuntu 10.10 ,64
bit .
Can someone help me out of this problem ?




-- 
Thanks & Regards,
SAI

--bcaec51dd7d934035404ae658cdd
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote"><br><div><div style=3D"color: rgb(0, 0, =
0); background-color: rgb(255, 255, 255); "><div><div><div><div style=3D"co=
lor: rgb(0, 0, 0); background-color: rgb(255, 255, 255); "><div><span style=
=3D"color: rgb(0, 0, 0); font-family: arial, sans-serif; font-size: 13px; f=
ont-style: normal; font-variant: normal; letter-spacing: normal; line-heigh=
t: normal; text-indent: 0px; text-transform: none; white-space: normal; wor=
d-spacing: 0px; background-color: rgb(255, 255, 255); "><font size=3D"3">Hi=
,<br>
</font><span style=3D"font-family:&#39;Times New Roman&#39;;white-space:pre=
-wrap;background-color:rgb(255, 255, 255);font-size:16px">I&#39;m trying to=
 pull the package XBMC 10.05 which depends on libsdl-mixer  and libsdl-imag=
e and these are there in the<br>
<br>meta/recipe as libsdl. </span></span><span style=3D"color: rgb(0, 0, 0)=
; font-family: arial, sans-serif; font-size: 13px; font-style: normal; font=
-variant: normal; letter-spacing: normal; line-height: normal; text-indent:=
 0px; text-transform: none; white-space: normal; word-spacing: 0px; backgro=
und-color: rgb(255, 255, 255); "><span style=3D"font-family:&#39;Times New =
Roman&#39;;white-space:pre-wrap;background-color:rgb(255, 255, 255);font-si=
ze:16px">While building for libsdl-mixer with the recipe <a rel=3D"nofollow=
" href=3D"http://libsdl-mixer_1.2.11.bb/" style=3D"color:rgb(0, 0, 204);out=
line-style:none" target=3D"_blank">libsdl-mixer_1.2.11.bb</a> and libsdl-im=
age with the <br>
<br>recipe <a href=3D"http://libsdl-image_1.2.10.bb" target=3D"_blank">libs=
dl-image_1.2.10.bb</a> i&#39;m getting the </span></span><span style=3D"col=
or: rgb(0, 0, 0); font-family: arial, sans-serif; font-size: 13px; font-sty=
le: normal; font-variant: normal; letter-spacing: normal; line-height: norm=
al; text-indent: 0px; text-transform: none; white-space: normal; word-spaci=
ng: 0px; background-color: rgb(255, 255, 255); "><span style=3D"font-family=
:&#39;Times New Roman&#39;;white-space:pre-wrap;background-color:rgb(255, 2=
55, 255);font-size:16px">error as below:<br>
<br>  <br><br>| i586-poky-linux-libtool: link: warning: <br>`/home/sct/logi=
/gigabyte/poky_gigabyte_16Sep2011/build/tmp/sysroots/fishriver/usr/lib/<a h=
ref=3D"http://libz.la" target=3D"_blank">libz.la</a>&#39;<br> seems to be m=
oved<br>
<br>| i586-poky-linux-libtool: link: warning: library <br>`/home/sct/logi/g=
igabyte/poky_gigabyte_16Sep2011/build/tmp/sysroots/fishriver/usr/lib/<a hre=
f=3D"http://libjpeg.la" target=3D"_blank">libjpeg.la</a>&#39;<br> was moved=
.<br>
<br>| /bin/grep: <br>/home/sct/logi/gigabyte/poky_gigabyte_16Sep2011/build/=
tmp/sysroots/fishriver/home/sct/logi/gigabyte/poky_gigabyte_16Sep2011/build=
/tmp/work/atom-poky-linux/jpeg-6b-r0/image/usr/lib/<a href=3D"http://libjpe=
g.la" target=3D"_blank">libjpeg.la</a>:<br>
 No such file or directory<br><br>| /bin/sed: can&#39;t read <br>/home/sct/=
logi/gigabyte/poky_gigabyte_16Sep2011/build/tmp/sysroots/fishriver/home/sct=
/logi/gigabyte/poky_gigabyte_16Sep2011/build/tmp/work/atom-poky-linux/jpeg-=
6b-r0/image/usr/lib/<a href=3D"http://libjpeg.la" target=3D"_blank">libjpeg=
.la</a>:<br>
 No
 such file or directory<br><br>| i586-poky-linux-libtool: link: <br>`/home/=
sct/logi/gigabyte/poky_gigabyte_16Sep2011/build/tmp/sysroots/fishriver/home=
/sct/logi/gigabyte/poky_gigabyte_16Sep2011/build/tmp/work/atom-poky-linux/j=
peg-6b-r0/image/usr/lib/<a href=3D"http://libjpeg.la" target=3D"_blank">lib=
jpeg.la</a>&#39;<br>
 is not a valid libtool archive<br><br>| make: *** [libSDL_image.la] Error =
1<br><br>| FATAL: oe_runmake failed<br><br>| ERROR: Function &#39;do_compil=
e&#39; failed (see <br>/home/sct/logi/gigabyte/poky_gigabyte_16Sep2011/buil=
d/tmp/work/atom-poky-linux/libsdl-image-1.2.10-r5.2/temp/log.do_compile.108=
78<br>
 for further information)<br><br>NOTE: package libsdl-image-1.2.10-r5.2: ta=
sk do_compile: Failed<br><br>ERROR: Task 3048 <br>(/home/sct/logi/gigabyte/=
poky_gigabyte_16Sep2011/meta-sct/recipes-sct/libsdl/<a href=3D"http://libsd=
l-image_1.2.10.bb" target=3D"_blank">libsdl-image_1.2.10.bb</a>,<br>
 do_compile) failed with exit code &#39;1&#39;<br><br>  <br><br></span></sp=
an><span style=3D"color: rgb(69, 69, 69); "><span style=3D"color: rgb(0, 0,=
 0); font-style: normal; font-variant: normal; letter-spacing: normal; line=
-height: normal; text-indent: 0px; text-transform: none; word-spacing: 0px;=
 background-color: rgb(255, 255, 255); "><span style=3D"font-family: &#39;T=
imes New Roman&#39;; white-space: pre-wrap; background-color: rgb(255, 255,=
 255); font-size: 16px; ">I&#39;m pulling for the Fishriver machine . My ho=
st machine is Ubuntu 10.10 ,64 bit . </span><div style=3D"font-family: aria=
l, sans-serif; white-space: normal; font-size: 13px; ">
<font face=3D"&#39;Times New Roman&#39;" size=3D"3"><span style=3D"white-sp=
ace:pre-wrap">Can someone help me out of this problem ? </span></font></div=
><div style=3D"font-family: arial, sans-serif; white-space: normal; font-si=
ze: 13px; ">
<font face=3D"&#39;Times New Roman&#39;" size=3D"3"><span style=3D"white-sp=
ace:pre-wrap"><br></span></font></div></span></span><span class=3D"Apple-st=
yle-span" style=3D"font-family: &#39;Times New Roman&#39;; font-size: 16px;=
 white-space: pre-wrap; ">  </span><span style=3D"color: rgb(0, 0, 0); font=
-family: arial, sans-serif; font-size: 13px; font-style: normal; font-varia=
nt: normal; letter-spacing: normal; line-height: normal; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; background-co=
lor: rgb(255, 255, 255); "><span style=3D"font-family:&#39;Times New Roman&=
#39;;white-space:pre-wrap;background-color:rgb(255, 255, 255);font-size:16p=
x"><br>
</span></span></div></div></div></div></div></div></div></div><br clear=3D"=
all"><div><br></div>-- <br>Thanks &amp; Regards,<br>SAI<br><br>

--bcaec51dd7d934035404ae658cdd--

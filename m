Return-Path: <vishwasonu2000@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E73BE00303
	for <poky@yoctoproject.org>; Mon, 28 Nov 2011 23:24:53 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by eeav2 with SMTP id v2so1275168eea.35
	for <poky@yoctoproject.org>; Mon, 28 Nov 2011 23:24:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=tjk7sKZt2DeFTstz2pgDR5JvC4szZdedHUS5P2uoNmY=;
	b=GUBU88a/MaUTs/ad+Z7AzZJGaPQT5McutRKbd1AltpJ6dlYN28E5o+390T50LapO3u
	uoD06cilQjAuYuUSuNlApj7Mq2xnVIoc0XG+R/y7IHlu2SRlNjJE2N0bpiLMqP92kw0Q
	GSHoWgWF7IWHMDzMzlrhjBAOlqufa4zXUYGKo=
MIME-Version: 1.0
Received: by 10.180.19.42 with SMTP id b10mr58124902wie.39.1322551491906; Mon,
	28 Nov 2011 23:24:51 -0800 (PST)
Received: by 10.180.85.100 with HTTP; Mon, 28 Nov 2011 23:24:51 -0800 (PST)
Date: Tue, 29 Nov 2011 12:54:51 +0530
Message-ID: <CABRtByMv9xpdK6Wy7d1hJ8Kbvhjj8Dk=n9YLijdbT+QfiZZGcA@mail.gmail.com>
From: sonu vishwakarma <vishwasonu2000@gmail.com>
To: poky@yoctoproject.org
Subject: package libsexy-0.1.11-r1: task do_compile: Failed
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
X-List-Received-Date: Tue, 29 Nov 2011 07:24:54 -0000
Content-Type: multipart/alternative; boundary=bcaec53d5ec9df4cee04b2da83c7

--bcaec53d5ec9df4cee04b2da83c7
Content-Type: text/plain; charset=ISO-8859-1

Hi,
I'm trying the build for XBMC , which depends on libsexy , i'm getting the
compilation error as follows:

|
/home/sct/poky_gigabyte_09Nov_xbmc/build/tmp/sysroots/fishriver/usr/lib/libcairo.so:
undefined reference to `__longjmp_chk@GLIBC_2.11'
| collect2: ld returned 1 exit status
| make[2]: *** [test-spell-entry] Error 1
| make[2]: *** Waiting for unfinished jobs....
|
/home/sct/poky_gigabyte_09Nov_xbmc/build/tmp/sysroots/fishriver/usr/lib/libcairo.so:
undefined reference to `__longjmp_chk@GLIBC_2.11'
| collect2: ld returned 1 exit status
| make[2]: *** [test-tree-view] Error 1
|
/home/sct/poky_gigabyte_09Nov_xbmc/build/tmp/sysroots/fishriver/usr/lib/libcairo.so:
undefined reference to `__longjmp_chk@GLIBC_2.11'
| collect2: ld returned 1 exit status
| make[2]: *** [test-tooltip] Error 1
|
/home/sct/poky_gigabyte_09Nov_xbmc/build/tmp/sysroots/fishriver/usr/lib/libcairo.so:
undefined reference to `__longjmp_chk@GLIBC_2.11'
| collect2: ld returned 1 exit status
| make[2]: *** [test-icon-entry] Error 1
| make[2]: Leaving directory
`/home/sct/poky_gigabyte_09Nov_xbmc/build/tmp/work/atom-poky-linux/libsexy-0.1.11-r1/libsexy-0.1.11/tests'
| make[1]: *** [all-recursive] Error 1
| make[1]: Leaving directory
`/home/sct/poky_gigabyte_09Nov_xbmc/build/tmp/work/atom-poky-linux/libsexy-0.1.11-r1/libsexy-0.1.11'
| ERROR: Function 'do_compile' failed (see
/home/sct/poky_gigabyte_09Nov_xbmc/build/tmp/work/atom-poky-linux/libsexy-0.1.11-r1/temp/log.do_compile.9443
for further information)
| make: *** [all] Error
NOTE: package libsexy-0.1.11-r1: task do_compile: Failed


I'm pulling for the Fishriver machine . My host machine is Ubuntu 10.10 ,64
bit .
Can someone help me out of this problem ?
Thanks & Regards,
Sonu.

--bcaec53d5ec9df4cee04b2da83c7
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,<div>I&#39;m trying the build for XBMC , which depends on libsexy , i&#3=
9;m getting the compilation error as follows:</div><div><br></div><div><div=
>| /home/sct/poky_gigabyte_09Nov_xbmc/build/tmp/sysroots/fishriver/usr/lib/=
libcairo.so: undefined reference to `__longjmp_chk@GLIBC_2.11&#39;</div>
<div>| collect2: ld returned 1 exit status</div><div>| make[2]: *** [test-s=
pell-entry] Error 1</div><div>| make[2]: *** Waiting for unfinished jobs...=
.</div><div>| /home/sct/poky_gigabyte_09Nov_xbmc/build/tmp/sysroots/fishriv=
er/usr/lib/libcairo.so: undefined reference to `__longjmp_chk@GLIBC_2.11&#3=
9;</div>
<div>| collect2: ld returned 1 exit status</div><div>| make[2]: *** [test-t=
ree-view] Error 1</div><div>| /home/sct/poky_gigabyte_09Nov_xbmc/build/tmp/=
sysroots/fishriver/usr/lib/libcairo.so: undefined reference to `__longjmp_c=
hk@GLIBC_2.11&#39;</div>
<div>| collect2: ld returned 1 exit status</div><div>| make[2]: *** [test-t=
ooltip] Error 1</div><div>| /home/sct/poky_gigabyte_09Nov_xbmc/build/tmp/sy=
sroots/fishriver/usr/lib/libcairo.so: undefined reference to `__longjmp_chk=
@GLIBC_2.11&#39;</div>
<div>| collect2: ld returned 1 exit status</div><div>| make[2]: *** [test-i=
con-entry] Error 1</div><div>| make[2]: Leaving directory `/home/sct/poky_g=
igabyte_09Nov_xbmc/build/tmp/work/atom-poky-linux/libsexy-0.1.11-r1/libsexy=
-0.1.11/tests&#39;</div>
<div>| make[1]: *** [all-recursive] Error 1</div><div>| make[1]: Leaving di=
rectory `/home/sct/poky_gigabyte_09Nov_xbmc/build/tmp/work/atom-poky-linux/=
libsexy-0.1.11-r1/libsexy-0.1.11&#39;</div><div>| ERROR: Function &#39;do_c=
ompile&#39; failed (see /home/sct/poky_gigabyte_09Nov_xbmc/build/tmp/work/a=
tom-poky-linux/libsexy-0.1.11-r1/temp/log.do_compile.9443 for further infor=
mation)</div>
<div>| make: *** [all] Error</div><div>NOTE: package libsexy-0.1.11-r1: tas=
k do_compile: Failed</div></div><div><br></div><div><br></div><div><span cl=
ass=3D"Apple-style-span" style=3D"font-family: arial, sans-serif; font-size=
: 13px; background-color: rgb(255, 255, 255); "><div>
<span style=3D"white-space: pre-wrap; background-color: rgb(255, 255, 255);=
 "><font face=3D"arial, helvetica, sans-serif">I&#39;m pulling for the Fish=
river machine . My host machine is Ubuntu 10.10 ,64 bit . </font></span></d=
iv>
<div><span style=3D"background-color: rgb(255, 255, 255); "><font face=3D"a=
rial, helvetica, sans-serif"><div><span style=3D"white-space: pre-wrap; ">C=
an someone help me out of this problem ? </span></div><div><span style=3D"w=
hite-space: pre-wrap; ">
</span></div><div><span style=3D"white-space: pre-wrap; ">Thanks &amp; Rega=
rds,</span></div><div><font><span style=3D"white-space: pre-wrap; ">Sonu.</=
span></font></div></font></span></div></span></div>

--bcaec53d5ec9df4cee04b2da83c7--

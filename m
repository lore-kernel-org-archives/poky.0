Return-Path: <ashish.emailaddress@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E3FAE00DEE; Sat,  9 Nov 2019 09:16:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ashish.emailaddress[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.44 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com
	[209.85.166.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 682F9E0085D
	for <poky@yoctoproject.org>; Sat,  9 Nov 2019 09:16:46 -0800 (PST)
Received: by mail-io1-f44.google.com with SMTP id k1so9770413ioj.6
	for <poky@yoctoproject.org>; Sat, 09 Nov 2019 09:16:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=nc2XPBt14AVYIUa9a3JINKxN/+ldedfci4T+GGOxqfg=;
	b=JXlObXkArXzd+Cyl3eL688U8iMNts3S66Ge28Htc63B9TgDTod9IKwZFQlDYZzBS9Z
	4jDTGk5pvwiGXIKTU37u6zjN+iCMuxm4LTR0RQ+Dx0xycphM3PSm9uu94Qae/2yy34o7
	05cQzBvlPRzQ9lb0/cMNkGFX+0XpHjk+OxwytQq2QVrhpkqEfr3faF4HrX+JsSy2G09W
	62r0fJY2ePH0//EwBwinC4LsqkvOB48Yd/Y3iUHHCRHRfSxqLhOb6pxGAs5yroSTfmQ+
	D0WnFx9RaGDzvPtc+9yvmepO84aKBHXbjmYwMvVUSuljuSFQ5lTfapDYSWgq1WX+pHhd
	WqPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=nc2XPBt14AVYIUa9a3JINKxN/+ldedfci4T+GGOxqfg=;
	b=Og/hGxP8JwQuAPgAr2pXUioJyPSlmORFYbQS/D5Bz+GFx64myRuYDj/CRutcEem3Oc
	GR8c2XGZdoZmxiimdNmj24AB6KGb6Lc3ydKp/hEziHqWiViG30eUqZXJxXn5C8+v+wdQ
	EF9v3DlJxGznjb6V3n1kQx2NsuEU6fHyqC0mJirhfiU1B9bVH1lxGXqAOS1rdOfg835J
	74lUK+XVdevdZYpY+bdUDZfJstYJ+sHUFW7Em1wl6E91Q46DtnRq1PyPRK+yCGLod0WC
	I9aTTlXDm1xXVQxlh+He0VTgoiRbZzZ/DVbhWxQw/rL+/TSORtWzQe/bkUY1hAPteUnF
	0WsA==
X-Gm-Message-State: APjAAAVb9j/mpkHECuknX75roLpKgYmn3lEA1UMx0FMYW59d7WTrgum7
	So150L6b6/i10QuLL/OP9VBZI/nnbD4XkOOy1D/FKxMffB8=
X-Google-Smtp-Source: APXvYqyj2FT58TDwrxE3lR2uWP+sPv8RKKtFeVMGzm0azmEnQF7qHnim4Egx/AvE8JvI2I7UIcwx2+5pIMBhdEX1ego=
X-Received: by 2002:a6b:9343:: with SMTP id v64mr15545951iod.247.1573319805523;
	Sat, 09 Nov 2019 09:16:45 -0800 (PST)
MIME-Version: 1.0
From: AshishKumar Mishra <ashish.emailaddress@gmail.com>
Date: Sat, 9 Nov 2019 22:46:34 +0530
Message-ID: <CAOe0dAXWDdPBkyDRje3tyfj2kr+2bhJjW+qYY8SE+FzbSoYJcg@mail.gmail.com>
To: Poky Project <poky@yoctoproject.org>
Subject: Poky compilation error due to fontconfig package
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 09 Nov 2019 17:16:47 -0000
Content-Type: multipart/alternative; boundary="000000000000205d340596ed1036"

--000000000000205d340596ed1036
Content-Type: text/plain; charset="UTF-8"

 Hi All ,

Can team please provide any pointer to address compilation error of
*fontconfig package *
Part of error is copied below if require i can share the complete log as
attachment.

I am not sure as to how do i approach such error when the default package
like "fontconfig"
Also i checked the IMAGE_INSTALL , i haven't added directly so some other
package seems to have it as dependent package.


^
| Makefile:679: recipe for target 'fcinit.lo' failed
| make[3]: *** [fcinit.lo] Error 1
| Makefile:679: recipe for target 'fccache.lo' failed
| make[3]: *** [fccache.lo] Error 1
| Makefile:679: recipe for target 'fcfreetype.lo' failed
| make[3]: *** [fcfreetype.lo] Error 1
| In file included from ../../fontconfig-2.13.1/src/fclang.c:1108:0:
| ./fcaliastail.h:436:0: error: unterminated #ifdef
|  #ifdef __fcstr__
|  ^
| In file included from ../../fontconfig-2.13.1/src/fclang.c:1108:0:
| ./fcaliastail.h:1:0: error: unterminated #if
|  #if HAVE_GNUC_ATTRIBUTE
|  ^
| Makefile:679: recipe for target 'fclang.lo' failed
| make[3]: *** [fclang.lo] Error 1
| In file included from ../../fontconfig-2.13.1/src/fcmatch.c:1207:0:
| ./fcaliastail.h:436:0: error: unterminated #ifdef
|  #ifdef __fcstr__
|  ^
| In file included from ../../fontconfig-2.13.1/src/fcmatch.c:1207:0:
| ./fcaliastail.h:1:0: error: unterminated #if
|  #if HAVE_GNUC_ATTRIBUTE
|  ^
| Makefile:679: recipe for target 'fcmatch.lo' failed
| make[3]: *** [fcmatch.lo] Error 1
| make[3]: Leaving directory
'/home/ashish/Documents/linux-foundation-projects/yocto/build-armour/tmp/work/x86_64-linux/fontconfig-native/2.13.1-r0/build/src'
| Makefile:533: recipe for target 'all' failed
| make[2]: *** [all] Error 2
| make[2]: Leaving directory
'/home/ashish/Documents/linux-foundation-projects/yocto/build-armour/tmp/work/x86_64-linux/fontconfig-native/2.13.1-r0/build/src'
| Makefile:590: recipe for target 'all-recursive' failed
| make[1]: *** [all-recursive] Error 1
| make[1]: Leaving directory
'/home/ashish/Documents/linux-foundation-projects/yocto/build-armour/tmp/work/x86_64-linux/fontconfig-native/2.13.1-r0/build'
| Makefile:474: recipe for target 'all' failed
| make: *** [all] Error 2
| ERROR: oe_runmake failed
| WARNING:
/home/ashish/Documents/linux-foundation-projects/yocto/build-armour/tmp/work/x86_64-linux/fontconfig-native/2.13.1-r0/temp/run.do_compile.27560:1
exit 1 from 'exit 1'
| ERROR: Function failed: do_compile (log file is located at
/home/ashish/Documents/linux-foundation-projects/yocto/build-armour/tmp/work/x86_64-linux/fontconfig-native/2.13.1-r0/temp/log.do_compile.27560)
ERROR: Task
(virtual:native:/home/ashish/Documents/linux-foundation-projects/yocto/poky/meta/recipes-graphics/fontconfig/fontconfig_2.13.1.bb:do_compile)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 2408 tasks of which 2407 didn't need to be
rerun and 1 failed.

Summary: 1 task failed:

virtual:native:/home/ashish/Documents/linux-foundation-projects/yocto/poky/meta/recipes-graphics/fontconfig/fontconfig_2.13.1.bb:
do_compile
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
[22:36:42]:~/Documents/linux-foundation-projects/yocto/build-armour :


Thanks

--000000000000205d340596ed1036
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>=C2=A0Hi All , <br></div><div><br></div><div>Can team=
 please provide any pointer to address compilation error of <u><b>fontconfi=
g package <br></b></u></div><div>Part of error is copied below if require i=
 can share the complete log as attachment. <br></div><div><br></div><div>I =
am not sure as to how do i approach such error when the default package lik=
e &quot;fontconfig&quot; <br></div><div>Also i checked the IMAGE_INSTALL , =
i haven&#39;t added directly so some other package seems to have it as depe=
ndent package. <br></div><div><br></div><div>=C2=A0</div><div></div><div><b=
></b><u><b></b></u></div><div>^<br>| Makefile:679: recipe for target &#39;f=
cinit.lo&#39; failed<br>| make[3]: *** [fcinit.lo] Error 1<br>| Makefile:67=
9: recipe for target &#39;fccache.lo&#39; failed<br>| make[3]: *** [fccache=
.lo] Error 1<br>| Makefile:679: recipe for target &#39;fcfreetype.lo&#39; f=
ailed<br>| make[3]: *** [fcfreetype.lo] Error 1<br>| In file included from =
../../fontconfig-2.13.1/src/fclang.c:1108:0:<br>| ./fcaliastail.h:436:0: er=
ror: unterminated #ifdef<br>| =C2=A0#ifdef __fcstr__<br>| =C2=A0^<br>| In f=
ile included from ../../fontconfig-2.13.1/src/fclang.c:1108:0:<br>| ./fcali=
astail.h:1:0: error: unterminated #if<br>| =C2=A0#if HAVE_GNUC_ATTRIBUTE<br=
>| =C2=A0^<br>| Makefile:679: recipe for target &#39;fclang.lo&#39; failed<=
br>| make[3]: *** [fclang.lo] Error 1<br>| In file included from ../../font=
config-2.13.1/src/fcmatch.c:1207:0:<br>| ./fcaliastail.h:436:0: error: unte=
rminated #ifdef<br>| =C2=A0#ifdef __fcstr__<br>| =C2=A0^<br>| In file inclu=
ded from ../../fontconfig-2.13.1/src/fcmatch.c:1207:0:<br>| ./fcaliastail.h=
:1:0: error: unterminated #if<br>| =C2=A0#if HAVE_GNUC_ATTRIBUTE<br>| =C2=
=A0^<br>| Makefile:679: recipe for target &#39;fcmatch.lo&#39; failed<br>| =
make[3]: *** [fcmatch.lo] Error 1<br>| make[3]: Leaving directory &#39;/hom=
e/ashish/Documents/linux-foundation-projects/yocto/build-armour/tmp/work/x8=
6_64-linux/fontconfig-native/2.13.1-r0/build/src&#39;<br>| Makefile:533: re=
cipe for target &#39;all&#39; failed<br>| make[2]: *** [all] Error 2<br>| m=
ake[2]: Leaving directory &#39;/home/ashish/Documents/linux-foundation-proj=
ects/yocto/build-armour/tmp/work/x86_64-linux/fontconfig-native/2.13.1-r0/b=
uild/src&#39;<br>| Makefile:590: recipe for target &#39;all-recursive&#39; =
failed<br>| make[1]: *** [all-recursive] Error 1<br>| make[1]: Leaving dire=
ctory &#39;/home/ashish/Documents/linux-foundation-projects/yocto/build-arm=
our/tmp/work/x86_64-linux/fontconfig-native/2.13.1-r0/build&#39;<br>| Makef=
ile:474: recipe for target &#39;all&#39; failed<br>| make: *** [all] Error =
2<br>| ERROR: oe_runmake failed<br>| WARNING: /home/ashish/Documents/linux-=
foundation-projects/yocto/build-armour/tmp/work/x86_64-linux/fontconfig-nat=
ive/2.13.1-r0/temp/run.do_compile.27560:1 exit 1 from &#39;exit 1&#39;<br>|=
 ERROR: Function failed: do_compile (log file is located at /home/ashish/Do=
cuments/linux-foundation-projects/yocto/build-armour/tmp/work/x86_64-linux/=
fontconfig-native/2.13.1-r0/temp/log.do_compile.27560)<br>ERROR: Task (virt=
ual:native:/home/ashish/Documents/linux-foundation-projects/yocto/poky/meta=
/recipes-graphics/fontconfig/fontconfig_2.13.1.bb:do_compile) failed with e=
xit code &#39;1&#39;<br>NOTE: Tasks Summary: Attempted 2408 tasks of which =
2407 didn&#39;t need to be rerun and 1 failed.<br><br>Summary: 1 task faile=
d:<br>=C2=A0 virtual:native:/home/ashish/Documents/linux-foundation-project=
s/yocto/poky/meta/recipes-graphics/fontconfig/fontconfig_2.13.1.bb:do_compi=
le<br>Summary: There were 2 ERROR messages shown, returning a non-zero exit=
 code.<br>[22:36:42]:~/Documents/linux-foundation-projects/yocto/build-armo=
ur :=C2=A0</div><div><br></div><div><br></div><div>Thanks <br></div></div>

--000000000000205d340596ed1036--

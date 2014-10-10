Return-Path: <galbicka.tomas@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65995E0077F; Fri, 10 Oct 2014 06:22:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (galbicka.tomas[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f169.google.com (mail-wi0-f169.google.com
	[209.85.212.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8D70E00744
	for <poky@yoctoproject.org>; Fri, 10 Oct 2014 06:22:43 -0700 (PDT)
Received: by mail-wi0-f169.google.com with SMTP id cc10so4295088wib.2
	for <poky@yoctoproject.org>; Fri, 10 Oct 2014 06:22:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=OCrkFlPYuSdrXSntyIFFckJ45Y2VB1N8HE9Esln4PF4=;
	b=0K7e0ku2cT+TA0jy7NyR1yHtsndQLxJ9cVvIOrrNKIVytyLsNi/6nTihvFNZfRlYl3
	SL17ZvehQcq9PZHwNYs6S1gREqDjx+yK0ZNLli5nWKK9eJG7lUZeQO5Db6L9MWLYXrVl
	xTiIytSkbswdacCY1fmATNZQgT5VKpx/dRsV5vVS24ZUD65BO4cbkq1AUXP+kUGNmLX7
	aS229khD7TEzRz6QH3g7d2p99Ucg9hOvrv3jyaA5ypf3MUAZtqKUjxvifSlyl7wk2VMG
	qX1cvMcawrj84cHSoYtOl/D+Q/2ajUuACV3AnnlcOaxJDKQwIozObjur7Wc1SjcE8BbY
	9Vmw==
MIME-Version: 1.0
X-Received: by 10.180.87.161 with SMTP id az1mr4800248wib.13.1412947362165;
	Fri, 10 Oct 2014 06:22:42 -0700 (PDT)
Received: by 10.217.49.70 with HTTP; Fri, 10 Oct 2014 06:22:42 -0700 (PDT)
Date: Fri, 10 Oct 2014 15:22:42 +0200
Message-ID: <CADWA4U-Syayu9DAm1EqcSEhRTHsbcC0M4aWyQM90iOA-hJpLxA@mail.gmail.com>
From: =?UTF-8?B?VG9tw6HFoSBHYWxiacSNa2E=?= <galbicka.tomas@gmail.com>
To: poky@yoctoproject.org
Subject: Own .bb recipe with Makefile help
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
X-List-Received-Date: Fri, 10 Oct 2014 13:22:50 -0000
Content-Type: multipart/alternative; boundary=14dae9cc9c689bb8fb0505117186

--14dae9cc9c689bb8fb0505117186
Content-Type: text/plain; charset=UTF-8

Hello,

I got a problem with creating my own custom recipe for bitbake.

I've got a folder where I store bb file lets call it tests_2.3.bb.
In this folder I have few bash scripts.sh and C sources and their
executable.
and I need this files Just executable, to get to my embedded linux file
system.

Below Are example bb file which I use.
The first wont work. But the second is working fine( I get all files.sh to
my linux file system.)


So what I need, is to write this bb file to copy even these C code
executable to my embedded linux file system. Any help please?

One Makefile is compiling all C sources. And for every source is creating
its executable.




First code below is printing this Error:  Second code works ok.
Unable to resolve package 'tests'
| ERROR: some packages were missing.

My example:

DESCRIPTION = "Description"
>
> SECTION = "section"
>
> LICENSE = "BSD"
>
> LIC_FILES_CHKSUM =
>> "file://${COMMON_LICENSE_DIR}/BSD;md5=3775480a712fc46a69647678acb234cb"
>
>
>> PV = "1.0"
>
> PR = "r0"
>
>
>> SRC_URI =  "file://file1.sh \
>
>             file://file2.sh \
>
>             file://file3.sh \
>
>             file://testFile1.c \
>
>             file://testfile2.c \
>
>             file://testFile3.c \
>
>             file://includes/include1.c \
>
>             file://includes/include1.h \
>
>             file://includes/include2.c \
>
>             file://includes/include2.h \
>
>             file://includes/include3.h \
>
>             file://Makefile \
>
>             "
>
>
>> S = "${WORKDIR}"
>
>
>> FILES_${PN} += "/home/root/tests/testFile1 \
>
>                 /home/root/tests/testFile2 \
>
>                 /home/root/tests/testFile3 \
>
>                 "
>
>
>> do_install () {
>
>      oe_runmake
>
>
>
>     install -d ${D}/home/root/tests
>
>     install -m 0777 ${S}/file1.sh      ${D}/home/root/tests
>
>     install -m 0777 ${S}/file2.sh      ${D}/home/root/tests
>
>     install -m 0777 ${S}/file3.sh      ${D}/home/root/tests
>
>     install -m 0755 testFile1          ${D}/home/root/tests
>
>     install -m 0755 testFile2          ${D}/home/root/tests
>
>     install -m 0755 testFile3          ${D}/home/root/tests
>
>      }
>
>
>>      PARALLEL_MAKE = ""
>
>
>>      BBCLASSEXTEND = "native"
>
>
>>
And this bb file does not Work.

AND THIS WORKS FINE:

> DESCRIPTION = "description"
>
> SECTION = "section"
>
> LICENSE = "BSD"
>
> LIC_FILES_CHKSUM =
>> "file://${COMMON_LICENSE_DIR}/BSD;md5=3775480a712fc46a69647678acb234cb"
>
>
>> PV = "1.0"
>
> PR = "r0"
>
> SRC_URI =  "file://file1.sh \
>
>             file://file2.sh \
>
>             file://file3.sh"
>
>
>>
>> S = "${WORKDIR}"
>
>
>> FILES_${PN} += "/home/root/tests"
>
>
>>
>> do_configure() {
>
> }
>
>
>> do_install() {
>
> install -d ${D}/home/root/tests
>
> install -m 0777 ${S}/file1.sh    ${D}/home/root/tests
>
> install -m 0777 ${S}/file2.sh    ${D}/home/root/tests
>
> install -m 0777 ${S}/file3.sh    ${D}/home/root/tests
>
> }
>
>
>

Do you have any idea How could be writen this bb file.

Thanks.

--14dae9cc9c689bb8fb0505117186
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,=C2=A0<div><br></div><div>I got a problem with creat=
ing my own custom recipe for bitbake.</div><div><br></div><div>I&#39;ve got=
 a folder where I store bb file lets call it <a href=3D"http://tests_2.3.bb=
">tests_2.3.bb</a>.</div><div>In this folder I have few bash scripts.sh and=
 C sources and their executable.=C2=A0</div><div>and I need this files Just=
 executable, to get to my embedded linux file system.</div><div><br></div><=
div>Below Are example bb file which I use.</div><div>The first wont work. B=
ut the second is working fine( I get all files.sh to my linux file system.)=
</div><div><br></div><div><br></div><div>So what I need, is to write this b=
b file to copy even these C code executable to my embedded linux file syste=
m. Any help please?</div><div><br></div><div>One Makefile is compiling all =
C sources. And for every source is creating its executable.</div><div><br><=
/div><div><br></div><div><br></div><div><br></div><div>First code below is =
printing this Error: =C2=A0Second code works ok.</div><div><div>Unable to r=
esolve package &#39;tests&#39;</div><div>| ERROR: some packages were missin=
g.</div></div><div><br></div><div>My example:</div><div><br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-widt=
h:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-le=
ft:1ex"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-style=
:solid;padding-left:1ex">DESCRIPTION =3D &quot;Description&quot;</blockquot=
e><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid=
;padding-left:1ex">SECTION =3D &quot;section&quot;</blockquote><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1=
px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-left:=
1ex">LICENSE =3D &quot;BSD&quot;</blockquote><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-col=
or:rgb(204,204,204);border-left-style:solid;padding-left:1ex">LIC_FILES_CHK=
SUM =3D &quot;file://${COMMON_LICENSE_DIR}/BSD;md5=3D3775480a712fc46a696476=
78acb234cb&quot;</blockquote><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,2=
04);border-left-style:solid;padding-left:1ex"><br></blockquote><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1=
px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-left:=
1ex">PV =3D &quot;1.0&quot;</blockquote><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rg=
b(204,204,204);border-left-style:solid;padding-left:1ex">PR =3D &quot;r0&qu=
ot;</blockquote><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-le=
ft-style:solid;padding-left:1ex"><br></blockquote><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-lef=
t-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex">SRC_URI =
=3D =C2=A0&quot;file://file1.sh \</blockquote><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-co=
lor:rgb(204,204,204);border-left-style:solid;padding-left:1ex">=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://file2.sh \</blockquote><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1p=
x;border-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1=
ex">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://file3.sh \</blockquote=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;=
padding-left:1ex">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://testFile=
1.c \</blockquote><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-=
left-style:solid;padding-left:1ex">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 file://testfile2.c \</blockquote><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(2=
04,204,204);border-left-style:solid;padding-left:1ex">=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 file://testFile3.c \</blockquote><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border=
-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex">=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://includes/include1.c \</blockq=
uote><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:so=
lid;padding-left:1ex">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://incl=
udes/include1.h \</blockquote><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,=
204);border-left-style:solid;padding-left:1ex">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 file://includes/include2.c \</blockquote><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;borde=
r-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex">=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://includes/include2.h \</blockq=
uote><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:so=
lid;padding-left:1ex">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://incl=
udes/include3.h \</blockquote><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,=
204);border-left-style:solid;padding-left:1ex">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 file://Makefile \</blockquote><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-colo=
r:rgb(204,204,204);border-left-style:solid;padding-left:1ex">=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;</blockquote><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-c=
olor:rgb(204,204,204);border-left-style:solid;padding-left:1ex"><br></block=
quote><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:s=
olid;padding-left:1ex">S =3D &quot;${WORKDIR}&quot;</blockquote><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:=
1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-left=
:1ex"><br></blockquote><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);bo=
rder-left-style:solid;padding-left:1ex">FILES_${PN} +=3D &quot;/home/root/t=
ests/testFile1 \</blockquote><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,2=
04);border-left-style:solid;padding-left:1ex">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /home/root/tests/testFile2 \</blockquote><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-w=
idth:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding=
-left:1ex">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /home/ro=
ot/tests/testFile3 \</blockquote><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,2=
04,204);border-left-style:solid;padding-left:1ex">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;</blockquote><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-le=
ft-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex"><br></b=
lockquote><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-sty=
le:solid;padding-left:1ex">do_install () {</blockquote><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;borde=
r-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex">=C2=
=A0 =C2=A0 =C2=A0oe_runmake=C2=A0</blockquote><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-co=
lor:rgb(204,204,204);border-left-style:solid;padding-left:1ex">=C2=A0 =C2=
=A0=C2=A0</blockquote><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);bor=
der-left-style:solid;padding-left:1ex">=C2=A0 =C2=A0 install -d ${D}/home/r=
oot/tests</blockquote><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);bor=
der-left-style:solid;padding-left:1ex">=C2=A0 =C2=A0 install -m 0777 ${S}/f=
ile1.sh =C2=A0 =C2=A0 =C2=A0${D}/home/root/tests</blockquote><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px=
;border-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1e=
x">=C2=A0 =C2=A0 install -m 0777 ${S}/file2.sh =C2=A0 =C2=A0 =C2=A0${D}/hom=
e/root/tests</blockquote><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);=
border-left-style:solid;padding-left:1ex">=C2=A0 =C2=A0 install -m 0777 ${S=
}/file3.sh =C2=A0 =C2=A0 =C2=A0${D}/home/root/tests</blockquote><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:=
1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-left=
:1ex">=C2=A0 =C2=A0 install -m 0755 testFile1 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0${D}/home/root/tests</blockquote><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb=
(204,204,204);border-left-style:solid;padding-left:1ex">=C2=A0 =C2=A0 insta=
ll -m 0755 testFile2 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${D}/home/root/tests=
</blockquote><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-=
style:solid;padding-left:1ex">=C2=A0 =C2=A0 install -m 0755 testFile3 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${D}/home/root/tests</blockquote><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:=
1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-left=
:1ex">=C2=A0 =C2=A0 =C2=A0}</blockquote><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rg=
b(204,204,204);border-left-style:solid;padding-left:1ex"><br></blockquote><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;pa=
dding-left:1ex">=C2=A0 =C2=A0 =C2=A0PARALLEL_MAKE =3D &quot;&quot;</blockqu=
ote><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:sol=
id;padding-left:1ex"><br></blockquote><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(=
204,204,204);border-left-style:solid;padding-left:1ex">=C2=A0 =C2=A0 =C2=A0=
BBCLASSEXTEND =3D &quot;native&quot;</blockquote><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left=
-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex"><br></blo=
ckquote></blockquote><div><br></div><div>And this bb file does not Work.</d=
iv><div><br></div><div>AND THIS WORKS FINE:</div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left=
-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex"><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-widt=
h:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-le=
ft:1ex">DESCRIPTION =3D &quot;description&quot;</blockquote><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;=
border-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex=
">SECTION =3D &quot;section&quot;</blockquote><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-co=
lor:rgb(204,204,204);border-left-style:solid;padding-left:1ex">LICENSE =3D =
&quot;BSD&quot;</blockquote><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,20=
4);border-left-style:solid;padding-left:1ex">LIC_FILES_CHKSUM =3D &quot;fil=
e://${COMMON_LICENSE_DIR}/BSD;md5=3D3775480a712fc46a69647678acb234cb&quot;<=
/blockquote><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-s=
tyle:solid;padding-left:1ex"><br></blockquote><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-co=
lor:rgb(204,204,204);border-left-style:solid;padding-left:1ex">PV =3D &quot=
;1.0&quot;</blockquote><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);bo=
rder-left-style:solid;padding-left:1ex">PR =3D &quot;r0&quot;</blockquote><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;pa=
dding-left:1ex">SRC_URI =3D =C2=A0&quot;file://file1.sh \</blockquote><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-=
width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;paddin=
g-left:1ex">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://file2.sh \</bl=
ockquote><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-styl=
e:solid;padding-left:1ex">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://=
file3.sh&quot;</blockquote><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204=
);border-left-style:solid;padding-left:1ex"><br></blockquote><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px=
;border-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1e=
x"><br></blockquote><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);borde=
r-left-style:solid;padding-left:1ex">S =3D &quot;${WORKDIR}&quot;</blockquo=
te><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:soli=
d;padding-left:1ex"><br></blockquote><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(2=
04,204,204);border-left-style:solid;padding-left:1ex">FILES_${PN} +=3D &quo=
t;/home/root/tests&quot;</blockquote><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(2=
04,204,204);border-left-style:solid;padding-left:1ex"><br></blockquote><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;paddi=
ng-left:1ex"><br></blockquote><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,=
204);border-left-style:solid;padding-left:1ex">do_configure() {</blockquote=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;=
padding-left:1ex">}</blockquote><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,20=
4,204);border-left-style:solid;padding-left:1ex"><br></blockquote><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-widt=
h:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-le=
ft:1ex">do_install() {</blockquote><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(20=
4,204,204);border-left-style:solid;padding-left:1ex"><span class=3D"" style=
=3D"white-space:pre">	</span>install -d ${D}/home/root/tests</blockquote><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;pad=
ding-left:1ex"><span class=3D"" style=3D"white-space:pre">	</span>install -=
m 0777 ${S}/file1.sh =C2=A0 =C2=A0${D}/home/root/tests</blockquote><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-wid=
th:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-l=
eft:1ex"><span class=3D"" style=3D"white-space:pre">	</span>install -m 0777=
 ${S}/file2.sh =C2=A0 =C2=A0${D}/home/root/tests</blockquote><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px=
;border-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1e=
x"><span class=3D"" style=3D"white-space:pre">	</span>install -m 0777 ${S}/=
file3.sh =C2=A0 =C2=A0${D}/home/root/tests</blockquote><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;borde=
r-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex">}</=
blockquote><div><br></div></blockquote><div><br></div><div><br></div><div>D=
o you have any idea How could be writen this bb file.</div><div><br></div><=
div>Thanks.=C2=A0</div><div>=C2=A0</div></div>

--14dae9cc9c689bb8fb0505117186--

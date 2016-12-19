Return-Path: <praveen.vatt@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F584E00D1F; Mon, 19 Dec 2016 04:40:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (praveen.vatt[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DF50E00C82
	for <poky@yoctoproject.org>; Mon, 19 Dec 2016 04:40:48 -0800 (PST)
Received: by mail-wm0-f51.google.com with SMTP id g23so92281618wme.1
	for <poky@yoctoproject.org>; Mon, 19 Dec 2016 04:40:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=FoMoO9agEwW7xklLWw1NyxP4widyw7ZzUIc0+h/8xqQ=;
	b=hSLWvSwKQHEQqRlT63LxD0F8NYV/fS2lEDWgd/C0VmiXgwTH/dRjH/avzNGep/Fypy
	H3cM0jU9q+Zm1VbeiS6OACKeExVgfFIw00N2uE4YXU2G9rRuqrgqo1kyW4F0eee8U2JZ
	jA6KDEoVHoTSYRQgI4qiEF6bEuy7/eHRiydPTZ6aQpw0GqdjkhJ3+aiEqF0MRY1vhbEh
	tA+R19VgHvS+2wxquy/ZdxTd17Om4fb6rXVaUm9qhx+J+hL4KJxg3MKDDjfvBIsgWYjd
	91zp3Jl9Gwtsuldutg8kaphEloxcxt8pfKYL+uxienzx0hnRdUCmd1v3tb6Yod6tMofK
	oiqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=FoMoO9agEwW7xklLWw1NyxP4widyw7ZzUIc0+h/8xqQ=;
	b=laJof2XHlpMj4IWIF5Y1noA944+Go7y59ziKlwF7GWRB3P4Tw0rd1BDUnjwGGVPsxk
	wyGo3l1b1gQOkvk/ZakVZBn2SdRO3FX2EeeQQ+futhfG5RlxE5xbZwhvanq+rPM8voa1
	PqO+d4P5cLjtsbz9BBG20dWZrZZoTH2tHE7aDr+o8M6qqdogRDDPSz5B9qGVHptXDKmR
	QTNB/FlpGAAheafsrXrsy6S2aeZ1tlNAkxz+gY+cB6QhlkD4/6wtJf3tkkkPZyiKsQFL
	kFa0D3H6qHOyW3cXZqUm25DEiCVmRlEKFUPaSWU3zhZ7YcpNeKeprBPTU1pze8wvdOry
	ZHAg==
X-Gm-Message-State: AIkVDXL26zdM/G0cICzvXEpDjfDH5QYtfRJEg7VdPVAcajNZZfKvC3nQv3BBLmSQymz7cIsRkvzmrGbhEPSIYg==
X-Received: by 10.28.144.70 with SMTP id s67mr12746856wmd.138.1482151247109;
	Mon, 19 Dec 2016 04:40:47 -0800 (PST)
MIME-Version: 1.0
Received: by 10.194.192.1 with HTTP; Mon, 19 Dec 2016 04:40:46 -0800 (PST)
From: praveen vattipalli <praveen.vatt@gmail.com>
Date: Mon, 19 Dec 2016 18:10:46 +0530
Message-ID: <CA+pXca0z1fZbtrcwiNgcrTyhaNvA=8dGeXxifBoRR4cjQPN=9Q@mail.gmail.com>
To: poky@yoctoproject.org
Subject: error while compiling hello_2.7.bb
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
X-List-Received-Date: Mon, 19 Dec 2016 12:40:50 -0000
Content-Type: multipart/alternative; boundary=001a1146b334966ed90544023a4e

--001a1146b334966ed90544023a4e
Content-Type: text/plain; charset=UTF-8

Hi All,
I have hello_2.7.bb file which contains as below
vim hello_2.7.bb
DESCRIPTION = "GNU Helloworld application"
SECTION = "test"
LICENSE = "BSD"

LIC_FILES_CHKSUM =
"file://${COMMON_LICENSE_DIR}/BSD;md5=3775480a712fc46a69647678acb234cb"
SRC_DIR ?=
"/home/rajesh/poky-krogoth-15.0.2/meta/recipes-support/hello/hello_2.7"
SRC_URI = "file://${SRC_DIR}"

S = "${SRC_DIR}"

do_compile (){
        make prog
}

do_install(){
        install -d ${D}${bindir}
        install -m 0755 ${S}/hello  ${D}${bindir}
}

in hello_2.7 folder i have two files hello.c and Makefile
vim hello.c
#include<stdio.h>
int main()
{
        printf("hello YOCTO POKY\n");
        return 0;
}

Vim Makefile
prog:
        gcc -o hello hello.c

Now when i am building "bitbake hello", I am  getting below error in
poky-krogoth-15.0.2.
The same hello_2.7.bb  is compiling fine without any error in
"poky-dora-10.0.0".
The strange thing i observe in poky-krogoth-15.0.2. is that hello.c and
Makefile are getting erased in hello_2.7 dir.
Am i missing some thing in poky-krogoth-15.0.2? Please help.

Error msg:
ERROR: hello-2.7-r0 do_compile: Function failed: do_compile (log file is
located at
/home/rajesh/poky-krogoth-15.0.2/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/hello/2.7-r0/temp/log.do_compile.13763)
ERROR: Logfile of failure stored in:
/home/rajesh/poky-krogoth-15.0.2/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/hello/2.7-r0/temp/log.do_compile.13763
Log data follows:
| DEBUG: Executing shell function do_compile
| make: *** No rule to make target 'prog'.  Stop.
| WARNING: exit code 2 from a shell command.
| ERROR: Function failed: do_compile (log file is located at
/home/rajesh/poky-krogoth-15.0.2/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/hello/2.7-r0/temp/log.do_compile.13763)
ERROR: Task 6 (/home/rajesh/poky-krogoth-15.0.2/meta/recipes-support/hello/
hello_2.7.bb, do_compile) failed with exit code '1'
NOTE: Tasks Summary: Attempted 351 tasks of which 345 didn't need to be
rerun and 1 failed.
No currently running tasks (351 of 358)

Summary: 1 task failed:
  /home/rajesh/poky-krogoth-15.0.2/meta/recipes-support/hello/hello_2.7.bb,
do_compile

--001a1146b334966ed90544023a4e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div><div>Hi All,<br></div>I=
 have <a href=3D"http://hello_2.7.bb">hello_2.7.bb</a> file which contains =
as below<br>vim <a href=3D"http://hello_2.7.bb">hello_2.7.bb</a><br>DESCRIP=
TION =3D &quot;GNU Helloworld application&quot;<br>SECTION =3D &quot;test&q=
uot;<br>LICENSE =3D &quot;BSD&quot;<br><br>LIC_FILES_CHKSUM =3D &quot;file:=
//${COMMON_LICENSE_DIR}/BSD;md5=3D3775480a712fc46a69647678acb234cb&quot;<br=
>SRC_DIR ?=3D &quot;/home/rajesh/poky-krogoth-15.0.2/meta/recipes-support/h=
ello/hello_2.7&quot;<br>SRC_URI =3D &quot;file://${SRC_DIR}&quot;<br><br>S =
=3D &quot;${SRC_DIR}&quot;<br><br>do_compile (){<br>=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 make prog<br>}<br><br>do_install(){<br>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 install -d ${D}${bindir}<br>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 install -m 0755 ${S}/hello=C2=A0 ${D}${bindir}<=
br>}<br><br></div>in hello_2.7 folder i have two files hello.c and Makefile=
 <br></div>vim hello.c<br>#include&lt;stdio.h&gt;<br>int main()<br>{<br>=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 printf(&quot;hello YOCTO POKY\n&quo=
t;);<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return 0;<br>}<br><br></=
div>Vim Makefile<br>prog:<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 gcc=
 -o hello hello.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br><br></div>Now when i am building &quo=
t;bitbake hello&quot;, I am=C2=A0 getting below error in poky-krogoth-15.0.=
2. <br></div>The same <a href=3D"http://hello_2.7.bb">hello_2.7.bb</a>=C2=
=A0 is compiling fine without any error in &quot;poky-dora-10.0.0&quot;.<br=
></div>The strange thing i observe in poky-krogoth-15.0.2. is that hello.c =
and Makefile are getting erased in hello_2.7 dir.<br></div>Am i missing som=
e thing in poky-krogoth-15.0.2? Please help.<br><div><div><div><div><br>Err=
or msg:<br>ERROR: hello-2.7-r0 do_compile: Function failed: do_compile (log=
 file is located at /home/rajesh/poky-krogoth-15.0.2/build/tmp/work/cortexa=
8hf-neon-poky-linux-gnueabi/hello/2.7-r0/temp/log.do_compile.13763)<br>ERRO=
R: Logfile of failure stored in: /home/rajesh/poky-krogoth-15.0.2/build/tmp=
/work/cortexa8hf-neon-poky-linux-gnueabi/hello/2.7-r0/temp/log.do_compile.1=
3763<br>Log data follows:<br>| DEBUG: Executing shell function do_compile<b=
r>| <span style=3D"background-color:rgb(255,0,0)">make: *** No rule to make=
 target &#39;prog&#39;.=C2=A0 Stop</span>.<br>| WARNING: exit code 2 from a=
 shell command.<br>| ERROR: Function failed: do_compile (log file is locate=
d at /home/rajesh/poky-krogoth-15.0.2/build/tmp/work/cortexa8hf-neon-poky-l=
inux-gnueabi/hello/2.7-r0/temp/log.do_compile.13763)<br>ERROR: Task 6 (/hom=
e/rajesh/poky-krogoth-15.0.2/meta/recipes-support/hello/<a href=3D"http://h=
ello_2.7.bb">hello_2.7.bb</a>, do_compile) failed with exit code &#39;1&#39=
;<br>NOTE: Tasks Summary: Attempted 351 tasks of which 345 didn&#39;t need =
to be rerun and 1 failed.<br>No currently running tasks (351 of 358)<br><br=
>Summary: 1 task failed:<br>=C2=A0 /home/rajesh/poky-krogoth-15.0.2/meta/re=
cipes-support/hello/<a href=3D"http://hello_2.7.bb">hello_2.7.bb</a>, do_co=
mpile<br></div></div></div></div></div>

--001a1146b334966ed90544023a4e--

Return-Path: <evadeflow@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E83C4E00DE7; Thu,  1 Sep 2016 15:14:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (evadeflow[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.50 listed in list.dnswl.org]
	*  1.0 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.50 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f50.google.com (mail-it0-f50.google.com
	[209.85.214.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7932BE00DE4
	for <poky@yoctoproject.org>; Thu,  1 Sep 2016 15:14:22 -0700 (PDT)
Received: by mail-it0-f50.google.com with SMTP id i184so6308637itf.1
	for <poky@yoctoproject.org>; Thu, 01 Sep 2016 15:14:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=nG4m9xzL8oWPH4rK4h4FDt7u/GfBxUO6bk8EMa6g2LQ=;
	b=dvoFtxhewcM1h8mOgVS+nnZqg+NXiPmFIckiXPM3r4mv5/CvQnAOCroS+h1wkT6gw1
	W13EcrA46VAdyBys06IajLYiWj4G1xZ9sF2IkphyJ6RElO9p3hsTMYeo8wItSAXWERua
	o2PwnPoHpTBXitGk0WTIGPT31FtSPLhfpc4ZNicS1IH2fWBLc1I9BJXl2NHlK2jN/ivS
	TbPTByc5ympTY/1e+GEw0JeIT+eag2Gv86VAsacD/80VLB7DpWYBubsXo2d4pTbD/vz/
	3TbDBYqZ5AXCcPAeQUySwW47veISldixYJhKaax7HnWSw2tyROTtLV6/dSKAB5rIrPQ9
	fN5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=nG4m9xzL8oWPH4rK4h4FDt7u/GfBxUO6bk8EMa6g2LQ=;
	b=N+NeIC+6sObyOv+tJLHWj/TwxRfmETBGM8PmJqDEyGEiIvfq33cZ2hnVC4vOKP517m
	GSW/ATMD7ppqc10O6DiU5C8i7XHT7Oz/1ib3u6fLZ+g1iRplJUudcgtO+A3vnPvfCVt5
	zahnZL/o4QRBd+9XKZUt3MAslvmbg/m3XfELESQRBeBQknhmiLTTcohcoTYwSqyA+M+d
	dEa2XlF8QT8Kgo5ZGHpQbVPJmfoBgL1DHQvs28Feis0JJXSFS2illUiu07Z+oF+w1r39
	6k4jkIW5d24kGDImaSPb6wvxKzhwbvCyxlNVDXeKJ9cmXLCVLyocW50j9rUfyMNweu1L
	/Ejw==
X-Gm-Message-State: AE9vXwP5+dHhE8MahmIb5yyI288G5OA/4YBQ6JBEfEeShYkeNTwWFUKHo+LNchOWjkN9/dji8//10qJtYIqgag==
X-Received: by 10.36.34.204 with SMTP id o195mr23662103ito.29.1472768061468;
	Thu, 01 Sep 2016 15:14:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.147.4 with HTTP; Thu, 1 Sep 2016 15:14:21 -0700 (PDT)
From: Evade Flow <evadeflow@gmail.com>
Date: Thu, 1 Sep 2016 18:14:21 -0400
Message-ID: <CAMAb8ZPvCV1N_BYEC_XoVsfeUH1a3fy7eMe8Vffg-yPQveyFyg@mail.gmail.com>
To: Poky <poky@yoctoproject.org>
Subject: When SRCREV is set to AUTOREV, what triggers (re-)fetching?
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
X-List-Received-Date: Thu, 01 Sep 2016 22:14:25 -0000
Content-Type: multipart/alternative; boundary=001a1140574823fb03053b79896b

--001a1140574823fb03053b79896b
Content-Type: text/plain; charset=UTF-8

I have a recipe that sets `SRCREV = ${AUTOREV}`, organized almost exactly
like Rob Calhoun's template from this thread:

  - https://lists.yoctoproject.org/pipermail/yocto/2013-November/017042.html

It works as I expect, in that running `bitbake myprog` results in output
like:

```
Currently 1 running tasks (2441 of 2447):
0: myprog-1.0.0+gitAUTOINC+91b8e42702-r0 do_install (pid 17307)
```

However, if I push a change to the upstream so that the `HEAD` revision
moves, and immediately re-run `bitbake myprog`, I get:

```
NOTE: Preparing RunQueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Tasks Summary: Attempted 2447 tasks of which 2447 didn't need to be
rerun and all succeeded.
NOTE: Writing buildhistory

Summary: There were 8 WARNING messages shown.
```

My hope was that bitbake would pull the new `HEAD` and rebuild, but it
seems 'stuck' on the revision it built first. Are my expectations for how
`AUTOREV` ought to work flawed? If so... what commands can I use to make
bitbake re-fetch the source?

Some details of my setup:

```
$ bitbake --version
BitBake Build Tool Core version 1.28.0

$ cat distro/poky/meta-yocto/conf/distro/poky.conf | grep DISTRO | head -4
DISTRO = "poky"
DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
DISTRO_VERSION = "2.0"
DISTRO_CODENAME = "jethro"
```

--001a1140574823fb03053b79896b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>I have a recipe that sets `SRCREV=
 =3D ${AUTOREV}`, organized almost exactly like Rob Calhoun&#39;s template =
from this thread:<br><br>=C2=A0 - <a href=3D"https://lists.yoctoproject.org=
/pipermail/yocto/2013-November/017042.html">https://lists.yoctoproject.org/=
pipermail/yocto/2013-November/017042.html</a><br><br></div>It works as I ex=
pect, in that running `bitbake myprog` results in output like:<br><br>```<b=
r>Currently 1 running tasks (2441 of 2447):<br>0: myprog-1.0.0+gitAUTOINC+9=
1b8e42702-r0 do_install (pid 17307)<br>```<br></div><br></div>However, if I=
 push a change to the upstream so that the `HEAD` revision moves, and immed=
iately re-run `bitbake myprog`, I get:<br><br>```<br>NOTE: Preparing RunQue=
ue<br>NOTE: Executing SetScene Tasks<br>NOTE: Executing RunQueue Tasks<br>N=
OTE: Tasks Summary: Attempted 2447 tasks of which 2447 didn&#39;t need to b=
e rerun and all succeeded.<br>NOTE: Writing buildhistory<br><br>Summary: Th=
ere were 8 WARNING messages shown.<br>```<br><br></div>My hope was that bit=
bake would pull the new `HEAD` and rebuild, but it seems &#39;stuck&#39; on=
 the revision it built first. Are my expectations for how `AUTOREV` ought t=
o work flawed? If so... what commands can I use to make bitbake re-fetch th=
e source?<br><br></div>Some details of my setup:<br><br>```<br>$ bitbake --=
version<br>BitBake Build Tool Core version 1.28.0<br><br>$ cat distro/poky/=
meta-yocto/conf/distro/poky.conf | grep DISTRO | head -4<br>DISTRO =3D &quo=
t;poky&quot;<br>DISTRO_NAME =3D &quot;Poky (Yocto Project Reference Distro)=
&quot;<br>DISTRO_VERSION =3D &quot;2.0&quot;<br>DISTRO_CODENAME =3D &quot;j=
ethro&quot;<br>```<br><div><br></div></div>

--001a1140574823fb03053b79896b--

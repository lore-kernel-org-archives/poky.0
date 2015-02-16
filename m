Return-Path: <priyaiitmandi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6C96E0074C; Mon, 16 Feb 2015 00:14:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HK_RANDOM_FROM,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: *  1.0 HK_RANDOM_FROM From username looks random
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (priyaiitmandi[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.177 listed in list.dnswl.org]
Received: from mail-ig0-f177.google.com (mail-ig0-f177.google.com
	[209.85.213.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3BD6E00746;
	Mon, 16 Feb 2015 00:14:16 -0800 (PST)
Received: by mail-ig0-f177.google.com with SMTP id z20so22050546igj.4;
	Mon, 16 Feb 2015 00:14:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=fPL2+01fyEc6Hnp2ctLm8899srxvea6qQ9ayAykz32c=;
	b=iRsSOHF3fymuQ7af5NmyrI6WTtF1VZXfRMIR0ITY2ZXZetrOR/X0CO/iZnSZVn0VLS
	WfhCLA+08nAAKODwc5m4koFXVLLBIgilopo2jzfkBVem7E8/2yviaMwr7G9zRluYDYEE
	ykkQKXFYy8VeMXmOrBOW3n3gJEEg1SIUholGwZR4X5uk4t+MUPqUNc+7CBz+KK84YJHs
	R/WrFioysQ5+lXp77fL/SWASokD7/4xy2xRI+Ju80W+xXn1/J5/mn+cKzIUzKDLJcJOq
	gNTk9naZSzxps6a7uB6zyyEqj0LPjgDx7qlp3meN7mARFQOHApVxkhecjJX675VOsWfj
	i7zw==
MIME-Version: 1.0
X-Received: by 10.43.127.198 with SMTP id hb6mr27758366icc.86.1424074456094;
	Mon, 16 Feb 2015 00:14:16 -0800 (PST)
Received: by 10.107.134.207 with HTTP; Mon, 16 Feb 2015 00:14:15 -0800 (PST)
Date: Mon, 16 Feb 2015 13:44:15 +0530
Message-ID: <CALTPfpHDYT3_O6TDCtmZCH432h9-xaX6fhm4W0mEgErshNqCuA@mail.gmail.com>
From: Priya Agarwal <priyaiitmandi@gmail.com>
To: meta-freescale@yoctoproject.org, poky@yoctoproject.org
Subject: How to remove: WARNING: No bb files matched BBFILE_PATTERN_mylayer '^/media/NewVolume/yocto/meta-mylayer/'
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
X-List-Received-Date: Mon, 16 Feb 2015 08:14:22 -0000
X-Groupsio-MsgNum: 9921
Content-Type: multipart/mixed; boundary=001a11c21f00178048050f302c26

--001a11c21f00178048050f302c26
Content-Type: multipart/alternative; boundary=001a11c21f00178041050f302c24

--001a11c21f00178041050f302c24
Content-Type: text/plain; charset=UTF-8

Hi,

I want to compile a c++ file(tcpserver.cpp) and build it along with my
kernel image. I am using QorIQ SDK1.4.

I created a new layer meta-mylayer in yocto/, wrote a simple recipe file,
and edited bblayers.conf and local.conf. But I am getting the following
error:

WARNING: No bb files matched BBFILE_PATTERN_mylayer
'^/media/NewVolume/yocto/meta-mylayer/'

What does this mean and how should I remove it?

The .bb file is in:
yocto/meta-mylayer/tcpserver/tcpserver.bb

I have also attached it.

Thanks.

--001a11c21f00178041050f302c24
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div><div>Hi,<br><br></div>I=
 want to compile a c++ file(tcpserver.cpp) and build it along with my kerne=
l image. I am using QorIQ SDK1.4.<br><br></div>I created a new layer meta-m=
ylayer in yocto/, wrote a simple recipe file, and edited bblayers.conf and =
local.conf. But I am getting the following error:<br><br>WARNING: No bb fil=
es matched BBFILE_PATTERN_mylayer &#39;^/media/NewVolume/yocto/meta-mylayer=
/&#39;<br><br></div>What does this mean and how should I remove it?<br></di=
v><br></div>The .bb file is in:<br></div>yocto/meta-mylayer/tcpserver/<a hr=
ef=3D"http://tcpserver.bb">tcpserver.bb</a><br><br></div>I have also attach=
ed it. <br><br></div>Thanks.<br></div>

--001a11c21f00178041050f302c24--

--001a11c21f00178048050f302c26
Content-Type: application/octet-stream; name="tcpserver.bb"
Content-Disposition: attachment; filename="tcpserver.bb"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_i67l25y80

REVTQ1JJUFRJT04gPSAiU2ltcGxlIFRDUCBzZXJ2ZXIgdG8gdGVzdCBpZiBzeXN0ZW0gY2FsbHMg
bGlrZSBzb2NrZXQoKSwgYmluZCgpIGV0YyBhcmUgd29ya2luZyB3aGVuIHVzZWQgd2l0aCB1c2Rw
YWEuZHRiIgpTRUNUSU9OID0gIm5ldHdvcmsiCkxJQ0VOU0UgPSAiR1BMdjIrIgoKU1JDX1VSSSA9
ICJmaWxlOi8vL21lZGlhL05ld1ZvbHVtZS90Y3BzZXJ2ZXIuY3BwIgoKUyA9ICIke1dPUktESVJ9
IgoKZG9fY29tcGlsZSgpIHsKICAgICAJJHtDQ30gdGNwc2VydmVyLmNwcCAtbyB0Y3BzZXJ2ZXIK
fQoKZG9faW5zdGFsbCgpIHsKICAgICAJaW5zdGFsbCAtZCAke0R9JHtiaW5kaXJ9CiAgICAgCWlu
c3RhbGwgLW0gMDc1NSB0Y3BzZXJ2ZXIgJHtEfSR7YmluZGlyfQp9Cg==

--001a11c21f00178048050f302c26--

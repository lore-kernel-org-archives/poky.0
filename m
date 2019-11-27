Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.6416.1574863460909756862
 for <poky@lists.yoctoproject.org>;
 Wed, 27 Nov 2019 06:04:21 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=parse error for token &{10 18 sendgrid.net}: limit exceeded (domain: streamunlimited.com, ip: 140.211.169.56, mailfrom: quentin.schulz@streamunlimited.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74B4EE00D16; Wed, 27 Nov 2019 06:04:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.3 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	RCVD_IN_RP_RNBL autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [213.33.87.17 listed in list.dnswl.org]
	*  1.3 RCVD_IN_RP_RNBL RBL: Relay in RNBL,
	*      https://senderscore.org/blacklistlookup/
	*      [213.33.87.17 listed in bl.score.senderscore.com]
X-Greylist: delayed 2602 seconds by postgrey-1.32 at yocto-www; Wed, 27 Nov 2019 06:04:18 PST
Received: from bsmtp3.bon.at (bsmtp3.bon.at [213.33.87.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2660CE00B5E
	for <poky@yoctoproject.org>; Wed, 27 Nov 2019 06:04:18 -0800 (PST)
Received: from bsmtp2.bon.at (unknown [192.168.181.106])
	by bsmtp3.bon.at (Postfix) with ESMTPS id 47NLxj226Wz5wRR
	for <poky@yoctoproject.org>; Wed, 27 Nov 2019 14:20:57 +0100 (CET)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 47NLxg5HvSz5tl9;
	Wed, 27 Nov 2019 14:20:55 +0100 (CET)
Date: Wed, 27 Nov 2019 14:20:54 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Daniels Umanovskis <du@axentia.se>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [poky] [PULL] [PATCH 1/1] gattlib: add the recipe
Message-ID: <20191127132054.uzj5m2kwjbk47it6@qschulz>
References: <cover.1574858887.git.du@axentia.se>
 <a8c1ab0e22997865b732383b9d7a8b6f64394894.1574858887.git.du@axentia.se>
MIME-Version: 1.0
In-Reply-To: <a8c1ab0e22997865b732383b9d7a8b6f64394894.1574858887.git.du@axentia.se>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Daniels,

On Wed, Nov 27, 2019 at 01:06:42PM +0000, Daniels Umanovskis wrote:
> ---
>  .../gattlib/files/LICENSE                     | 339 ++++++++++++++++++
>  ...oid-strange-chars-from-the-build-dir.patch |  70 ++++
>  .../gattlib/gattlib_git.bb                    |  31 ++
>  3 files changed, 440 insertions(+)
>  create mode 100644 meta/recipes-connectivity/gattlib/files/LICENSE
>  create mode 100644 meta/recipes-connectivity/gattlib/files/dbus-avoid-strange-chars-from-the-build-dir.patch
>  create mode 100644 meta/recipes-connectivity/gattlib/gattlib_git.bb
[...]
> +LIC_FILES_CHKSUM = "file://${WORKDIR}/LICENSE;md5=b234ee4d69f5fce4486a80fdaf4a4263"

I haven't reviewed the whole recipe thoroughly and I'm also no
maintainer, but it looks okay except for the following point.

There are chances that the actual license used in the project (which
isn't *very* explicit BTW) changes and that the LICENSE file in there
won't be updated automatically.

I've seen that there isn't any separate file for the project's license
but what one can do in LIC_FILES_CHKSUM is to use part of a file where
the license is epxlicited. Which is the case for example for
https://github.com/labapart/gattlib/blob/master/CMakeLists.txt.

What we could do in that case is:
LIC_FILES_CHKSUM = "file://CMakeLists.txt;beginline=1;endline=20;md5=<result of md5sum on only this part of the file>"

c.f. https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#usingpoky-specifying-LIC_FILES_CHKSUM

Thanks,
Quentin

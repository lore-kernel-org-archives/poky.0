Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web10.9157.1595930709998558960
 for <poky@lists.yoctoproject.org>;
 Tue, 28 Jul 2020 03:05:10 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 4BGC375MVTz5tlB;
	Tue, 28 Jul 2020 12:05:07 +0200 (CEST)
Date: Tue, 28 Jul 2020 12:05:06 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: kar_947@hotmail.fr
Cc: poky@lists.yoctoproject.org
Subject: Re: [poky] How to install Compiler g++ in Yocto #yocto #g++ #gcc #compiler #package #library #poky
Message-ID: <20200728100506.rv3tfkpx5ic773gg@qschulz>
References: <aea0b4b9d1a4414d89428c3b7d262a94@basmevissen.nl>
 <19786.1595930464343330876@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <19786.1595930464343330876@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Tue, Jul 28, 2020 at 03:01:04AM -0700, kar_947@hotmail.fr wrote:
> Hello Bas,
> 
> I have a big problem during the compilation of the Yocto.
> In the recipes "linux-arm_4.1.15.bb", the URL : "git://git.freescale.com/imx/linux-imx.git;protocol=git" is down. Can you help to find an other URL.

LMGTFY:
http://git.yoctoproject.org/cgit/cgit.cgi/meta-freescale/tree/recipes-kernel/linux/linux-imx.inc#n17

Quentin


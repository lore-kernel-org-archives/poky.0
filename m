Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.17225.1581458348783298152
 for <poky@lists.yoctoproject.org>;
 Tue, 11 Feb 2020 13:59:09 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: denix.org, ip: 140.211.169.56, mailfrom: denis@denix.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 252E7E01382; Tue, 11 Feb 2020 13:59:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [64.68.198.64 listed in list.dnswl.org]
X-Greylist: delayed 546 seconds by postgrey-1.32 at yocto-www; Tue, 11 Feb 2020 13:59:05 PST
Received: from mailout4.zoneedit.com (mailout4.zoneedit.com [64.68.198.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B068FE007EE
	for <poky@yoctoproject.org>; Tue, 11 Feb 2020 13:59:05 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mailout4.zoneedit.com (Postfix) with ESMTP id 29C5F40C1C;
	Tue, 11 Feb 2020 21:49:59 +0000 (UTC)
Received: from mailout4.zoneedit.com ([127.0.0.1])
	by localhost (zmo14-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 82kNl794nmED; Tue, 11 Feb 2020 21:49:59 +0000 (UTC)
Received: from mail.denix.org (pool-100-15-86-127.washdc.fios.verizon.net [100.15.86.127])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailout4.zoneedit.com (Postfix) with ESMTPSA id 05BA240BCC;
	Tue, 11 Feb 2020 21:49:56 +0000 (UTC)
Received: by mail.denix.org (Postfix, from userid 1000)
	id 6790B1743FA; Tue, 11 Feb 2020 16:49:56 -0500 (EST)
Date: Tue, 11 Feb 2020 16:49:56 -0500
From: "Denys Dmytriyenko" <denis@denix.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Jon Mason <jdmason@kudzu.us>, poky@yoctoproject.org
Subject: Re: [poky] testimage gcc error
Message-ID: <20200211214956.GU4735@denix.org>
References: <CAPoiz9z_CX0A0vii6w8d+D+csgF3eoxweTF-gkvx58te+6hx5w@mail.gmail.com>
 <d8b27040725d248c5fc498131a08584ee5cc7785.camel@linuxfoundation.org>
MIME-Version: 1.0
In-Reply-To: <d8b27040725d248c5fc498131a08584ee5cc7785.camel@linuxfoundation.org>
User-Agent: Mutt/1.5.20 (2009-06-14)
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Feb 11, 2020 at 09:31:49PM +0000, Richard Purdie wrote:
> On Tue, 2020-02-11 at 14:31 -0500, Jon Mason wrote:
> > I'm seeing multiple "Command not found" errors when I run the
> > testimage command on zeus with GCC added.  I'm sure others are
> > testing
> > this and not seeing an issue.  So, please let me know what I'm doing
> > wrong.
> > 
> > My only configuration was to add to local.conf (aside from SSTATE_DIR
> > and DL_DIR) is:
> > INHERIT += "testimage"
> > IMAGE_INSTALL_append = " autoconf make gcc "
> 
> If you put gcc-symlinks and maybe binutils-symlinks in there, does it
> work better? Suggests we may have some gremlins in the packages used to
> enable the tests if so...

Maybe try IMAGE_INSTALL_append = " packagegroup-core-buildessential"

-- 
Denys

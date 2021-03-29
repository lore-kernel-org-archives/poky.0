Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.18624.1617005427782419111
 for <poky@lists.yoctoproject.org>;
 Mon, 29 Mar 2021 01:10:30 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=parse error for token &{10 18 a1.net}: parse error for token &{10 18 spf.a1.net}: parse error for token &{10 18 a1telekom.at}: parse error for token &{10 18 spf.qb-feedback.com}: parse error for token &{10 18 spf2.qb-feedback.com}: limit exceeded (domain: streamunlimited.com, ip: 198.145.29.25, mailfrom: quentin.schulz@streamunlimited.com)
Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 69A0938C0636
	for <poky@yoctoproject.org>; Mon, 29 Mar 2021 08:10:27 +0000 (UTC)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 4F84y92Zh2z5tlG;
	Mon, 29 Mar 2021 10:10:25 +0200 (CEST)
Date: Mon, 29 Mar 2021 10:10:23 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: R Srinivasan <s@srin.me>
Cc: poky@yoctoproject.org
Subject: Re: [poky] Qt version upgrade
Message-ID: <20210329081023.uc34ceahpv44qifb@qschulz>
References: <CAGNn0ha9Kvpt-Nw8USXtossi_mhLxHOC7k1OC=5jp09TiJeg-w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGNn0ha9Kvpt-Nw8USXtossi_mhLxHOC7k1OC=5jp09TiJeg-w@mail.gmail.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Srini,

On Sat, Mar 27, 2021 at 05:46:59PM -0400, R Srinivasan wrote:
> We are using "warrior" qt 5.12.6 am looking to upgrade to 5.15.2 or later.
> 
> Not sure where to start? Pointers requested.
> 

Hardknott branch of meta-qt5 targets qt 5.15.2 currently.

Either upgrade your layers to hardknott release (yet to be released, but
should come out in April/May if it follows usual timeframe) or backport
recipes to your version of Yocto by yourself.

Cheers,
Quentin

Received: from bsmtp2.bon.at (bsmtp2.bon.at [213.33.87.16])
 by mx.groups.io with SMTP id smtpd.web12.9409.1614695429514521720
 for <poky@lists.yoctoproject.org>;
 Tue, 02 Mar 2021 06:30:30 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.16, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 4Dqffv6BHSz5tlJ;
	Tue,  2 Mar 2021 15:30:15 +0100 (CET)
Date: Tue, 2 Mar 2021 15:30:14 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: mikhail_smagin@yahoo.com
Cc: poky@lists.yoctoproject.org
Subject: Re: [poky] Error in yocto compilation for SAMA5D3
Message-ID: <20210302143014.tnf6wylo47l2dslz@qschulz>
References: <kuoe.1614694241936572354.vysH@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <kuoe.1614694241936572354.vysH@lists.yoctoproject.org>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Mikhail,

On Tue, Mar 02, 2021 at 06:10:41AM -0800, mikhail_smagin via lists.yoctoproject.org wrote:
> Dear Colleagues!
> Please help me to deal with the following issue. I am trying to build yocto for ATSAMA5D3 Xplained using this manual: https://www.linux4sam.org/bin/view/Linux4SAM/Sama5d3XplainedMainPage. I use LInux Mint installed on VirtualBox with Linaro as a cross compilation tool. I have all the success with bulding minimal image, but when I try to build the headless image, it goes up to 98%, then I receive a lo-o-ong list of messages with the following error passages:
> 
[...]
> For me it looks rather strange, that memory is exhausted because my virtual Linux has about 5 Gigs of RAM and about 60 gigs on hard disk.
> 

How many CPU cores accessible by your VM? Depending on the number, it is
possible you run out of memory. 5GB isn't really a lot for build
systems.

IIRC, the recommendation is the RAM capacity in GB being twice that of
the number of CPU cores (output of nproc).

If you can't have such a configuration, you might have to tweak
PARALLEL_MAKE until you find a configuration that works for you.

But... Why a Virtual Machine in the first place?

We have support for WSLv2 on Windows if that's your case, and there are
some container technologies available too to avoid the VM overhead (e.g.
github.com/garmin/pyrex).

Cheers,
Quentin

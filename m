Received: from kernel.crashing.org (kernel.crashing.org [76.164.61.194])
 by mx.groups.io with SMTP id smtpd.web10.4828.1575469388563481552
 for <poky@lists.yoctoproject.org>;
 Wed, 04 Dec 2019 06:23:08 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=syntax error for token:  (domain: kernel.crashing.org, ip: 76.164.61.194, mailfrom: mark.hatle@kernel.crashing.org)
Received: from Marks-MacBook-Pro-16.local ([76.164.61.198])
	(authenticated bits=0)
	by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id xB4EN5ap014660
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO)
	for <poky@lists.yoctoproject.org>; Wed, 4 Dec 2019 08:23:07 -0600
Subject: Re: [poky] [PATCH] poky: Default to enabling a local hash equivalence server
To: poky@lists.yoctoproject.org
References: <20191204120959.25639-1-richard.purdie@linuxfoundation.org>
 <8c767875-784a-c98e-ef49-60502d27f651@kernel.crashing.org>
 <3ac065fe5611aa5d7007f5438fbbd5b4dfd78477.camel@linuxfoundation.org>
From: "Mark Hatle" <mark.hatle@kernel.crashing.org>
Message-ID: <26c58eb9-008b-fe10-8046-90e3e3d59b66@kernel.crashing.org>
Date: Wed, 4 Dec 2019 08:23:05 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <3ac065fe5611aa5d7007f5438fbbd5b4dfd78477.camel@linuxfoundation.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 12/4/19 8:18 AM, Richard Purdie wrote:
> On Wed, 2019-12-04 at 08:04 -0600, Mark Hatle wrote:
>> It does seem to cause issues w/ PR Server usage and packagefeed
>> stability.  (I'm not saying don't do this, I think we absolutely
>> SHOULD have it enabled.. we but we will need to figure out the
>> issues.)
> 
> Right, there are potential interactions which we need to resolve. That
> said, I think the benefit is significant to the majority of users and
> most don't use PRServ so this is the right direction.
> 
>> PR Service, when this is enabled, even if the hash is equivalent a
>> new package version is produced (at least locally) in all cases.
> 
> Should it? I don't think that is what you want. If its not changed, you
> don't want to rebuild it? If you don't rebuild it, you don't need a new
> PR number?

If do_install was shown to be equivalent, and there is no metadata change (not
sure how there could be if it was equivalent) then no reason to do_package.

> You only want a new PR number if it rebuilds?

That makes the most sense to me.

> Fixing this could be as simple as ensuring its the unihash the PRServ
> sees rather than taskhash.

That should work, and would fit within the current design.

>> Adding in packagefeed-stability and the image is generated with the
>> new package versions that don't actually end up existing in the
>> feed.  (This might just be a packagefeed-stability bug and not hash
>> equivalency.)
> 
> I suspect we reworked parts of rootfs generation and this hasn't been
> tested with packagefeed-stability unfortunately.
> 
> I still hope we could obsolete packagefeed-stability with hashequiv.

I'm not sure if there are cases where packagefeed-stability would kick in that
hash equivalency wouldn't.

--Mark

> Cheers,
> 
> Richard
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> 
> View/Reply Online (#11853): https://lists.yoctoproject.org/g/poky/message/11853
> Mute This Topic: https://lists.yoctoproject.org/mt/66431026/3616948
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub  [mark.hatle@kernel.crashing.org]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

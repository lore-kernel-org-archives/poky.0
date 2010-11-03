Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 21CF24C81003
	for <poky@pokylinux.org>; Wed,  3 Nov 2010 10:05:40 -0500 (CDT)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oA3F5dne027682
	for <poky@pokylinux.org>; Wed, 3 Nov 2010 08:05:39 -0700 (PDT)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 3 Nov 2010 08:05:39 -0700
Received: from Macintosh-5.local ([172.25.36.227]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 3 Nov 2010 08:05:39 -0700
Message-ID: <4CD17A42.9070103@windriver.com>
Date: Wed, 03 Nov 2010 10:05:38 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.12) Gecko/20101027 Thunderbird/3.1.6
MIME-Version: 1.0
To: poky@pokylinux.org
References: <4CD16A8E.7090100@mlbassoc.com>
In-Reply-To: <4CD16A8E.7090100@mlbassoc.com>
X-OriginalArrivalTime: 03 Nov 2010 15:05:39.0547 (UTC)
	FILETIME=[93BA5AB0:01CB7B68]
Subject: Re: Inconsistent timestamp use
X-BeenThere: poky@pokylinux.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.pokylinux.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/poky>,
	<mailto:poky-request@pokylinux.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/poky>
List-Post: <mailto:poky@pokylinux.org>
List-Help: <mailto:poky-request@pokylinux.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/poky>,
	<mailto:poky-request@pokylinux.org?subject=subscribe>
X-List-Received-Date: Wed, 03 Nov 2010 15:05:40 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I was wondering why that wasn't working before.

It was also mentioned to me by someone at CELF that a lot of devices check the 
superblock times to set their clocks as well.  I don't know if Poky has this 
behavior, but if it does that is not working either.

--Mark

On 11/3/10 8:58 AM, Gary Thomas wrote:
> The Poky root file system (init scripts) has a mechanism for
> supporting systems without a working hardware [time of day] clock.
> It seems that this has suffered some rot recently and is now
> quite inconsistent:
>     * rootfs_update_timestamp() uses a different format for the time stamp
>     * the init scripts look for /etc/timestamp2, not /etc/timestamp which
>       is created with the image
>
> The attached patch makes this consistent and the system clock now works
> much better (about as good as a machine without a hardware clock can!)
>



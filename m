Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1BCE84C800A3
	for <poky@yoctoproject.org>; Thu,  3 Mar 2011 11:22:57 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p23HMtKT007345;
	Thu, 3 Mar 2011 09:22:55 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 3 Mar 2011 09:22:55 -0800
Received: from [128.224.146.67] ([128.224.146.67]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 3 Mar 2011 09:22:55 -0800
Message-ID: <4D6FCE6E.4020700@windriver.com>
Date: Thu, 03 Mar 2011 12:22:54 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110208 Thunderbird/3.1.8 ThunderBrowse/3.3.5
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <b7da2f$qk1a22@fmsmga001.fm.intel.com>
In-Reply-To: <b7da2f$qk1a22@fmsmga001.fm.intel.com>
X-OriginalArrivalTime: 03 Mar 2011 17:22:55.0338 (UTC)
	FILETIME=[A23654A0:01CBD9C7]
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1][KERNEL] emgd: add fb_info
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 03 Mar 2011 17:22:57 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11-03-03 11:44 AM, Tom Zanussi wrote:
> From: Tom Zanussi<tom.zanussi@intel.com>
>
> Update to 2.6.37 upgrade, please pull.
>
> Pull URL: git://git.pokylinux.org/linux-yocto-2.6.37-contrib/tzanussi-crownbay-2.6.37-emgd-fbdev
>    Branch: tzanussi-crownbay-2.6.37-emgd-fbdev
>    Browse:
> http://git.pokylinux.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi-crownbay-2.6.37-emgd-fbdev

simple change. Looks fine to me.

Merged and pushed out. You can update your SRCREV now.

Bruce

>
> Tom Zanussi (1):
>    emgd: add fb_info
>
>   drivers/gpu/drm/emgd/emgd/drm/emgd_fb.c |   12 +++++++++++-
>   1 files changed, 11 insertions(+), 1 deletions(-)
>



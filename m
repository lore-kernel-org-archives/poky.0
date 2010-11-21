Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0A9764C808B6
	for <poky@yoctoproject.org>; Sun, 21 Nov 2010 11:55:43 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oALHtg1v025308;
	Sun, 21 Nov 2010 09:55:42 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Sun, 21 Nov 2010 09:55:41 -0800
Received: from bruce-ashfields-macbook.local ([128.224.143.6]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Sun, 21 Nov 2010 09:55:41 -0800
Message-ID: <4CE95D1B.7040407@windriver.com>
Date: Sun, 21 Nov 2010 12:55:39 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.12) Gecko/20101027 Thunderbird/3.1.6
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <cover.1290351524.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1290351524.git.tom.zanussi@intel.com>
X-OriginalArrivalTime: 21 Nov 2010 17:55:41.0770 (UTC)
	FILETIME=[50298AA0:01CB89A5]
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] emenlow build fix
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
X-List-Received-Date: Sun, 21 Nov 2010 17:55:44 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10-11-21 9:58 AM, Tom Zanussi wrote:
> This patch fixes up a small oversight in the recent renaming that causes
> a build failure for emenlow.

Argh. Indeed.

Acked-by: Bruce Ashfield <bruce.ashfield@windriver.com>

Bruce

>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: tzanussi/emenlow-fixes
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tzanussi/emenlow-fixes
>
> Thanks,
>      Tom Zanussi<tom.zanussi@intel.com>
> ---
>
>
> Tom Zanussi (1):
>    emenlow: fix linux-yocto .bbappend
>
>   .../recipes/linux/linux-yocto_git.bbappend         |    2 +-
>   1 files changed, 1 insertions(+), 1 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky



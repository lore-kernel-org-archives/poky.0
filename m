Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3EA904C8008C
	for <poky@yoctoproject.org>; Tue,  1 Feb 2011 19:24:32 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p121OUnv012789;
	Tue, 1 Feb 2011 17:24:30 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 1 Feb 2011 17:24:30 -0800
Received: from Macintosh-5.local ([172.25.36.227]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 1 Feb 2011 17:24:29 -0800
Message-ID: <4D48B24D.8000201@windriver.com>
Date: Tue, 01 Feb 2011 19:24:29 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
References: <9DA5872FEF993D41B7173F58FCF6BE9411BF2012@orsmsx504.amr.corp.intel.com>
In-Reply-To: <9DA5872FEF993D41B7173F58FCF6BE9411BF2012@orsmsx504.amr.corp.intel.com>
X-OriginalArrivalTime: 02 Feb 2011 01:24:30.0019 (UTC)
	FILETIME=[F0644130:01CBC277]
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: 3 versions of elfutils recipes in the poky master tree
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
X-List-Received-Date: Wed, 02 Feb 2011 01:24:32 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 2/1/11 7:15 PM, Kamble, Nitin A wrote:
> elfutils_0.148.bb 
> 
>                 this is the default currently being used.
> 
>                 LICENSE = "GPLv2 with exceptions"
> 
>  
> 
> elfutils_0.108.bb 
> 
>                 not being used currently
> 
>                 does not have LIC_CHKSUM_FILES
> 
>                 also compile fails
> 
>                 LICENSE = "OSL & GPLv2"
> 
>  
> 
> elfutils_0.89.bb
> 
>                 fetch fails
> 
>                 LICENSE = "OSL"
> 

At one time the older versions were required for specific implementations of
prelink and RPM.  This is no longer true.  I would suggest you remove the older
versions, and as long as RPM and prelink continue to work (as expected), we're good.

--Mark

> 
> I would like to remove the 0.89 & 0.108 versions of the elfutils. But I am not
> aware of any reasons why are they are left behind in the tree.
> 
> So let me know the fates of these recipes.
> 
>  
> 
> Thanks,
> 
> Nitin
> 
> 
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky



Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id C9CEF4C8085F
	for <poky@yoctoproject.org>; Tue, 25 Jan 2011 09:50:13 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 25 Jan 2011 07:50:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,374,1291622400"; d="scan'208";a="700432640"
Received: from unknown (HELO [10.255.14.149]) ([10.255.14.149])
	by orsmga001.jf.intel.com with ESMTP; 25 Jan 2011 07:50:13 -0800
Message-ID: <4D3EF134.3030803@linux.intel.com>
Date: Tue, 25 Jan 2011 07:50:12 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Joshua Lock <josh@linux.intel.com>
References: <1295958916.5641.8.camel@scimitar>
In-Reply-To: <1295958916.5641.8.camel@scimitar>
Cc: poky <poky@yoctoproject.org>
Subject: Re: Please ensure you are using layout variables in recipes
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
X-List-Received-Date: Tue, 25 Jan 2011 15:50:14 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/25/2011 04:35 AM, Joshua Lock wrote:
> Hi all,
>
> When creating/editing recipes can we please ensure consistent use of
> layout variables, rather than absolute paths.

Hi Josh,

When I was putting together the mediatomb scripts I remember running 
into this. We typically have to write custom init scripts, for example, 
in order to deal with this as well as some other subtleties and 
assumptions made by the package init author. In these cases, it would be 
really useful to have a layer skeleton, which also included skeleton 
recipes, images, etc. All commented, complete with documentation links 
to aid people through the process. Seeing it all together in final form 
would go a long way to helping people get it right the first (or maybe 
the second) time. I've discussed this with Saul as well, maybe something 
we need to get on the schedule?

--
Darren

>
> For example use:
>
> ${bindir}/foo
> ${datadir}/bar
> and
> ${base_sbindir}/baz
>
> rather than:
>
> /usr/bin/foo
> /usr/share/bar
> and
> /sbin/baz
>
> The layout variables are defined in bitbake.conf and we should have
> pretty much everything we need there, if you feel some are missing
> please submit a patch (we've recently added some for cross and nativesdk
> use, for example).
>
> Thanks,
> Joshua


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel


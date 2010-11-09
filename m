Return-Path: <scott.a.garman@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 710624C80BCF
	for <poky@yoctoproject.org>; Tue,  9 Nov 2010 12:06:07 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 09 Nov 2010 10:05:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,175,1288594800"; d="scan'208";a="625081831"
Received: from rrsmsx603.amr.corp.intel.com ([10.31.0.57])
	by fmsmga002.fm.intel.com with ESMTP; 09 Nov 2010 10:05:50 -0800
Received: from [10.255.12.243] (10.255.12.243) by rrsmsx603.amr.corp.intel.com
	(10.31.0.57) with Microsoft SMTP Server (TLS) id 8.2.254.0;
	Tue, 9 Nov 2010 11:05:49 -0700
Message-ID: <4CD98D69.5020003@intel.com>
Date: Tue, 9 Nov 2010 10:05:29 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101027 Lightning/1.0b2 Thunderbird/3.1.6
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <017987BD9AB15445B9968338EC889BB1082088F12E@AUSX7MCPS301.AMER.DELL.COM>
In-Reply-To: <017987BD9AB15445B9968338EC889BB1082088F12E@AUSX7MCPS301.AMER.DELL.COM>
Subject: Re: Introduction and Request for HTTP Git Access
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
X-List-Received-Date: Tue, 09 Nov 2010 18:06:07 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11/09/2010 08:31 AM, Ryan_D_Phillips@Dell.com wrote:
> Good Day!
>
> My name is Ryan Phillips (irc: rphillips), a former Gentoo Linux
> Developer, currently a software developer architecting an embedded
> firmware solution on OE for my employer. With the release of Yocto,
> we are extremely interested in trying it out and possibly
> contributing to the project. My cohort working with me is Sean Hudson
> (irc: darknighte), and is someone who you may see contributions from
> as well.
>
> A major stumbling block we must work around is the restrictive
> firewall and git checkouts. We have found out the git-http-backend
> works extremely well, and are requesting this support on
> git.pokylinux.org. We suspect other people within larger corporations
> would have a similar problem, and by adding this support would help
> the community at large.
>
> I can help out in any way possible.

Hi Ryan,

I just added a page to our wiki that details instructions for getting up
and running with Poky behind a SOCKS proxy server:

https://wiki.yoctoproject.org/wiki/Working_Behind_a_Network_Proxy

Scott Garman


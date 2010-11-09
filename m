Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id AF6A84C810F0
	for <poky@yoctoproject.org>; Tue,  9 Nov 2010 09:32:40 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oA9FWeUE019089
	for <poky@yoctoproject.org>; Tue, 9 Nov 2010 07:32:40 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 9 Nov 2010 07:32:40 -0800
Received: from Macintosh-5.local ([172.25.36.228]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 9 Nov 2010 07:32:39 -0800
Message-ID: <4CD96997.60802@windriver.com>
Date: Tue, 09 Nov 2010 09:32:39 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.12) Gecko/20101027 Thunderbird/3.1.6
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4CD94ADD.2090607@mlbassoc.com>
In-Reply-To: <4CD94ADD.2090607@mlbassoc.com>
X-OriginalArrivalTime: 09 Nov 2010 15:32:40.0138 (UTC)
	FILETIME=[58276AA0:01CB8023]
Subject: Re: Another staging question
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
X-List-Received-Date: Tue, 09 Nov 2010 15:32:40 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/9/10 7:21 AM, Gary Thomas wrote:
> I've found another peculiarity with the new staging scheme(*).
> I have two target platforms, which for all intents and purposes
> are identical - both are Motorola MPC83xx (e300 core).  The only
> reason for two target machines is the kernel, plus platform specifics.
>
> I built totally from scratch (no SSTATE_MIRRORS) for target machine A.
> I then tested the staging by building in a new tree, again for machine A.
> This worked great - the build used mostly the staged packages.  About
> the only things that were rebuilt were the target specific packages.
>
> When I tried it for machine B, again in a totally empty directory, using
> the 'sstate-cache' directory of the first build as SSTATE_MIRRORS, all of
> the toolchain was rebuilt (GCC  and friends), but there was no need, the
> staged version should have been used.
>
> Is this expected?
> What could I do to fix it?

This tells me that the checksumming code found something that it believed 
changed the system behavior.  Likely a machine type or CFLAG or similar.

RP -- is there a way to determine "what changed [and why]" without re-running 
the build?  We found this invaluable when debugging the WR build system's 
checksumming, configuration files and packaging recipes.

--Mark

> Thanks
>
> (*) I'm very happy that the new staging is starting to work better.
> As is, it's a great leap forward;  I'm just hopeful that the remaining
> kinks can be worked out.  I'll be glad to help in this any way I can.
>



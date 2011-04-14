Return-Path: <madison@cisco.com>
Received: from sj-iport-1.cisco.com (sj-iport-1.cisco.com [171.71.176.70])
	by mx1.pokylinux.org (Postfix) with ESMTP id BA0F54C80AC6
	for <poky@yoctoproject.org>; Thu, 14 Apr 2011 18:01:31 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=madison@cisco.com;
	x-dkim-adsp=none (insecure policy)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=cisco.com; i=madison@cisco.com; l=1184; q=dns/txt;
	s=iport; t=1302822091; x=1304031691;
	h=date:subject:from:to:message-id:in-reply-to:mime-version:
	content-transfer-encoding;
	bh=qdw53X73XDvoJh4fmHVWfhEm5+aF63apiTwOU8Jtags=;
	b=Xy4qilRIgiZMI+eRVyOtzx9sotHuGXpeH0Vzl7PzTAIOCnz7hWCN59d6
	RrXPVFmnfezlpIkXDtM1NCO7ZeTxti9bOvGEKyQKmCjI4voJN3IzdGf7w
	TRhORb9APDpf8fnio4Sr6dahtTs7u73w94z6+R/D4S3b0gjfUtiQJ9Nlr A=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: Ah0FAJV8p02rRDoJ/2dsb2JhbAClegJ3iG+eMpx+hW4EhVqIFYN6hXQ
X-IronPort-AV: E=Sophos;i="4.64,214,1301875200"; d="scan'208";a="430410636"
Received: from mtv-core-4.cisco.com ([171.68.58.9])
	by sj-iport-1.cisco.com with ESMTP; 14 Apr 2011 23:00:49 +0000
Received: from xbh-sjc-231.amer.cisco.com (xbh-sjc-231.cisco.com
	[128.107.191.100])
	by mtv-core-4.cisco.com (8.14.3/8.14.3) with ESMTP id p3EN0ntV021799;
	Thu, 14 Apr 2011 23:00:49 GMT
Received: from xmb-sjc-217.amer.cisco.com ([171.70.151.175]) by
	xbh-sjc-231.amer.cisco.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Thu, 14 Apr 2011 16:00:49 -0700
Received: from 128.107.159.176 ([128.107.159.176]) by
	xmb-sjc-217.amer.cisco.com ([171.70.151.175]) with Microsoft
	Exchange Server HTTP-DAV ; Thu, 14 Apr 2011 23:00:48 +0000
User-Agent: Microsoft-Entourage/12.28.0.101117
Date: Thu, 14 Apr 2011 16:00:35 -0700
From: Matt Madison <madison@cisco.com>
To: Joshua Lock <josh@linux.intel.com>, Poky Mailer <poky@yoctoproject.org>
Message-ID: <C9CCCAA3.415A9%madison@cisco.com>
Thread-Topic: [poky] Distro policy ?
Thread-Index: Acv698NCHDYePZAnnUmkHGawEI2EkA==
In-Reply-To: <1302817417.8711.2.camel@scimitar>
Mime-version: 1.0
X-OriginalArrivalTime: 14 Apr 2011 23:00:49.0517 (UTC)
	FILETIME=[CBEA09D0:01CBFAF7]
Subject: Re: Distro policy ?
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
X-List-Received-Date: Thu, 14 Apr 2011 23:01:32 -0000
Content-type: text/plain;
	charset="US-ASCII"
Content-transfer-encoding: 7bit

How about when it's the other way round -- you need to modify just the .inc
for your layer, and not the recipes that require/include them?  Should all
recipes in the core be changed to use the path name syntax to enable that?

Thanks,
-Matt


On 4/14/11 14:43 , "Joshua Lock" <josh@linux.intel.com> wrote:

> On Thu, 2011-04-14 at 21:44 +0200, Wolfgang Denk wrote:
>> HI,
>> 
>> we're trying to build our own distribution based on Yocto 1.0.  We
>> would like to push all modifications / extensions and our distro stuff
>> upstream into the mainline repository, but we are not sure what is the
>> best way to do this:
>> 
>> So far we have put our distro-related changes into a separate layer
>> but it seems that it was not so good idea: it looks like bitbake
>> can't include files from one layer to another and we have to copy
>> includes even if we don't want to change them.
> 
> You can you just have to use a path from the top of the BBPATH entry for
> the layer you're using, so in our meta-demo layer I've used entries
> like:
> 
> require recipes-graphics/clutter/clutter.inc
> 
> to use an inc file from meta in Poky.
> 
> Cheers,
> Joshua



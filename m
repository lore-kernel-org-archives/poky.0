Return-Path: <yanok@emcraft.com>
Received: from ocean.emcraft.com (ocean.emcraft.com [213.221.7.182])
	by mx1.pokylinux.org (Postfix) with ESMTP id 34EA74C8008C
	for <poky@pokylinux.org>; Wed,  9 Feb 2011 17:43:17 -0600 (CST)
Received: from localhost ([127.0.0.1] helo=[IPv6:::1])
	by ocean.emcraft.com with esmtp (Exim 4.71)
	(envelope-from <yanok@emcraft.com>)
	id 1PnJgo-0008A6-MO; Thu, 10 Feb 2011 02:43:14 +0300
Message-ID: <4D532693.9080908@emcraft.com>
Date: Thu, 10 Feb 2011 02:43:15 +0300
From: Ilya Yanok <yanok@emcraft.com>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 6.1; ru;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <1297196798-23779-1-git-send-email-yanok@emcraft.com>
	<1297196798-23779-2-git-send-email-yanok@emcraft.com>
	<4D52D11C.50904@linux.intel.com> <4D531C1C.3020003@emcraft.com>
	<4D531D96.7060707@linux.intel.com> <4D532261.8090606@emcraft.com>
	<4D532562.9080403@linux.intel.com>
In-Reply-To: <4D532562.9080403@linux.intel.com>
Cc: poky@pokylinux.org
Subject: Re: [PATCH 2/3] u-boot: add LIC_FILES_CHKSUM
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
X-List-Received-Date: Wed, 09 Feb 2011 23:43:17 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi Darren,

10.02.2011 2:38, Darren Hart wrote:
> Hrm, this appears to be a problem on my end - I sent email from a build
> system which I thought was configured properly, the mail did make it to
> me... but I don't see it on the archives either. Thanks for pointing
> that out.
>
> The patches are the top two here:
>
> http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/uboot

Thanks! So the policy is "LIC_FILES_CHKSUM should be near SRC_URI", right?

Regards, Ilya.


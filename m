Return-Path: <holger@freyther.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5ACBE00B5D; Mon, 12 May 2014 06:58:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
X-Greylist: delayed 465 seconds by postgrey-1.32 at yocto-www;
	Mon, 12 May 2014 06:57:53 PDT
Received: from mail.sysmocom.de (unknown [144.76.43.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63BC4E00985
	for <poky@yoctoproject.org>; Mon, 12 May 2014 06:57:53 -0700 (PDT)
Received: from sangmingze-mail.local (220-133-152-71.HINET-IP.hinet.net
	[220.133.152.71])
	by mail.sysmocom.de (Postfix) with ESMTPSA id C167C573AE;
	Mon, 12 May 2014 13:57:51 +0000 (UTC)
Received: from ich by sangmingze-mail.local with local (Exim 4.82)
	(envelope-from <holger@freyther.de>)
	id 1Wjqjo-0007MJ-A0; Mon, 12 May 2014 15:57:52 +0200
Date: Mon, 12 May 2014 15:57:52 +0200
From: Holger Hans Peter Freyther <holger@freyther.de>
To: "Mehaffey, John" <John_Mehaffey@mentor.com>
Message-ID: <20140512135752.GY26057@xiaoyu.lan>
References: <20140331205817.GA4987@xiaoyu.lan>
	<371E240E6FC1D44DA5E51EE9DCDCB784DD534E29@NA-MBX-03.mgc.mentorg.com>
MIME-Version: 1.0
In-Reply-To: <371E240E6FC1D44DA5E51EE9DCDCB784DD534E29@NA-MBX-03.mgc.mentorg.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: ARM /proc/cpu/alignment with systemd images in dora
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 12 May 2014 13:58:01 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Mar 31, 2014 at 10:15:58PM +0000, Mehaffey, John wrote:

Hi John,

> The proper way to integrate this into systemd is to create a unit file. What must be run before alignment.sh? what things depend on it?
> Then depend on it from the proper targets. 
> 
> The workaround you suggest runs the risk of incorrect ordering as things migrate from SysV init.

one can easily argue about what is the "proper" way. The "default" with
systemd images on a ARMv5 is that unaligned memory access will be ignored
while it used to be fixed-up.

Is this considered a regression by the OE-core/Poky developers? For
this image generation of our BTS images we are using the patch I have
proposed. Creating a cpu-alignment.service is not a priority for us
right now.


cheers
	holger



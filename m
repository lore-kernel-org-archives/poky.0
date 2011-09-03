Return-Path: <glep-poky@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8DE9E011D3
	for <poky@pokylinux.org>; Sat,  3 Sep 2011 13:02:13 -0700 (PDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <glep-poky@m.gmane.org>) id 1QzwPs-0007xg-2w
	for poky@pokylinux.org; Sat, 03 Sep 2011 22:02:12 +0200
Received: from p578b5e99.dip0.t-ipconnect.de ([87.139.94.153])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Sat, 03 Sep 2011 22:02:12 +0200
Received: from gmane by p578b5e99.dip0.t-ipconnect.de with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Sat, 03 Sep 2011 22:02:12 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: poky@pokylinux.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Sat, 03 Sep 2011 23:01:52 +0300
Organization: Reliable Embedded Systems
Message-ID: <j3u13i$4rh$1@dough.gmane.org>
References: <4E5D200B.20209@mlbassoc.com> <j3sv23$rbe$1@dough.gmane.org>
	<DCF653D9-527C-49EA-8689-40A4820B2FB5@dominion.thruhere.net>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: p578b5e99.dip0.t-ipconnect.de
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.20) Gecko/20110805 Thunderbird/3.1.12
In-Reply-To: <DCF653D9-527C-49EA-8689-40A4820B2FB5@dominion.thruhere.net>
Subject: Re: Debugging udev
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: gmane@reliableembeddedsystems.com
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 03 Sep 2011 20:02:14 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi Koen,

On 09/03/2011 08:02 PM, Koen Kooi wrote:
> 
> Op 3 sep. 2011, om 12:20 heeft Robert Berger het volgende geschreven:
>>
>> *) DEVTMPFS

...

> 
> That's actually mandatory for recent versions of udev (164 is quite old already). Recent udevs only take care of the policy stuff, devnodes are handled by the kernel.

Thanks for pointing this out, I was not aware of it.
Do you have any idea if mdev from busybox is going to move also along
those lines providing only policy stuff and letting the kernel do the
devnodes? As an incentive mdev it could be even smaller.

Regards,

Robert


..."Nothing ever becomes real until it is experienced." - John Keats

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1




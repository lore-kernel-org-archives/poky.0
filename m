Return-Path: <saul.wold@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6BC074C810C0
	for <poky@lists.pokylinux.org>; Wed,  3 Nov 2010 10:36:06 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 03 Nov 2010 08:36:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,289,1286175600"; d="scan'208";a="344141917"
Received: from unknown (HELO [10.255.12.198]) ([10.255.12.198])
	by azsmga001.ch.intel.com with ESMTP; 03 Nov 2010 08:35:57 -0700
Message-ID: <4CD1815D.8050105@intel.com>
Date: Wed, 03 Nov 2010 08:35:57 -0700
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <4CD16A8E.7090100@mlbassoc.com>
In-Reply-To: <4CD16A8E.7090100@mlbassoc.com>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Inconsistent timestamp use
X-BeenThere: poky@pokylinux.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.pokylinux.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/poky>,
	<mailto:poky-request@pokylinux.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/poky>
List-Post: <mailto:poky@pokylinux.org>
List-Help: <mailto:poky-request@pokylinux.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/poky>,
	<mailto:poky-request@pokylinux.org?subject=subscribe>
X-List-Received-Date: Wed, 03 Nov 2010 15:36:06 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/03/2010 06:58 AM, Gary Thomas wrote:
> The Poky root file system (init scripts) has a mechanism for
> supporting systems without a working hardware [time of day] clock.
> It seems that this has suffered some rot recently and is now
> quite inconsistent:
>     * rootfs_update_timestamp() uses a different format for the time stamp
>     * the init scripts look for /etc/timestamp2, not /etc/timestamp which
>       is created with the image
>
> The attached patch makes this consistent and the system clock now works
> much better (about as good as a machine without a hardware clock can!)
>

Hi Gary,

This is a good change for the smaller images that use the busybox date 
function, but will break images that use the real date command. 
Unfortunately, they happen to use different formats for setting the time 
and date.

It may be that we need 2 timestamp files, one for a busybox system and a 
second for the standard date command and then extend the check in the 
init scripts to figure out which date we are using currently.

Sau!


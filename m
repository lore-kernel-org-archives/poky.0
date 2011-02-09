Return-Path: <yanok@emcraft.com>
Received: from ocean.emcraft.com (ocean.emcraft.com [213.221.7.182])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3898A4C8008C
	for <poky@pokylinux.org>; Wed,  9 Feb 2011 17:48:48 -0600 (CST)
Received: from localhost ([127.0.0.1] helo=[IPv6:::1])
	by ocean.emcraft.com with esmtp (Exim 4.71)
	(envelope-from <yanok@emcraft.com>)
	id 1PnJm9-0008BD-Eb; Thu, 10 Feb 2011 02:48:45 +0300
Message-ID: <4D5327DE.7050007@emcraft.com>
Date: Thu, 10 Feb 2011 02:48:46 +0300
From: Ilya Yanok <yanok@emcraft.com>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 6.1; ru;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <1297196798-23779-1-git-send-email-yanok@emcraft.com>
	<1297196798-23779-3-git-send-email-yanok@emcraft.com>
	<4D52D210.6070905@linux.intel.com> <4D53216D.4010908@emcraft.com>
	<4D53249E.9030606@linux.intel.com>
In-Reply-To: <4D53249E.9030606@linux.intel.com>
Cc: poky@pokylinux.org
Subject: Re: [PATCH 3/3] u-boot: compile with -O2 on PowerPC
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
X-List-Received-Date: Wed, 09 Feb 2011 23:48:48 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi Darren,

10.02.2011 2:34, Darren Hart wrote:
>> Then I think it's a bad idea to remove -Os everywhere: U-Boot really
>> wants to be built with -Os optimization so we might want to change
>> optimization level to -O2 only for targets where it's absolutely
>> required. Actually I was able to build and successfully run U-Boot on
>> beagleboard with -Os so it doesn't look like it's completely broken on
>> ARM.
>
> Interesting - is this using the current recipe in poky? It was building
> for the beagleboard that I hit the bug which caused me to clear -Os from
> the EXTRA_OEMAKE arguments.

I'm using slightly outdated Poky tree (commit 4cd1118) with some my 
additions and my own U-Boot 2011.03-rc1 recipe (nothing special, I've 
just changed SRC_URI and supported machine targets). I'll try to rebase 
to master and retest in a couple of days.

Regards, Ilya.


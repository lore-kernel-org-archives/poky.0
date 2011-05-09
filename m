Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id D73CF4C80578
	for <poky@pokylinux.org>; Mon,  9 May 2011 13:07:36 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 09 May 2011 11:07:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,341,1301900400"; d="scan'208";a="744595315"
Received: from doubt.jf.intel.com (HELO [10.7.199.57]) ([10.7.199.57])
	by orsmga001.jf.intel.com with ESMTP; 09 May 2011 11:07:36 -0700
Message-ID: <4DC82D68.5060306@linux.intel.com>
Date: Mon, 09 May 2011 11:07:36 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: mark hubrich <meistro57@gmail.com>
References: <BANLkTinfoCb5v3d3s=VWHkuUhJOGiK6baQ@mail.gmail.com>
In-Reply-To: <BANLkTinfoCb5v3d3s=VWHkuUhJOGiK6baQ@mail.gmail.com>
Cc: poky@pokylinux.org
Subject: Re: Poky display on beagleboard xm
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
X-List-Received-Date: Mon, 09 May 2011 18:07:37 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 05/09/2011 11:01 AM, mark hubrich wrote:
> I built bernard for my xm and I'm having a tough time getting a display
> working. I read in another post that poky is great if you dont need a
> display.  Is there a work around to get a display going?

Hi Mark,

Beagleboard xM support in the Yocto Project at the moment is very
minimal. It has boot, networking, audio, and a text console. If you need
more than that _right_ _now_, I suggest you take a look at Angstrom.

I have it on my todo list to get full support for the BBxM into at least
the Yocto kernel and u-boot recipes. Current timeframe for this is on
the Yocto 1.1 Schedule for May 20:

https://wiki.yoctoproject.org/wiki/Yocto_1.1_Schedule

Thanks,

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel


Return-Path: <dvhart@linux.intel.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 39F1B4C80BCF
	for <poky@lists.pokylinux.org>; Wed, 10 Nov 2010 11:38:45 -0600 (CST)
Received: by pug.o-hand.com (Postfix)
	id 7010812EC2B1; Wed, 10 Nov 2010 12:15:21 -0600 (CST)
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by pug.o-hand.com (Postfix) with ESMTP id 3428A12EC1F4
	for <poky@o-hand.com>; Wed, 10 Nov 2010 12:15:21 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 10 Nov 2010 09:38:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,178,1288594800"; d="scan'208";a="625464788"
Received: from doubt.jf.intel.com (HELO [10.24.5.209]) ([10.24.5.209])
	by fmsmga002.fm.intel.com with ESMTP; 10 Nov 2010 09:38:42 -0800
Message-ID: <4CDAD8A1.6050401@linux.intel.com>
Date: Wed, 10 Nov 2010 09:38:41 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101027 Lightning/1.0b2 Thunderbird/3.1.6
MIME-Version: 1.0
To: Adam Saleh <adamthecamper@gmail.com>
References: <AANLkTimhDA7iuBkedMY-Q64n38Wc861ymKe-hrH6cg2k@mail.gmail.com>
In-Reply-To: <AANLkTimhDA7iuBkedMY-Q64n38Wc861ymKe-hrH6cg2k@mail.gmail.com>
Cc: poky@o-hand.com
Subject: Re: How much space does poky need?
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
X-List-Received-Date: Wed, 10 Nov 2010 17:38:47 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 11/10/2010 09:06 AM, Adam Saleh wrote:
> Hello,
>
> I am making myself a poky-build server, and I remember that when in
> use, build system with all downloaded and compiled packages could take
> up a quite a lot of space (several gigs). Unfortunately, I don§t
> remember how many.


The Yocto Quick Start 
(http://www.yoctoproject.org/docs/yocto-quick-start/yocto-project-qs.html) 
provides some guidance here. If you were building for just one 
architecture, I suggest allocating at least 100GB for builds.


> Could you advise me how large partition should I set for the
> enviroment? I plan on building mainly qemu-x86 and qemu-arm targets.

2 archs, I'd start with 200GB.

-- 
Darren Hart
Yocto Linux Kernel


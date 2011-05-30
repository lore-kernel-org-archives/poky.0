Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 68B094C80263
	for <poky@yoctoproject.org>; Mon, 30 May 2011 01:32:28 -0500 (CDT)
Received: by wwd20 with SMTP id 20so3399035wwd.11
	for <poky@yoctoproject.org>; Sun, 29 May 2011 23:32:27 -0700 (PDT)
Received: by 10.216.152.193 with SMTP id d43mr4412874wek.53.1306737147034;
	Sun, 29 May 2011 23:32:27 -0700 (PDT)
Received: from [172.20.0.96] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id c51sm2277272wek.23.2011.05.29.23.32.25
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sun, 29 May 2011 23:32:26 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1084)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4DDAEBA4.5090601@linux.intel.com>
Date: Mon, 30 May 2011 08:32:28 +0200
Message-Id: <22F82A9E-907B-47F6-8F82-9A27721782A0@dominion.thruhere.net>
References: <BANLkTik3e_YZfJrwb7xkM264HhCbbHg5cg@mail.gmail.com>
	<4DDAEBA4.5090601@linux.intel.com>
To: "poky@yoctoproject.org Project" <poky@yoctoproject.org>
X-Mailer: Apple Mail (2.1084)
Subject: Re: How to Enable OMAP3 SGX MODULES on BEAGLEBOARD
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
X-List-Received-Date: Mon, 30 May 2011 06:32:29 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit


Op 24 mei 2011, om 01:20 heeft Darren Hart het volgende geschreven:

> 
> 
> On 05/23/2011 05:15 AM, Akshat Saha wrote:
>> Hi,
>> 
>> Can anyone guide me, how to enable powervr drivers on beagleboard. 
> 
> I am currently working on a Beagleboard refresh for the oe-core and
> meta-yocto layers. I'm starting with u-boot, then the kernel, and will
> see what follows from there. Until that is complete, the best bet for
> full Beagleboard support is the angstrom layer.

You mean the meta-texasinstruments layer, right?


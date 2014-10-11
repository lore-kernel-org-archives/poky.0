Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F01C7E0078E; Sat, 11 Oct 2014 00:10:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F397E0076C
	for <poky@yoctoproject.org>; Sat, 11 Oct 2014 00:09:59 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	s9B79MxI010556; Sat, 11 Oct 2014 08:09:22 +0100
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id Mw4nGMmgobx2; Sat, 11 Oct 2014 08:09:22 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	s9B79KUm010553
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Sat, 11 Oct 2014 08:09:21 +0100
Message-ID: <1413011394.7562.6.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Tom Zanussi <tom.zanussi@linux.intel.com>
Date: Sat, 11 Oct 2014 08:09:54 +0100
In-Reply-To: <cover.1412997968.git.tom.zanussi@linux.intel.com>
References: <cover.1412997968.git.tom.zanussi@linux.intel.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] yocto-bsp 1.7 update
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
X-List-Received-Date: Sat, 11 Oct 2014 07:10:08 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2014-10-10 at 22:32 -0500, Tom Zanussi wrote:
> This is the set of yocto-bsp updates adding support for the 3.17 kernel.
> 
> It's been extensively tested, both build and boot for all platforms
> (boot for all qemu platforms using sato and minimal and x86/x86_64
> sato/minimal on real hardware (the only hardware I have and can boot
> test)).

Given we have to back qemu off 3.17 back to 3.14 due to the touchscreen
issues, do we want this in the release or is this intended for post 1.7?

Cheers,

Richard



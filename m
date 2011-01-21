Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id CA9914C80BD4
	for <poky@yoctoproject.org>; Thu, 20 Jan 2011 18:13:59 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0L0FnrP010868; Fri, 21 Jan 2011 00:15:49 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id Zo-t1rS8R5+P; Fri, 21 Jan 2011 00:15:48 +0000 (GMT)
Received: from [192.168.1.45] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0L0Fhxr010864
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Fri, 21 Jan 2011 00:15:45 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Nitin A Kamble <nitin.a.kamble@intel.com>
In-Reply-To: <cover.1295304080.git.nitin.a.kamble@intel.com>
References: <cover.1295304080.git.nitin.a.kamble@intel.com>
Date: Fri, 21 Jan 2011 00:13:43 +0000
Message-ID: <1295568823.14388.28132.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 00/12] gcc dso linking change, and related fixes
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
X-List-Received-Date: Fri, 21 Jan 2011 00:14:00 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Nitin,

On Mon, 2011-01-17 at 14:45 -0800, Nitin A Kamble wrote:
> This commit set, changes the dso linking to avoid automatic linking of 
> shared libraries. This caused, as expected, linking of few recipes to fail.
> All these recipes are fixed by specifying the linked libraries explicitely.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: nitin/dso_linking_change
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=nitin/dso_linking_change
> 
> Thanks,
>     Nitin A Kamble <nitin.a.kamble@intel.com>

We've taken these into master but I'm a bit worried and we have some
breakage still. Specifically, systemtap failed with a pthread linkage
failure.

I couldn't find systemtap using pthreads anywhere that would cause the
error so I hit google. I found:

http://lists.fedoraproject.org/pipermail/devel/2010-January/129131.html
http://lists.fedoraproject.org/pipermail/devel/2010-January/129134.html

So I'm wondering if we should disable the gcc patch until Fedora sort
this out. Could you look into this and see if there are any patches
fixing this properly out there yet?

It does clearly indicate that adding -lpthread to the makefile for
systemtap would be wrong. I'm hoping that there weren't any other cases
like this?

Cheers,

Richard






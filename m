Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8A90D4C81065
	for <poky@yoctoproject.org>; Sat, 22 Jan 2011 03:00:40 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0M92T6H010460; Sat, 22 Jan 2011 09:02:30 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id Zid3hnc1P-QG; Sat, 22 Jan 2011 09:02:29 +0000 (GMT)
Received: from [192.168.1.45] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0M92KJ6010455
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Sat, 22 Jan 2011 09:02:23 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Saul Wold <saul.wold@intel.com>
In-Reply-To: <4D3A563B.5080206@intel.com>
References: <cover.1295632514.git.nitin.a.kamble@intel.com>
	<4D3A563B.5080206@intel.com>
Date: Sat, 22 Jan 2011 09:00:14 +0000
Message-ID: <1295686815.14388.34344.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/3] revert some of the dso linking changes got fixed	by newer linker
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
X-List-Received-Date: Sat, 22 Jan 2011 09:00:41 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Saul,

On Fri, 2011-01-21 at 19:59 -0800, Saul Wold wrote:
> On 01/21/2011 09:59 AM, Nitin A Kamble wrote:
> > The newer linker from binutils 2.21 has a fix which avoids linking errors with
> > weak symbols like pthread_cancel, when --no-add-as-needed parameter is passed
> > to the linker.
> >
> Nitin,
> 
> Seems there is a problem with Mutter and the DSO changes.
> 
>   arm-poky-linux-gnueabi-libtool: link: cannot find the library 
> `/usr/lib/libpangocairo-1.0.la' or unhandled argument 
> `/usr/lib/libpangocairo-1.0.la'
> make[4]: *** [wm-tester] Error 1
> make[4]: Leaving directory 
> `/intel/poky/distro/build/tmp/work/armv5te-poky-linux-gnueabi/mutter-2.28.1+git0+c96345dd81176f171c2d15dd9d5c5b20f334f842-r18/git/src/wm-tester'
> make[3]: *** [all-recursive] Error 1
> make[3]: Leaving directory 
> `/intel/poky/distro/build/tmp/work/armv5te-poky-linux-gnueabi/mutter-2.28.1+git0+c96345dd81176f171c2d15dd9d5c5b20f334f842-r18/git/src'
> make[2]: *** [all] Error 2
> make[2]: Leaving directory 
> `/intel/poky/distro/build/tmp/work/armv5te-poky-linux-gnueabi/mutter-2.28.1+git0+c96345dd81176f171c2d15dd9d5c5b20f334f842-r18/git/src'
> make[1]: *** [all-recursive] Error 1
> make[1]: Leaving directory 
> `/intel/poky/distro/build/tmp/work/armv5te-poky-linux-gnueabi/mutter-2.28.1+git0+c96345dd81176f171c2d15dd9d5c5b20f334f842-r18/git'
> make: *** [all] Error 2
> 
> Please investigate,


This looks more like a libtool issue, possibly introduced by the recent
libtool changes. I think this happens in an incremental build when you
have half a sysroot of "old" style libs and mix in the new style. I
suspect Scott mainly tested those from scratch. Does a cleanall of
pango/cairo fix this? If so, we probably need to bump the version number
that governs sysroots (and the sstate version number too).

Cheers,

Richard



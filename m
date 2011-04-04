Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id AC68C4C80044
	for <poky@yoctoproject.org>; Mon,  4 Apr 2011 17:46:05 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p34Mk2vB022884;
	Mon, 4 Apr 2011 23:46:02 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 22763-02; Mon,  4 Apr 2011 23:45:58 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p34MjtlY022878
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 4 Apr 2011 23:45:56 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Scott Garman <scott.a.garman@intel.com>
In-Reply-To: <cover.1301956134.git.scott.a.garman@intel.com>
References: <cover.1301956134.git.scott.a.garman@intel.com>
Date: Mon, 04 Apr 2011 23:45:51 +0100
Message-ID: <1301957151.24596.413.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/3] Fixes for doc-related build failures, v2
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
X-List-Received-Date: Mon, 04 Apr 2011 22:46:06 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-04-04 at 15:30 -0700, Scott Garman wrote:
> From: Scott Garman <scott.a.garman@intel.com>
> 
> Hi Saul,
> 
> Paul identified the root cause of the build failures occurring with
> the documentation related packages. The problem is that functions
> appended to SSTATEPOSTINSTFUNCS can now be run for *all* tasks.
> These commits ensure the sysroot-related operations only happen
> during the do_populate_sysroot tasks.
> 
> This fixes [YOCTO #948] (Thank you Dexuan for the bug report).
> 
> v2 of this pull request - tested for both builds from scratch and
> from sstate.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: sgarman/docbook-fix
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/docbook-fix
> 
> Thanks,
>     Scott Garman <scott.a.garman@intel.com>
> ---
> 
> 
> Scott Garman (3):
>   docbook-sgml-dtd-native.inc: run install-catalog only during
>     do_populate_sysroot
>   openjade-native: run install-catalog only during do_populate_sysroot
>   docbook-dsssl-stylesheets-native: run install-catalog only during
>     do_populate_sysroot

Merged to master, thanks!

Richard



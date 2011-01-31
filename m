Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2AE974C8006D
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 03:10:29 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0V9CTSv019451; Mon, 31 Jan 2011 09:12:29 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id xFqP0V2mLRs9; Mon, 31 Jan 2011 09:12:29 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0V9CQQW019447
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Mon, 31 Jan 2011 09:12:28 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Tian, Kevin" <kevin.tian@intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504E6294E376@shsmsx502.ccr.corp.intel.com>
References: <625BA99ED14B2D499DC4E29D8138F1504E6294E376@shsmsx502.ccr.corp.intel.com>
Date: Mon, 31 Jan 2011 09:10:10 +0000
Message-ID: <1296465010.13501.12040.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: summary about recent do_populate_sdk failures
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
X-List-Received-Date: Mon, 31 Jan 2011 09:10:30 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-01-31 at 15:18 +0800, Tian, Kevin wrote:
> Lianhao and I are looking into recent master instability, more specifically starting
> from reported do_populate_sdk failures. There have been 3 problems revealed:
> 
> 1) unexpected do_package/do_package_write* rebuild
> 2) change PACKAGE_CLASSES causes more do_package rebuilds
> 3) do_populate_sdk finally exits due to eglibc not matching expected version
> 
> We've root caused 1), and the patch has been sent out:
> http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/commit/?h=tk/master1&id=68ad8ead1a83161afb8c2a65a28dfc205181d80e
> 
> We're not sure whether 3) is caused by too many unexpected do_package rebuilds,
> and is now testing whether 3) will disappear with the fix for 1). We'll also look into
> original failure to see whether real cause of 3) may be hidden with the fix.

I think there is a race and we need to adjust the packaging process for
libgcc/libc as I mentioned in the other email.

To reproduce I'm guessing something like:

"bitbake libgcc virtual/libc -c package -f" will consistently break
rootfs builds after that command is run.

(This relies on the fact that libc will take much longer than libgcc to
package.)

Cheers,

Richard







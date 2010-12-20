Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 723344C80039
	for <poky@pokylinux.org>; Mon, 20 Dec 2010 17:00:29 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBKN0i8F015661; Mon, 20 Dec 2010 23:00:45 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 7BX0znhEZrfU; Mon, 20 Dec 2010 23:00:44 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBKN0eSW015656
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Mon, 20 Dec 2010 23:00:42 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Scott Garman <scott.a.garman@intel.com>
In-Reply-To: <4D0AF87A.7060201@intel.com>
References: <4D0ABF1C.6090706@intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5F40984C@shsmsx502.ccr.corp.intel.com>
	<4D0AC7D8.8080001@intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5F409868@shsmsx502.ccr.corp.intel.com>
	<4D0ACB43.8050909@intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5F409997@shsmsx502.ccr.corp.intel.com>
	<4D0AF87A.7060201@intel.com>
Date: Mon, 20 Dec 2010 22:58:56 +0000
Message-ID: <1292885936.25087.5158.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: Shared state prebuild copy bug report (bug #602)
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
X-List-Received-Date: Mon, 20 Dec 2010 23:00:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-12-16 at 21:43 -0800, Scott Garman wrote:
> On 12/16/2010 08:47 PM, Tian, Kevin wrote:
> >
> > I assume that you're not using the latest master, correct? I'm asking here as I
> > encountered other errors earlier than this one due to a 'noexec' change from RP
> > yesterday, and thus your info would confirm my guess. :-)
> 
> No, I managed to do this test with today's commit 
> (ac4364698618a541624d1a00f27b638815e5a3f5).
> 
> > Then after revert that commit, now I do reproduce this with same error as yours,
> > except that it happens on git-native. This is understood as I think all perl related
> > scripts will hit this issue.
> 
> This will impact a ton of recipes as perl is used heavily by autotools.
> 
> > However I haven't found which bit contains that bad link pointing to original build
> > directory. I checked tmp/sysroot/i686-linux/usr/lib/perl/5.8.8/Config.pm, where
> > all hard paths are changed to new build directory correctly... :/
> 
> Thanks for looking into this.

I've committed a workaround for this in the form of:

http://git.pokylinux.org/cgit.cgi/poky/commit/?h=master&id=9975c00c1a6a9ae1c39678dec0986f4c62418c96

which means perl-native will always be rebuilt but at least builds
should then work.

I've left bug #602 open as a hint to investigate a proper fix for this,
maybe by setting an environment variable and/or a wrapper script.

At present the aim is to get the sstate packages working, then we can
look at details like this.

Cheers,

Richard



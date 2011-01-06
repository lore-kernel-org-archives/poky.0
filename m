Return-Path: <ke.yu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 99D914C80B70
	for <poky@yoctoproject.org>; Thu,  6 Jan 2011 01:06:21 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 05 Jan 2011 23:06:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,282,1291622400"; d="scan'208";a="643974613"
Received: from unknown (HELO localhost) ([10.238.153.102])
	by fmsmga002.fm.intel.com with ESMTP; 05 Jan 2011 23:06:19 -0800
Date: Thu, 6 Jan 2011 15:14:18 +0800
From: Yu Ke <ke.yu@intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20110106071418.GB20168@kyu3-hedt>
References: <D094D4EC-55AF-4B52-A011-60EDCD5A46A6@dominion.thruhere.net>
	<4D20B2B2.3090602@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <4D20B2B2.3090602@mlbassoc.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: poky@yoctoproject.org
Subject: Re: PREMIRRORS in yocto, do they actually work?
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
X-List-Received-Date: Thu, 06 Jan 2011 07:06:21 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Jan 02, 10:15, Gary Thomas wrote:
> On 01/02/2011 10:08 AM, Koen Kooi wrote:
> >Hi,
> >
> >I would like to have the fetchter try my PREMIRROS first before trying to fetch from git. In OE I have the following in a bbclass:
> >
> >PREMIRRORS_append () {
> >git://.*/.* http://www.angstrom-distribution.org/unstable/sources/
> >}
> >
> >When used in OE that works, but in yocto it doesn't. So I tried to do it poky style in a .inc:
> >
> >PREMIRRORS_append = "\
> >git://.*/.*   http:/www.angstrom-distribution.org/sources/ \n"
> >
> >Which also doesn't work since it doesn't try to fetch from there, but it does mention "http:/www.angstrom-distribution.org/sources/" in the fetch error message when git read-tree fails.
> >
> >So my question: how do I make it work in yocto like it works in OE?
> 
> I too have been struggling with this as I'd like to have
> a local repository to hold the current source set.  Sadly,
> as you've observed, it doesn't work, at least not as expected.

I've tried to use file:///some/dir as PREMIRROR, and found it does has issue. The main reason is that the local.py fetcher does not do real copy in go() method. Although it make sense in normal fetch case, it does cause trouble in try_mirror() case.

I don't have simple idea to address this issue yet and I will take care of it in the coming fetcher change. As a quick workaround, could you try this approach: use http://local/some/dir as PREMIRROR? e.g. if you use /opt/source as mirror, you can add to meta/conf/distro/poky.conf:
PREMIRRORS_append = "\
git://.*/.*   http://local/opt/source/ \n \
svn://.*/.*   http://local/opt/source/ \n \
...
"

in this case, wget.py fetcher will be used, and it works fine in try_mirror() case. Also the /opt/source can be read-only.

Regards
Ke

> 
> What error(s) do you get when a GIT based package needs to
> be fetched?
> 
> -- 
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


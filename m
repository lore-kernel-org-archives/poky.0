Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id DF7EE4C800AC
	for <poky@lists.pokylinux.org>; Thu, 24 Mar 2011 12:07:16 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 974EF166028A; Thu, 24 Mar 2011 11:07:16 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id CCAB61660230;
	Thu, 24 Mar 2011 11:07:14 -0600 (MDT)
Message-ID: <4D8B7A42.1080503@mlbassoc.com>
Date: Thu, 24 Mar 2011 11:07:14 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Poky <poky@lists.pokylinux.org>
References: <4D8B73ED.1090305@mlbassoc.com>
In-Reply-To: <4D8B73ED.1090305@mlbassoc.com>
Subject: Re: PREFERRED_VERSION confusion
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
X-List-Received-Date: Thu, 24 Mar 2011 17:07:17 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/24/2011 10:40 AM, Gary Thomas wrote:
> I'm having trouble selecting between different versions of a package
> (in this case virtual/kernel). I have these recipes
> .../linux/linux-am_2.6.31.bb
> .../linux/linux-am_2.6.32.bb
> .../linux/linux-am_2.6.37.bb
> with some associated patch files for various platforms I'm building.
>
> In my DISTRO.conf, I have this:
> PREFERRED_PROVIDER_virtual/kernel = "linux-am"
> which indeed selects from my set of kernel recipes. However, I
> can't seem to get it to be able to build from one of the older
> recipes - it always chooses the 2.6.37 version which causes much
> confusion (some of my targets have only been ported to older kernels)
>
> In MACHINE.conf, I have this line
> PREFERRED_VERSION_linux-am = "2.6.31"
> I get warnings such as
> NOTE: preferred version 2.6.31 of linux-am not available (for item virtual/kernel)
> NOTE: preferred version 2.6.31 of linux-am not available (for item kernel-image)
> NOTE: preferred version 2.6.31 of linux-am not available (for item kernel-base)
>
> Why? Also, it falls apart like this (my actual machine is called mx25p80 and there
> is only a patch for the 2.6.31 version .../linux/linux-am-2.6.31/mx25p80/mx25p80.patch:
> NOTE: Running task 657 of 829 (ID: 4, /home/local/poky-amltd/meta-amltd/packages/linux/linux-am_2.6.31.bb, do_fetch)
> ERROR: Function 'Fetcher failure for URL: 'file://mx25p80.patch'. Unable to fetch URL file://mx25p80.patch from any source.' failed
> ERROR: Logfile of failure stored in: /home/local/mx25_poky/tmp/work/mx25p80-poky-linux-gnueabi/linux-am-2.6.37-r0/temp/log.do_fetch.6646
> Notice that even though it's executing linux-am_2.6.31.bb, it's looking in linux-am-2.6.37!!
>
> What am I missing? How do I get it to select only the 2.6.31 version?

Turns out this was stupid cockpit error :-(  My linux-am-2.6.31.bb recipe
was cloned from the linux-am-2.6.37.bb version and contained the line
   PV = "2.6.37"
Fixing this made it all happy.

Sorry for the noise.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------


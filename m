Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id AC3BC4C80263
	for <poky@yoctoproject.org>; Fri,  6 May 2011 23:01:29 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 06 May 2011 21:01:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,329,1301900400"; d="scan'208";a="639296114"
Received: from unknown (HELO [10.255.12.87]) ([10.255.12.87])
	by orsmga002.jf.intel.com with ESMTP; 06 May 2011 21:01:28 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
In-Reply-To: <BANLkTikX3sP7yTAkH0F70i2DAabrU9u+bw@mail.gmail.com>
References: <BANLkTikX3sP7yTAkH0F70i2DAabrU9u+bw@mail.gmail.com>
Date: Fri, 06 May 2011 23:01:22 -0500
Message-ID: <1304740882.2592.39.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: bitbake error in master ?
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
X-List-Received-Date: Sat, 07 May 2011 04:01:30 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-05-06 at 20:56 -0700, Bruce Ashfield wrote:
> Am I the only one seeing:
> 
> Traceback (most recent call last):
>   File "/home/bruce/poky/bitbake/bin//bitbake", line 34, in <module>
>     import bb
>   File "/home/bruce/poky/bitbake/lib/bb/__init__.py", line 74, in <module>
>     from bb import fetch2 as fetch
>   File "/home/bruce/poky/bitbake/lib/bb/fetch2/__init__.py", line 31,
> in <module>
>     import bb.data, bb.persist_data, bb.utils
>   File "/home/bruce/poky/bitbake/lib/bb/persist_data.py", line 29, in <module>
>     from bb.compat import total_ordering
> ImportError: No module named compat
> 
> Which appears to be triggered by:
> 
> commit 754d1c69839982b7cdd49839a398e688c0ad9a9b
> Author: Chris Larson <chris_larson@mentor.com>
> Date:   Mon Apr 4 09:36:45 2011 -0700
> 
>     persist_data: implement comparison, same as dict
> 
>     (Bitbake rev: 1190406c526c7bb7cf415867be83e0403812a7dd)
> 
>     Signed-off-by: Chris Larson <chris_larson@mentor.com>
>     Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> 
> -----
> 
> Since I haven't heard anyone else mention this, and it seems to be pretty
> fundamental .. I tend to suspect myself. But looking at the poky git
> repos for master shows me what I have on disk here.
> 
> I'll look at this again tomorrow, but just thought I'd ping the list, since
> this is stopping me from testing pretty much anything at the moment.
> 

I just saw this too, for now backed up to the last known good commit for
me, 72875493b8bbb5d6793380ee71c6bca4f438ca04, in case you need one...

Tom

> Cheers,
> 
> Bruce
> 
> 




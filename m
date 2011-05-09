Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1C6264C801BF
	for <poky@yoctoproject.org>; Mon,  9 May 2011 06:52:29 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p49BqRoY027053;
	Mon, 9 May 2011 12:52:27 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 26841-04; Mon,  9 May 2011 12:52:23 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p49BqKaG027047
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 9 May 2011 12:52:21 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Liping Ke <liping.ke@intel.com>
In-Reply-To: <cover.1304922517.git.liping.ke@intel.com>
References: <cover.1304922517.git.liping.ke@intel.com>
Date: Mon, 09 May 2011 12:52:19 +0100
Message-ID: <1304941939.30391.205.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/4][Image Creator]Put extra requested fields into different cache files
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
X-List-Received-Date: Mon, 09 May 2011 11:52:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Liping,

On Mon, 2011-05-09 at 14:39 +0800, Liping Ke wrote:
> Below four patches are for putting extra requested fields inito different
> cache files instead of using only on bb_cache.dat. Now image creator need
> extra three fields. And in the future, there might be more similar requests.
> For each extra requestor, we will save the requested fields data into a
> separate cache files so that those who don't need it will not be impacted
> with larger fields and large data files.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: lke/cache_impl
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lke/cache_impl
> 
> Thanks,
>     Liping Ke <liping.ke@intel.com>

These patches are good and I like the ultimate result but the patches
themselves could use some tweaks in the order they make changes. Ideally
changes need to be made in a way that each patch can stand on its own so
I could apply patches 1 and 2, leave 3 and 4 out and the code should
still work.

In this sense, the series should really be a set of patches which:

a) Adds "bitbake_mode" and allows UIs to define cache data
b) Adds the cache data to hob
c) Drops the cache data used only by hob from the core

I've also the following comments on the code in general:

a) Could we move the hob specific cache data from cache.py to hob.py. If
not, I'd like to understand why not and maybe address those issues. My
point is you shouldn't need to change cache.py to add extra cache data.

b) Could we rename "bitbake_mode" to "extracaches" or something?
"bitbake_mode" is a bit too generic and meaningless.

c) I was also wondering how hard it would be to make this an array and
allow more than one to be loaded? I'm thinking of the use case where we
may have more than one "UI" in future and configure things so the user
can switch between them without re-parsing.

Cheers,

Richard






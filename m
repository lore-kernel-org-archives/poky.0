Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5E5924C8026D
	for <poky@yoctoproject.org>; Wed, 27 Apr 2011 13:39:04 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 27 Apr 2011 11:39:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,275,1301900400"; d="scan'208";a="634941199"
Received: from unknown (HELO [10.255.13.15]) ([10.255.13.15])
	by orsmga002.jf.intel.com with ESMTP; 27 Apr 2011 11:39:03 -0700
From: Joshua Lock <josh@linux.intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Wed, 27 Apr 2011 11:39:03 -0700
References: <789F9655DD1B8F43B48D77C5D30659734C09DCDE@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <789F9655DD1B8F43B48D77C5D30659734C09DCDE@shsmsx501.ccr.corp.intel.com>
X-Mailer: Evolution 3.0.0 (3.0.0-1.fc15) 
Message-ID: <1303929543.2242.20.camel@scimitar>
Mime-Version: 1.0
Subject: Re: Processing extra field requested by bitbake -u in Cache
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
X-List-Received-Date: Wed, 27 Apr 2011 18:39:04 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-04-27 at 17:34 +0800, Ke, Liping wrote:
> Hi, all
> 
> I am looking @ bug 770 Add mechanism to enable UI's to request extra
> data be stored in the cache. We are now thinking about the possible
> solutions.

For people wishing to follow:
http://bugzilla.pokylinux.org/show_bug.cgi?id=770

> 
> There are two choices:
> 1. Store extra cache fields in a separated small cache file, so non-ui mode will only fetch the base cache file, if in ui-mode, it will load the extra small cache (with the extra 3 fields, such as summary)
>   Advantage: 1) Will 'not' change the cache invalidation mechanism. For non-ui mode, it will go the old path. If extra fields are required (ui-mode), we need to load the extra field into the memory.
>             2) disk file size is optimized
>   Disadvantage: cache code change will be big, since all data load/sync/ methods need to be modified.

Why must we change the invalidation mechanisms when having a separate
cache file per UI.

My thought is that we'll have a cache file name which encodes the UI and
then run the usual invalidation tests against that cache.

Say that the UI name is known by the cache and stored in variable
currentui we can achieve this by:

-        self.cachefile = os.path.join(self.cachedir, "bb_cache.dat")
+        self.cachefile = os.path.join(self.cachedir, "bb_cache_%s.dat"
% currentui)

Also, surely we *do* need alter the cache invalidation mechanisms for
multiple files, at least insofar as we must test more than one cache
file some times.

> 
> 2. Have two big cache files, one is for ui mode, one is for non-ui mode
>   Advantage: Code change will be a little smaller. When loading, if it's non-ui mode, load smaller cache file. Otherwise, load bigger cache file.  
>   Disadvantage: 1) Cache invalidation mechanism (timestamp) is broken. When mode switching, we need to invalidate all caches, reparsing, reloading time 30s.
>               s) disk file size is bigger. 2*original_size (2*6M)

I'm not sure that 6MB disk overhead is worth the code complexity
increase by having multiple cache files stitched together.

I am definitely keen to hear others opinions here.

Cheers,
Joshua
-- 
Joshua Lock
        Yocto Build System Monkey
        Intel Open Source Technology Centre




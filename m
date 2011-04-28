Return-Path: <josh@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9FDB64C80188
	for <poky@yoctoproject.org>; Wed, 27 Apr 2011 21:23:00 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 27 Apr 2011 19:23:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,277,1301900400"; d="scan'208";a="426815797"
Received: from unknown (HELO [10.255.13.20]) ([10.255.13.20])
	by azsmga001.ch.intel.com with ESMTP; 27 Apr 2011 19:22:59 -0700
From: Joshua Lock <josh@linux.intel.com>
To: "Ke, Liping" <liping.ke@intel.com>
Date: Wed, 27 Apr 2011 19:22:59 -0700
In-Reply-To: <789F9655DD1B8F43B48D77C5D30659734C09DE4D@shsmsx501.ccr.corp.intel.com>
References: <789F9655DD1B8F43B48D77C5D30659734C09DCDE@shsmsx501.ccr.corp.intel.com>
	<1303929543.2242.20.camel@scimitar>
	<789F9655DD1B8F43B48D77C5D30659734C09DE4D@shsmsx501.ccr.corp.intel.com>
X-Mailer: Evolution 3.0.0 (3.0.0-1.fc15) 
Message-ID: <1303957379.2481.21.camel@scimitar>
Mime-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
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
X-List-Received-Date: Thu, 28 Apr 2011 02:23:00 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-04-28 at 09:22 +0800, Ke, Liping wrote:
> > Why must we change the invalidation mechanisms when having a separate
> > cache file per UI.
> Hi, Josh
> 
> Considering the following usage sequence, ui 1 -> non-ui (made changes) 2 -> ui (made changes)  3 -> non-ui (made changes) 4
> 
> If we use option 1, no cache invalidation needed.

If there are changes you'll still need to invalidate the cache.
I guess you're trying  to show something like the following?

== Option 1 (addition cache file for extra fields)
launch gui
<make changes>
launch gui (cache rebuild)
use cli
<make changes>
use cli (cache rebuild)
launch gui
use cli
launch gui
<make changes>
launch gui (cache rebuild)
use cli

=> 3 cache rebuilds

== Option 2 (per ui cache files)
launch gui
<make changes>
launch gui (cache rebuild)
use cli
<make changes>
use cli (cache rebuild)
launch gui (cache rebuild)
use cli
launch gui
<make changes>
launch gui (cache rebuild)
use cli (cache rebuild)

=> 5 cache rebuilds

However I can't imagine people switching UI's this frequently.

> 
> But if we use option 2, we need invalidate cache each time. I collect some local feedback here, they said it's unbearable. 

What's unbearable? The cache rebuilding time?

I'm still not clear why we need to invalidate the cache each time we
switch UI's. The cache invalidation test is the same: if any of the
dependencies have been modified or the file doesn't exist build the
cache, else load the available cache. If we are using a per UI cache
file we just run the invalidation tests against a different file each
time the UI is changed. Or am I missing something here?

Regards,
Joshua
-- 
Joshua Lock
        Yocto Build System Monkey
        Intel Open Source Technology Centre



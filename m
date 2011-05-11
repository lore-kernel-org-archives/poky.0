Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4E7E04C80AE6
	for <poky@yoctoproject.org>; Wed, 11 May 2011 11:07:30 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4BG7Rln021611;
	Wed, 11 May 2011 17:07:27 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 21437-04; Wed, 11 May 2011 17:07:23 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4BG7M0p021605
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 11 May 2011 17:07:22 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Ke, Liping" <liping.ke@intel.com>
In-Reply-To: <789F9655DD1B8F43B48D77C5D30659734C510EFC@shsmsx501.ccr.corp.intel.com>
References: <cover.1304922517.git.liping.ke@intel.com>
	<1304941939.30391.205.camel@rex>
	<789F9655DD1B8F43B48D77C5D30659734C510EFC@shsmsx501.ccr.corp.intel.com>
Date: Wed, 11 May 2011 17:07:16 +0100
Message-ID: <1305130036.30391.391.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
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
X-List-Received-Date: Wed, 11 May 2011 16:07:30 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-05-10 at 09:26 +0800, Ke, Liping wrote:
> > These patches are good and I like the ultimate result but the patches
> > themselves could use some tweaks in the order they make changes. Ideally
> > changes need to be made in a way that each patch can stand on its own so
> > I could apply patches 1 and 2, leave 3 and 4 out and the code should
> > still work.
> > 
> > In this sense, the series should really be a set of patches which:
> > 
> > a) Adds "bitbake_mode" and allows UIs to define cache data
> > b) Adds the cache data to hob
> > c) Drops the cache data used only by hob from the core
> Yes, in general I want to do the same thing. Each patch in the serial will
> not break the current cs. Patch[1/4], patch[2/4]& patch [3/4] are for a) and b).
> But for c), because of the implantation algorithm I adopted, it's merged with
> extra cache data implementation (the biggest patch).

That's fine, your original series didn't seem to work quite like this
though and looked like I'd get failures if I only applied the early
patches from what I remember.

> > I've also the following comments on the code in general:
> > 
> > a) Could we move the hob specific cache data from cache.py to hob.py. If
> > not, I'd like to understand why not and maybe address those issues. My
> > point is you shouldn't need to change cache.py to add extra cache data.
> 
> you mean that we will have a separate ExtraCache (I guess hob or adt-installer should have the similar logic?)
> implementation file, which has similar functionality with cache.py? 
> Oh, I did not think of this implementation at all when implement. In my mind, change less code is the principle since
> this part of the code is the core of bitbake:)  If split, many codes in cache could be reused by both cache.py and hob.py?

I'm thinking that cache.py defines the class but the hob specific
definition using that class to extend the cache data should be part of
the hob codebase. In the future there may be external UIs calling into
this code and needing this functionality and I'd prefer them not to each
need to change cache.py.

> And also, if you think it is a must, could we split the task, for this phase, keep it in the same file. 
> And then refactory them in another patch later? Seems there're many tasks for image creator? Seems the schedule is
> tight?

If you don't think this is realistic in the time available, I might be
able to take a look at it.

> > b) Could we rename "bitbake_mode" to "extracaches" or something?
> > "bitbake_mode" is a bit too generic and meaningless.
> Sure. It's nice.
> 
> > c) I was also wondering how hard it would be to make this an array and
> > allow more than one to be loaded? I'm thinking of the use case where we
> > may have more than one "UI" in future and configure things so the user
> > can switch between them without re-parsing.
> > 
> Hi, Richard, actually user could have more than one data file. If we have autobuilder extra requests,
> we can easily extend with few codes: (just like patch 3)
> 1)define autobuilder_extra_fields,
> 2) declare autobuilder namedtuple class
> 3) add else in ExtraClassFactory for defining from_metadata.
> Then the bb_cacheautobuilder.dat will be loaded and processed. 
> Then there would be more than two cache data files (bb_cache.dat, bb_cachehob.dat, bb_cacheautobuilder.dat, etc).
> But each time when bitbake is running, only two files will be loaded/saved. (bb_cache.dat, bb_cachehob.dat)
> or (bb_cache.dat, bb_cacheautobuilder.dat). bitbake_mode are used for passing the parameters, 'hob' or 'autobuilder'?
> Is this what you mean?

No, I mean can we could pass:

bitbake_mode = ['hob', 'autobuilder']

and it then uses three cache files so bitbake_mode would become a list
rather than a single item.

Cheers,

Richard



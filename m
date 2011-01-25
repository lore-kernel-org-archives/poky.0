Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 942DC4C806DA
	for <poky@yoctoproject.org>; Tue, 25 Jan 2011 10:00:36 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 25 Jan 2011 08:00:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,374,1291622400"; d="scan'208";a="650958237"
Received: from unknown (HELO [10.255.16.153]) ([10.255.16.153])
	by fmsmga002.fm.intel.com with ESMTP; 25 Jan 2011 08:00:35 -0800
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
In-Reply-To: <4D3EF134.3030803@linux.intel.com>
References: <1295958916.5641.8.camel@scimitar>
	<4D3EF134.3030803@linux.intel.com>
Date: Tue, 25 Jan 2011 16:00:29 +0000
Message-ID: <1295971229.21832.1.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Subject: Re: Please ensure you are using layout variables in recipes
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
X-List-Received-Date: Tue, 25 Jan 2011 16:00:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-01-25 at 07:50 -0800, Darren Hart wrote:
> On 01/25/2011 04:35 AM, Joshua Lock wrote:
> > Hi all,
> >
> > When creating/editing recipes can we please ensure consistent use of
> > layout variables, rather than absolute paths.
> 
> Hi Josh,
> 
> When I was putting together the mediatomb scripts I remember running 
> into this. We typically have to write custom init scripts, for example, 
> in order to deal with this as well as some other subtleties and 
> assumptions made by the package init author. In these cases, it would be 
> really useful to have a layer skeleton, which also included skeleton 
> recipes, images, etc. All commented, complete with documentation links 
> to aid people through the process. Seeing it all together in final form 
> would go a long way to helping people get it right the first (or maybe 
> the second) time. I've discussed this with Saul as well, maybe something 
> we need to get on the schedule?

I was just proposing something similar. Of course all of our metadata
should meet the same high standards but it would make sense to have
somewhere to point at as the canonical example.

Scheduling time to work providing example definitely gets my backing.

Cheers,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre



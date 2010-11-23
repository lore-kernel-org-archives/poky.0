Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id BF57E4C81103
	for <poky@yoctoproject.org>; Mon, 22 Nov 2010 23:41:06 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 22 Nov 2010 21:41:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,240,1288594800"; d="scan'208";a="629418281"
Received: from unknown (HELO [10.255.13.161]) ([10.255.13.161])
	by fmsmga002.fm.intel.com with ESMTP; 22 Nov 2010 21:41:04 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: Tom Rini <tom_rini@mentor.com>
In-Reply-To: <4CEB1458.9070503@mentor.com>
References: <cover.1290467442.git.tom.zanussi@intel.com>
	<01abe3ae64c0ee6fde2fc813abe6e8ca39dc0720.1290467442.git.tom.zanussi@intel.com>
	<4CEB1458.9070503@mentor.com>
Date: Mon, 22 Nov 2010 23:41:14 -0600
Message-ID: <1290490874.2784.142.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] blktrace: new package
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
X-List-Received-Date: Tue, 23 Nov 2010 05:41:06 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2010-11-22 at 17:09 -0800, Tom Rini wrote:
> On 11/22/2010 04:07 PM, Tom Zanussi wrote:
> > Add blktrace, a tool for generating traces of the I/O traffic on block
> > devices.
> [snip]
> > diff --git a/meta/recipes-core/tasks/task-poky-tools.bb b/meta/recipes-core/tasks/task-poky-tools.bb
> > index 0a2533c..90361ba 100644
> > --- a/meta/recipes-core/tasks/task-poky-tools.bb
> > +++ b/meta/recipes-core/tasks/task-poky-tools.bb
> > @@ -46,7 +46,8 @@ RDEPENDS_task-poky-tools-profile = "\
> >   RRECOMMENDS_task-poky-tools-profile = "\
> >       perf \
> >       trace-cmd \
> > -    kernel-module-oprofile"
> > +    kernel-module-oprofile \
> > +    blktrace"
> 
> Can I suggest making this:
>      blktrace \
> "
> ?  That's usually how frequently added-to variables are treated, or 
> should be imho.
> 

Makes sense, thanks for suggesting it - will put it in version 3...

Tom



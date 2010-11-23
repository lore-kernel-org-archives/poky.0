Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 39FA74C803A5
	for <poky@yoctoproject.org>; Mon, 22 Nov 2010 23:40:21 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 22 Nov 2010 21:40:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,240,1288594800"; d="scan'208";a="352082094"
Received: from unknown (HELO [10.255.13.161]) ([10.255.13.161])
	by azsmga001.ch.intel.com with ESMTP; 22 Nov 2010 21:40:20 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Tian, Kevin" <kevin.tian@intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D3A619D9B@shsmsx502.ccr.corp.intel.com>
References: <cover.1290467442.git.tom.zanussi@intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D3A619D9B@shsmsx502.ccr.corp.intel.com>
Date: Mon, 22 Nov 2010 23:40:29 -0600
Message-ID: <1290490829.2784.141.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 0/1] Add blktrace package
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
X-List-Received-Date: Tue, 23 Nov 2010 05:40:21 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2010-11-22 at 16:19 -0800, Tian, Kevin wrote:
> >From: Tom Zanussi
> >Sent: Tuesday, November 23, 2010 7:11 AM
> >
> >Add blktrace, one of the tracing/profiling tools mentioned in the Yocto v1.0
> >tracing/profiling tools list posted here:
> >
> >https://lists.yoctoproject.org/pipermail/yocto/2010-November/000281.html
> >
> >Pull URL: git://git.pokylinux.org/poky-contrib.git
> >  Branch: tzanussi/traceprof
> >  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tzanussi/traceprof
> >
> >Thanks,
> >    Tom Zanussi <tom.zanussi@intel.com>
> >---
> >
> >
> >Tom Zanussi (1):
> >  blktrace: new package
> >
> > .../conf/distro/include/poky-default-revisions.inc |    1 +
> > meta/recipes-core/tasks/task-poky-tools.bb         |    3 +-
> > .../blktrace/blktrace/blktrace-makefile.patch      |   53
> >++++++++++++++++++++
> > meta/recipes-kernel/blktrace/blktrace_git.bb       |   25 +++++++++
> > 4 files changed, 81 insertions(+), 1 deletions(-)
> > create mode 100644 meta/recipes-kernel/blktrace/blktrace/blktrace-makefile.patch
> > create mode 100644 meta/recipes-kernel/blktrace/blktrace_git.bb
> 
> New recipe should start from "r0" for PR.
> 

OK, thanks for pointing that out.

Tom

> Thanks
> Kevin




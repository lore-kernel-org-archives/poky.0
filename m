Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 221A8E013DF
	for <poky@yoctoproject.org>; Tue, 27 Aug 2013 08:29:06 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 27 Aug 2013 08:26:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,968,1367996400"; d="scan'208";a="369217385"
Received: from dvhart-mobl4.jf.intel.com (HELO [10.7.201.55]) ([10.7.201.55])
	by orsmga001.jf.intel.com with ESMTP; 27 Aug 2013 08:29:05 -0700
Message-ID: <1377617346.27071.88.camel@dvhart-mobl4.amr.corp.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Tue, 27 Aug 2013 08:29:06 -0700
In-Reply-To: <2657066.KAO69rK0gI@helios>
References: <c8d44d43e68a20099bdecb7277f3771fbcd300c0.1377555271.git.dvhart@linux.intel.com>
	<4ccb62aafe6f32ce224b71484767302d4d84a891.1377555271.git.dvhart@linux.intel.com>
	<2657066.KAO69rK0gI@helios>
Organization: Intel
X-Mailer: Evolution 3.8.5 (3.8.5-2.fc19) 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 6/6] documentation: Replace atom-pc with genericx86 in the manuals
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 27 Aug 2013 15:29:06 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2013-08-27 at 10:10 +0100, Paul Eggleton wrote:
> Hi Darren,
> 
> On Monday 26 August 2013 15:18:12 Darren Hart wrote:
> > Update the manuals to reflect the recent replacement of atom-pc with
> > genericx86.
> > 
> > Signed-off-by: Darren Hart <dvhart@linux.intel.com>
> > Cc: Ross Burton <ross.burton@intel.com>
> > Cc: Scott Rifenbark <scott.m.rifenbark@intel.com>
> > ---
> >  documentation/dev-manual/dev-manual-model.xml  |    2 +-
> >  documentation/ref-manual/ref-variables.xml     |    2 +-
> >  documentation/ref-manual/technical-details.xml |    2 +-
> >  3 files changed, 3 insertions(+), 3 deletions(-)
> > 

...

> This patch needs to be made against yocto-docs and sent to the yocto list (CC 
> Scott).

Done. Thanks Paul.


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel




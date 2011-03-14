Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 22EAF4C80050
	for <poky@yoctoproject.org>; Mon, 14 Mar 2011 12:52:40 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 14 Mar 2011 10:52:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,317,1297065600"; d="scan'208";a="720023393"
Received: from unknown (HELO [10.255.16.55]) ([10.255.16.55])
	by orsmga001.jf.intel.com with ESMTP; 14 Mar 2011 10:52:34 -0700
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
In-Reply-To: <edad97936654f13dbbef0651f508615dc4c89e65.1299705776.git.dvhart@linux.intel.com>
References: <edad97936654f13dbbef0651f508615dc4c89e65.1299705776.git.dvhart@linux.intel.com>
Date: Mon, 14 Mar 2011 17:52:28 +0000
Message-ID: <1300125148.2802.27.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 (2.32.2-1.fc14) 
Subject: Re: [PATCH] bitbake docs: use dblatex to build the pdf bitbake manual
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
X-List-Received-Date: Mon, 14 Mar 2011 17:52:40 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-03-09 at 13:32 -0800, Darren Hart wrote:
> From: Darren Hart <dvhart@linux.intel.com>
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: dvhart/doc
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/doc
> 
> Thanks,
>     Darren Hart <dvhart@linux.intel.com>
> 
> Darren Hart (1):
>   bitbake docs: use dblatex to build the pdf bitbake manual
> 
>  bitbake/doc/manual/Makefile |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> Fix [BUGID #593]
> 
> The current manual build fails for printing formats which use latex as an
> intermediate format. This bug has been reported in multiple locations and I
> haven't found a solution posted to any of them.
> 
> Using --with-dblatex uses dblatex to make the conversion and successfully
> generates the pdf. It adds a dependency on dblatex and its dependencies.
> 
> Signed-off-by: Darren Hart <dvhart@linux.intel.com>
> CC: Joshua Lock <josh@linux.intel.com>

With this patch and dblatex installed I am able to build the BitBake
manual.

Signed-off-by: Joshua Lock <josh@linux.intel.com>

Cheers,
Joshua
-- 
Joshua Lock
        Yocto Build System Monkey
        Intel Open Source Technology Centre



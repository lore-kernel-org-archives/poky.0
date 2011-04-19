Return-Path: <edwin.zhai@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1A0824C800A2
	for <poky@yoctoproject.org>; Mon, 18 Apr 2011 21:39:10 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 18 Apr 2011 19:39:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,236,1301900400"; d="scan'208";a="735331451"
Received: from shxpwgzhai1a.ccr.corp.intel.com (HELO [10.239.48.130])
	([10.239.48.130])
	by orsmga001.jf.intel.com with ESMTP; 18 Apr 2011 19:39:09 -0700
Message-ID: <4DACF5CC.3000205@intel.com>
Date: Tue, 19 Apr 2011 10:39:08 +0800
From: "Zhai, Edwin" <edwin.zhai@intel.com>
User-Agent: Thunderbird 2.0.0.17 (Windows/20080914)
MIME-Version: 1.0
To: "Wold, Saul" <saul.wold@intel.com>
References: <cover.1303131764.git.edwin.zhai@intel.com>
	<1afec4d81832f83fb5746845b35e934d9d8c1571.1303131764.git.edwin.zhai@intel.com>
	<4DACD014.5030105@intel.com>
In-Reply-To: <4DACD014.5030105@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/5] tasks: Upgrade to 0.19 (from 0.18)
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
X-List-Received-Date: Tue, 19 Apr 2011 02:39:11 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit



Wold, Saul wrote:
>
> On 04/18/2011 06:10 AM, Zhai Edwin wrote:
>
> > diff --git a/meta/recipes-sato/pimlico/tasks_0.18.bb 
> b/meta/recipes-sato/pimlico/tasks_0.19.bb
> > similarity index 78%
> > rename from meta/recipes-sato/pimlico/tasks_0.18.bb
> > rename to meta/recipes-sato/pimlico/tasks_0.19.bb
> > index fd7edb3..8326643 100644
> > --- a/meta/recipes-sato/pimlico/tasks_0.18.bb
> > +++ b/meta/recipes-sato/pimlico/tasks_0.19.bb
> > @@ -7,8 +7,8 @@ LIC_FILES_CHKSUM = 
> "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
> >
> >   SRC_URI = 
> "http://pimlico-project.org/sources/${BPN}/${BPN}-${PV}.tar.gz"
>
> Where's the patch Upstream-Status for the tasks-owl.diff file?  Or is it
> not required anymore, in which case we should remove it.
>

This patch has not been used for a long time. It's for enabling owl 
menu. I'll mark it as Inappropriate [enable feature] and rebase it in 
future.


Thanks,
>
>
> Sau!
>


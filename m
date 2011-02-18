Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id D44AA4C8090C;
	Fri, 18 Feb 2011 16:53:32 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 18 Feb 2011 14:53:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,189,1297065600"; d="scan'208";a="391014032"
Received: from unknown (HELO [10.255.12.67]) ([10.255.12.67])
	by azsmga001.ch.intel.com with ESMTP; 18 Feb 2011 14:53:31 -0800
Message-ID: <4D5EF86A.6040109@intel.com>
Date: Fri, 18 Feb 2011 14:53:30 -0800
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7 ThunderBrowse/3.3.4
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: [ANNOUNCEMENT] Bernard release candidate branch created.
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
X-List-Received-Date: Fri, 18 Feb 2011 22:53:33 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

After last nights mostly stable autobuild, Saul and I decided that we were in a fairly good place to create a release
candidate branch today. With the release candidate branch, we need to make sure that code changes are tested on both
master and bernard and that pull requests specify where the pull should occur (master, bernard or both). Maintainers,
please make sure that we keep these two code lines in as sync as possible.

Branch: bernard
Created at: c168c529367e123b557e915f5e5e49018c6de572

Thanks,

------------------
Elizabeth Flanagan
Yocto Project
Release Engineer


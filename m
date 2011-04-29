Return-Path: <josh@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id F41754C800B6
	for <poky@yoctoproject.org>; Fri, 29 Apr 2011 10:11:42 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 29 Apr 2011 08:11:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,288,1301900400"; d="scan'208";a="427821892"
Received: from unknown (HELO [10.255.13.81]) ([10.255.13.81])
	by azsmga001.ch.intel.com with ESMTP; 29 Apr 2011 08:11:42 -0700
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri, 29 Apr 2011 08:11:36 -0700
In-Reply-To: <4DBAD1E5.7050001@windriver.com>
References: <4DBA5E83.4050704@windriver.com>
	<1304087099.2023.1.camel@scimitar> <4DBAD1E5.7050001@windriver.com>
X-Mailer: Evolution 3.0.0 (3.0.0-1.fc15) 
Message-ID: <1304089902.2377.1.camel@scimitar>
Mime-Version: 1.0
Subject: Re: bitbake gs failed
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
X-List-Received-Date: Fri, 29 Apr 2011 15:11:43 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-04-29 at 09:57 -0500, Mark Hatle wrote:
> On 4/29/11 9:24 AM, Joshua Lock wrote:
> > On Fri, 2011-04-29 at 14:45 +0800, Kang Kai wrote:
> >> Hi Saul,
> >>
> >> When I import gs (ghostscript) from oe, I copy the whole directory of gs 
> >> from oe and put it at meta/recipes-extend/gs.  When run 'bitbake gs', 
> >> the bitbake comlains:
> 
> This is an example of an error condition that needs to be improved.  The error
> nothing provides 'gs' is misleading.  We have something that provides "gs", what
> we don't have are the dependencies of gs.  It would be really nice to correct
> the error message to indicate that, and then skip the traceback.

Yes indeed, Scott is going to work on this for 1.1
http://bugzilla.pokylinux.org/show_bug.cgi?id=542

Cheers,
Joshua
-- 
Joshua Lock
        Yocto Build System Monkey
        Intel Open Source Technology Centre



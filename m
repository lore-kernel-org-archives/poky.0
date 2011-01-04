Return-Path: <qing.he@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1CB644C80B70
	for <poky@yoctoproject.org>; Tue,  4 Jan 2011 02:40:31 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 04 Jan 2011 00:40:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,271,1291622400"; d="scan'208";a="369754491"
Received: from qhe2-db.sh.intel.com ([10.239.13.38])
	by azsmga001.ch.intel.com with ESMTP; 04 Jan 2011 00:40:18 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1Pa2Lp-0002Mn-8C; Tue, 04 Jan 2011 16:34:41 +0800
Date: Tue, 4 Jan 2011 16:34:41 +0800
From: Qing He <qing.he@intel.com>
To: Saul Wold <sgw@linux.intel.com>
Message-ID: <20110104083441.GA16835@qhe2-db>
References: <cover.1293765141.git.qing.he@intel.com>
	<4D1DA77C.8060300@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <4D1DA77C.8060300@linux.intel.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 0/6] recipe upgrades, Qing He, 12/31/2010
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
X-List-Received-Date: Tue, 04 Jan 2011 08:40:31 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, 2010-12-31 at 17:50 +0800, Saul Wold wrote:
> On 12/30/2010 07:16 PM, Qing He wrote:
> > Pull URL: git://git.pokylinux.org/poky-contrib.git
> >    Branch: qhe/distro
> >    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=qhe/distro
> >
> > Thanks,
> >      Qing He
> > ---
> >
> >
> > Qing He (6):
> >    parted: upgrade to version 2.3
> >    libtasn1: upgrade to version 2.9
> >    gnutls: upgrade to version 2.10.4
> >    ncurses: upgrade to version 5.7
> >    augeas: upgrade to version 0.7.4
> >    lzo: upgrade to version 2.04
> >
> Qing,
> 
> What kind of testing did you do?  I saw LIC_FILES_CHKSUM failures in lzo 
> and ncurses!
> 
> Please verify these and resubmit.

Saul,

Thank you for the fix.
The screen flushed too quick and I missed the error message.
Btw, I observed an error, but the build process didn't halt, is that
considered some kind of bug?

Thanks,
Qing


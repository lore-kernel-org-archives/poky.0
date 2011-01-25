Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3BFFB4C8085F
	for <poky@yoctoproject.org>; Tue, 25 Jan 2011 11:59:17 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 25 Jan 2011 09:59:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,375,1291622400"; d="scan'208";a="700488093"
Received: from unknown (HELO [10.255.16.162]) ([10.255.16.162])
	by orsmga001.jf.intel.com with ESMTP; 25 Jan 2011 09:59:11 -0800
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
In-Reply-To: <3E839C39-204D-41DE-A334-E10C2761F807@dominion.thruhere.net>
References: <1295958916.5641.8.camel@scimitar>
	<3E839C39-204D-41DE-A334-E10C2761F807@dominion.thruhere.net>
Date: Tue, 25 Jan 2011 17:59:05 +0000
Message-ID: <1295978346.21832.3.camel@scimitar>
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
X-List-Received-Date: Tue, 25 Jan 2011 17:59:17 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-01-25 at 18:52 +0100, Koen Kooi wrote:
> Op 25 jan 2011, om 13:35 heeft Joshua Lock het volgende geschreven:
> 
> > Hi all,
> > 
> > When creating/editing recipes can we please ensure consistent use of
> > layout variables, rather than absolute paths.
> > 
> > For example use:
> > 
> > ${bindir}/foo
> > ${datadir}/bar
> > and
> > ${base_sbindir}/baz
> > 
> > rather than:
> > 
> > /usr/bin/foo
> > /usr/share/bar
> > and
> > /sbin/baz
> > 
> > The layout variables are defined in bitbake.conf and we should have
> > pretty much everything we need there, if you feel some are missing
> > please submit a patch (we've recently added some for cross and nativesdk
> > use, for example).
> 
> Some care needs to be taking with that, though, since things like
> initscripts, config files and udev rules might have the hardcoded paths
> inside. In OE the 'micro' distro sets $prefix to "" instead of "/usr",
> which uncovered a world of hurt. Adding a sed s:usr/bin:${bindir}:g -i
> initscript to do_install is an easy enough way to fix it :)
> 

Indeed, we have a few instances of that (particularly in meta-demo) -
good shout on something to keep an eye out for.

Thanks,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre



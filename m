Return-Path: <edwin.zhai@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2AFEB4C80A7E
	for <poky@yoctoproject.org>; Thu, 14 Apr 2011 20:04:20 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 14 Apr 2011 18:04:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,214,1301900400"; d="scan'208";a="909808246"
Received: from shxpwgzhai1a.ccr.corp.intel.com (HELO [10.239.48.130])
	([10.239.48.130])
	by fmsmga001.fm.intel.com with ESMTP; 14 Apr 2011 18:04:19 -0700
Message-ID: <4DA79992.9090508@intel.com>
Date: Fri, 15 Apr 2011 09:04:18 +0800
From: "Zhai, Edwin" <edwin.zhai@intel.com>
User-Agent: Thunderbird 2.0.0.17 (Windows/20080914)
MIME-Version: 1.0
To: "Wold, Saul" <saul.wold@intel.com>
References: <cover.1302739788.git.edwin.zhai@intel.com>
	<4DA732C8.4070705@intel.com>
In-Reply-To: <4DA732C8.4070705@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/9] [PULL] UX/X apps upgrade, edwin, Apr 13, 2011
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
X-List-Received-Date: Fri, 15 Apr 2011 01:04:20 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit



Wold, Saul wrote:
>
> On 04/13/2011 05:13 PM, Zhai Edwin wrote:
> > From: Zhai Edwin<edwin.zhai@intel.com>
> >
> > Saul,
> >
> > These are some upgrade for UX/X apps part. Avahi upgrade fix one 
> security issue. Pls. review and pull.
> >
> Edwin,
>
> A number of your updates include patches that have not been updated with
> the Upstream-Status Tag, please correct this and resend.
>

Oops. I have thought this is only required for new added patch. I'll add 
them.
>
> Also, libsoup has multiple versioned bb files, is there a reason we are
> keeping the older versions of libsoup-2.4 at this time?
>

I'll remove it.
>
> Do we still need to keep libsoup vs libsoup-2.4? I know that libsoup is
> used by eds-dbus, is there a newer version that does not require libsoup?
>

eds-dbus and libsyncml still use old libsoup, I'll check it.

> Thanks
>         Sau!
>
>
> > Thanks,
> > edwin
> >
> > Pull URL: git://git.pokylinux.org/poky-contrib.git
> >    Branch: gzhai/upgrade04
> >    Browse: 
> http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=gzhai/upgrade04
> >
> > Thanks,
> >      Zhai Edwin<edwin.zhai@intel.com>
> > ---
> >
> >
> > Zhai Edwin (9):
> >    libsoup-2.4: Upgrade to 2.32.2 (from 2.32.1)
> >    tasks: Upgrade to 0.19 (from 0.18)
> >    avahi: Upgrade to 0.6.30 (from 0.6.28)
> >    x11perf: Upgrade to 1.5.3 (from 1.5.2)
> >    libcanberry: Upgrade to 0.28 (from 0.26)
> >    xz: Upgrade to 5.0.2 (from 5.0.0)
> >    consolekit: Upgrade to 0.4.4 (from 0.4.3)
> >    polkit-gnome: Upgrade to 0.101 (from 0.99)
> >    libgpg-error: Upgrade to 1.10 (from 1.9)
> >
> >   .../distro/include/preferred-xorg-versions.inc     |    2 +-
> >   .../avahi/{avahi_0.6.28.bb =>  avahi_0.6.30.bb}     |    6 +++---
> >   ...{polkit-gnome_0.99.bb =>  polkit-gnome_0.101.bb} |    4 ++--
> >   .../xz/{xz_5.0.0.bb =>  xz_5.0.2.bb}                |    4 ++--
> >   .../{x11perf_1.5.2.bb =>  x11perf_1.5.3.bb}         |    4 ++--
> >   .../{libcanberra_0.26.bb =>  libcanberra_0.28.bb}   |    4 ++--
> >   .../pimlico/{tasks_0.18.bb =>  tasks_0.19.bb}       |    4 ++--
> >   .../{consolekit_0.4.3.bb =>  consolekit_0.4.4.bb}   |    8 +++++---
> >   .../pkgconfig.patch                                |    0
> >   .../{libgpg-error_1.9.bb =>  libgpg-error_1.10.bb}  |    4 ++--
> >   ...libsoup-2.4_2.32.1.bb =>  libsoup-2.4_2.32.2.bb} |    4 ++--
> >   11 files changed, 23 insertions(+), 21 deletions(-)
> >   rename meta/recipes-connectivity/avahi/{avahi_0.6.28.bb =>  
> avahi_0.6.30.bb} (82%)
> >   rename meta/recipes-extended/polkit/{polkit-gnome_0.99.bb =>  
> polkit-gnome_0.101.bb} (86%)
> >   rename meta/recipes-extended/xz/{xz_5.0.0.bb =>  xz_5.0.2.bb} (82%)
> >   rename meta/recipes-graphics/xorg-app/{x11perf_1.5.2.bb =>  
> x11perf_1.5.3.bb} (76%)
> >   rename meta/recipes-multimedia/pulseaudio/{libcanberra_0.26.bb =>  
> libcanberra_0.28.bb} (85%)
> >   rename meta/recipes-sato/pimlico/{tasks_0.18.bb =>  tasks_0.19.bb} 
> (78%)
> >   rename meta/recipes-support/consolekit/{consolekit_0.4.3.bb =>  
> consolekit_0.4.4.bb} (79%)
> >   rename meta/recipes-support/libgpg-error/{libgpg-error-1.9 =>  
> libgpg-error-1.10}/pkgconfig.patch (100%)
> >   rename meta/recipes-support/libgpg-error/{libgpg-error_1.9.bb =>  
> libgpg-error_1.10.bb} (86%)
> >   rename meta/recipes-support/libsoup/{libsoup-2.4_2.32.1.bb =>  
> libsoup-2.4_2.32.2.bb} (76%)
> >
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky
> >
>


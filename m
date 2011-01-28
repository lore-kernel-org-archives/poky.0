Return-Path: <edwin.zhai@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 00FBA4C81246
	for <poky@yoctoproject.org>; Fri, 28 Jan 2011 01:11:56 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 27 Jan 2011 23:11:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,391,1291622400"; d="scan'208";a="701581614"
Received: from shxpwgzhai1a.ccr.corp.intel.com (HELO [10.239.48.130])
	([10.239.48.130])
	by orsmga001.jf.intel.com with ESMTP; 27 Jan 2011 23:11:47 -0800
Message-ID: <4D426C36.4070902@intel.com>
Date: Fri, 28 Jan 2011 15:11:50 +0800
From: "Zhai, Edwin" <edwin.zhai@intel.com>
User-Agent: Thunderbird 2.0.0.17 (Windows/20080914)
MIME-Version: 1.0
To: "Zhang, Jessica" <jessica.zhang@intel.com>
References: <9AFCD584B0B67B48AE8D8585BE30BA9506B340BC@orsmsx504.amr.corp.intel.com>
In-Reply-To: <9AFCD584B0B67B48AE8D8585BE30BA9506B340BC@orsmsx504.amr.corp.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: eds-dbus failure
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
X-List-Received-Date: Fri, 28 Jan 2011 07:11:57 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Jessica,
Are you in latest master?　Do you have my upgrade of gtk+ to 2.22.1? I 
just curious why you get 2.6.16, which is obsolete recipe should not be 
built.
What's the version of finally built gtk+ in your system?


I have made a commit to remove all the old gtk+ recipes, but seemed got 
rejected...


Zhang, Jessica wrote:
> I'm building poky-image-sato-sdk against latest poky master and it 
> failed on eds-dbus_git.bb. After I did "bitbake -c cleanall eds-dbus" 
> and tried "bitbake eds-dbus", now the failure is:
> configure: error: Package requirements (glib-2.0 >= 2.16.1
> gtk+-2.0 >= 2.18.0
> gconf-2.0 >= 2.0.0
> libxml-2.0 >= 2.0.0
> libsoup-2.4 >= 2.3.0) were not met:
> Requested 'gtk+-2.0 >= 2.18.0' but version of GTK+ is 2.16.6
> Consider adjusting the PKG_CONFIG_PATH environment variable if you
> installed software in a non-standard prefix.
> Alternatively, you may set the environment variables GNOME_PLATFORM_CFLAGS
> and GNOME_PLATFORM_LIBS to avoid the need to call pkg-config.
> Any idea?
> Thanks,
> Jessica


Return-Path: <edwin.zhai@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0FEF04C804D4
	for <poky@lists.pokylinux.org>; Sun, 13 Mar 2011 21:12:42 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 13 Mar 2011 19:12:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,312,1297065600"; d="scan'208";a="666881632"
Received: from shxpwgzhai1a.ccr.corp.intel.com (HELO [10.239.48.130])
	([10.239.48.130])
	by fmsmga002.fm.intel.com with ESMTP; 13 Mar 2011 19:12:42 -0700
Message-ID: <4D7D7997.8050100@intel.com>
Date: Mon, 14 Mar 2011 10:12:39 +0800
From: "Zhai, Edwin" <edwin.zhai@intel.com>
User-Agent: Thunderbird 2.0.0.17 (Windows/20080914)
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <4D7A5C3B.6070709@mlbassoc.com>
In-Reply-To: <4D7A5C3B.6070709@mlbassoc.com>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: icon registration
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
X-List-Received-Date: Mon, 14 Mar 2011 02:12:43 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Gary,
We have explicitly  set the default icon theme as "sato" to fix a bug. 
You can change /etc/gtk/gtkrc.. for a try.
Thanks,
edwin


Gary Thomas wrote:
>
> I built & installed gnome-icon-theme on top of my sato(-like) image,
> but the new icons did not show up.  I've built a GTK-webcore application
> (midori browser) that wants to use some GNOME icons that it can't find:
>     Gtk-WARNING **: Error loading theme icon 'stock_new-tab' for 
> stock: Icon 'stock_new-tab' not present in te
> For some GTK+ applications, this seems to be fatal :-(
>
> Does anyone know how new icon sets might be registered?  Shouldn't
> this happen automatically when you install a theme?
>
> n.b. I simply copied the /usr/share/icons/gnome/ tree over 
> /usr/share/icons/Sato
> and the application runs perfectly.  I'd rather not have to resort this.
>
> Thanks
>
> -- 
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


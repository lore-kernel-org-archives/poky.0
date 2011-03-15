Return-Path: <edwin.zhai@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id EA6364C80A73
	for <poky@lists.pokylinux.org>; Mon, 14 Mar 2011 20:49:50 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 14 Mar 2011 18:49:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,319,1297065600"; d="scan'208";a="720168576"
Received: from shxpwgzhai1a.ccr.corp.intel.com (HELO [10.239.48.130])
	([10.239.48.130])
	by orsmga001.jf.intel.com with ESMTP; 14 Mar 2011 18:49:49 -0700
Message-ID: <4D7EC5BD.2090905@intel.com>
Date: Tue, 15 Mar 2011 09:49:49 +0800
From: "Zhai, Edwin" <edwin.zhai@intel.com>
User-Agent: Thunderbird 2.0.0.17 (Windows/20080914)
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <4D7A5C3B.6070709@mlbassoc.com> <4D7D7997.8050100@intel.com>
	<4D7DFFC4.8070501@mlbassoc.com>
In-Reply-To: <4D7DFFC4.8070501@mlbassoc.com>
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
X-List-Received-Date: Tue, 15 Mar 2011 01:49:51 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit



Gary Thomas wrote:
>
> On 03/13/2011 08:12 PM, Zhai, Edwin wrote:
> > Gary,
> > We have explicitly set the default icon theme as "sato" to fix a 
> bug. You can change /etc/gtk/gtkrc.. for a try.
>
> Wouldn't that be /etc/gtk-2.0/gtkrc?
>
> I could not find a way to use this file to allow both sets of icon 
> (themes, actually).
> Do you know how?  I don't want to necessarily replace sato, just allow 
> the use of the
> standard gnome elements.
>

Can you set the icon theme to your theme in the config file? Does it 
work? Freedesktop spec says all the directories except "hicolor" under 
/usr/share/icons are scanned (order is not defined) first, and then goto 
"hicolor" if not found.  Another issue is you probably need to generate 
cache for your icon theme by gtk-update-icon-cache.



> n.b. there seems to be a bug in the GTK libraries that make them fail 
> if the default
> icons are not available.  It tries to render GTK_STOCK_MISSING_IMAGE 
> for the missing
> icons and this fails if there is no such icon available in the set 
> (e.g. in sato).
> On ARM at least, this is a fatal segmentation error.  Should I report 
> this as a bug
> in Poky?
>

What's the result of this bug, segfault or no icons on the desktop? If 
you can reproduce it, pls. file a bug.
Thanks,
edwin


> > Gary Thomas wrote:
> >>
> >> I built & installed gnome-icon-theme on top of my sato(-like) image,
> >> but the new icons did not show up. I've built a GTK-webcore 
> application
> >> (midori browser) that wants to use some GNOME icons that it can't 
> find:
> >> Gtk-WARNING **: Error loading theme icon 'stock_new-tab' for stock: 
> Icon 'stock_new-tab' not present in te
> >> For some GTK+ applications, this seems to be fatal :-(
> >>
> >> Does anyone know how new icon sets might be registered? Shouldn't
> >> this happen automatically when you install a theme?
> >>
> >> n.b. I simply copied the /usr/share/icons/gnome/ tree over 
> /usr/share/icons/Sato
> >> and the application runs perfectly. I'd rather not have to resort 
> this.
> >>
> >> Thanks
>
> -- 
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
>


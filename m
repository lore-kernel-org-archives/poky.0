Return-Path: <edwin.zhai@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 517AF4C80050
	for <poky@lists.pokylinux.org>; Mon, 14 Mar 2011 21:20:29 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 14 Mar 2011 19:20:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,320,1297065600"; d="scan'208";a="720175163"
Received: from shxpwgzhai1a.ccr.corp.intel.com (HELO [10.239.48.130])
	([10.239.48.130])
	by orsmga001.jf.intel.com with ESMTP; 14 Mar 2011 19:20:28 -0700
Message-ID: <4D7ECCED.8080300@intel.com>
Date: Tue, 15 Mar 2011 10:20:29 +0800
From: "Zhai, Edwin" <edwin.zhai@intel.com>
User-Agent: Thunderbird 2.0.0.17 (Windows/20080914)
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <4D7A5C3B.6070709@mlbassoc.com> <4D7D7997.8050100@intel.com>
	<4D7DFFC4.8070501@mlbassoc.com> <4D7EC5BD.2090905@intel.com>
	<4D7EC7A4.9070105@mlbassoc.com>
In-Reply-To: <4D7EC7A4.9070105@mlbassoc.com>
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
X-List-Received-Date: Tue, 15 Mar 2011 02:20:29 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit



Gary Thomas wrote:
>
> On 03/14/2011 07:49 PM, Zhai, Edwin wrote:
> >
> >
> > 
> >
> > Can you set the icon theme to your theme in the config file? Does it 
> work? Freedesktop spec says all the directories except "hicolor" under 
> /usr/share/icons are scanned (order is
>
> > not defined) first, and then goto "hicolor" if not found. Another 
> issue is you probably need to generate cache for your icon theme by 
> gtk-update-icon-cache.
>
> This is definitely *not* the behaviour.  I did an strace on the 
> program and it is only
> looking at /usr/share/icons/sato then /usr/share/icons/hicolor.
>

Does sato has icon with same name as your theme? If so, no need to 
search your theme. Any unique icons in your theme are chosen?

> I could set the theme, but then what happens to the sato theme?  This 
> seems contradictory
> to me.
>
> >> n.b. there seems to be a bug in the GTK libraries that make them 
> fail if the default
> >> icons are not available. It tries to render GTK_STOCK_MISSING_IMAGE 
> for the missing
> >> icons and this fails if there is no such icon available in the set 
> (e.g. in sato).
> >> On ARM at least, this is a fatal segmentation error. Should I 
> report this as a bug
> >> in Poky?
> >>
> >
> > What's the result of this bug, segfault or no icons on the desktop? 
> If you can reproduce it, pls. file a bug.
>
> On ARM, I get a segmentation error.
>
> The problem with filing a bug is that I see this in midori, a recipe I 
> brought over
> from OE (with much pain to build BTW)
>
> >> > Gary Thomas wrote:
> >> >>
> >> >> I built & installed gnome-icon-theme on top of my sato(-like) 
> image,
> >> >> but the new icons did not show up. I've built a GTK-webcore 
> application
> >> >> (midori browser) that wants to use some GNOME icons that it 
> can't find:
> >> >> Gtk-WARNING **: Error loading theme icon 'stock_new-tab' for 
> stock: Icon 'stock_new-tab' not present in te
> >> >> For some GTK+ applications, this seems to be fatal :-(
> >> >>
> >> >> Does anyone know how new icon sets might be registered? Shouldn't
> >> >> this happen automatically when you install a theme?
> >> >>
> >> >> n.b. I simply copied the /usr/share/icons/gnome/ tree over 
> /usr/share/icons/Sato
> >> >> and the application runs perfectly. I'd rather not have to 
> resort this.
> >> >>
> >> >> Thanks
> >>
> >> --
> >> ------------------------------------------------------------
> >> Gary Thomas | Consulting for the
> >> MLB Associates | Embedded world
> >> ------------------------------------------------------------
> >>
>
> -- 
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
>


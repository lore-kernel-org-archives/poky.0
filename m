Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9C4244C81065
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 02:57:38 -0600 (CST)
Received: from [192.168.0.7] (5ad4d7b0.bb.sky.com [90.212.215.176])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 65F0412EC1CA
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 03:38:19 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: poky@yoctoproject.org
In-Reply-To: <4D38DFB5.3000907@intel.com>
References: <cover.1295397702.git.edwin.zhai@intel.com>
	<4D38BC0B.7080501@intel.com>  <4D38DFB5.3000907@intel.com>
Date: Fri, 21 Jan 2011 08:57:28 +0000
Message-ID: <1295600248.2382.10.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Subject: Re: [PATCH 0/6] 2nd pull request: UX, gtk+/apr, Edwin, Jan19, 2011
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
X-List-Received-Date: Fri, 21 Jan 2011 08:57:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2011-01-21 at 09:21 +0800, Zhai, Edwin wrote:
> I am always challenged by the version checking system that why not 
> upgrade to latest version:(
> See my comments below for these packages...
> 
> Wold, Saul wrote:
> > On 01/18/2011 04:46 PM, Zhai Edwin wrote:
> >   
> >> Saul,
> >> This is the 2nd pull request for gtk+,gdk-pixbuf,apr. Also added webkit-gtk.
> >> Qemu upgrade is under test across all platforms, and will be out soon.
> >>
> >>     
> >
> >
> > Edwin,
> >
> > It was noticed that you updated a little too aggressively!  For the 
> > gtk+, webkit, eds-dbus and glib, you moved to the development versions.
> >
> > In some open source project even releases are stable and odd releases 
> > are unstable, so in this case we want to go to the following:
> >
> > gtk+: 2.22.1
> >   
> 
> There is also 2.90.X there. And I treated it as development branch, and 
> stick to lower version.
> I have compared between 2.22.1 and 2.23.2, and found no much difference. 
> One case is 2.23.2 support libtool 2.4, but 2.22.1 doesn't, so we may 
> have some autoconf issue there. Anyway, if you want to stick with stable 
> version， I can downgrade it to 2.22.1.

GNOME version naming should be fairly well documented, version numbers
are split into x.y.z components.
The policy is Major.Minor.Release, with an odd minor number indicating a
development release and an even minor number indicating a stable
release.

http://live.gnome.org/ReleasePlanning/ModuleRequirements/Platform

2.90.X is the development series for Gtk+3, a major release with no ABI
guarantee to 2.x - though admittedly this seems to disagree with the
versioning scheme above.
If we're going to package 2.90.x it should be in addition to a 2.x
release, be parallel installable and the recipe be named sufficiently to
indicate that this is gtk+ 3.

The 2.23.x unstable branch is towards making a new release of Gtk+ with
the API/ABI guarantees of the 2.x series for people who are not in a
position to upgrade to Gtk+3. Most distributions will ship 2 and 3 for
at least a release or two while non-GNOME software is updated.

> 
> > glib: 2.26.1
> >   
> 
> Dongxiao owned this?
> > eds-dbus: 2.32
> >   
> 
> 
> My previous upgrade is 2.32.1. But with added nss/nspr, it's rejected. 
> Working is in progress.
> 
> > webkit-gtk 1.2.6
> >   
> 
> Our poky seems never has stable release, and always use development 
> branch. Maybe we want some new feature? RP can comment. Another benefit 
> is development branch is under svn, so we can selectively pick some 
> modules instead of big whole repo. Given development branch, there is no 
> even/odd difference.
> 
> I have a plan to change it to stable release with the cost of long 
> download & compile time, but I'm afraid can't make it in this release cycle.

I think we need someone else to own downgrading this recipe for the next
release then, we can't commit to a 6month stable cycle with an unstable
software package. Do you have a handle on potential impact of
downgrading this recipe?

IIRC only the sato browser (web-webkit) is affected by this recipe?

> > This is something we will need to review more carefully to know for sure 
> > which packages are even/odd stable/dev(or unstable) versioning.
> >
> > I will remind the whole team about this as well.
> >

Cheers,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre



Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5B30A4C80BD4
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 06:47:59 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0LCnnDC002290; Fri, 21 Jan 2011 12:49:49 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id FEivACn6KHSu; Fri, 21 Jan 2011 12:49:49 +0000 (GMT)
Received: from [192.168.1.45] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0LCnFQ9002251
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Fri, 21 Jan 2011 12:49:17 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Joshua Lock <josh@openedhand.com>
In-Reply-To: <1295600248.2382.10.camel@scimitar>
References: <cover.1295397702.git.edwin.zhai@intel.com>
	<4D38BC0B.7080501@intel.com>  <4D38DFB5.3000907@intel.com>
	<1295600248.2382.10.camel@scimitar>
Date: Fri, 21 Jan 2011 12:47:13 +0000
Message-ID: <1295614033.14388.30423.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
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
X-List-Received-Date: Fri, 21 Jan 2011 12:47:59 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2011-01-21 at 08:57 +0000, Joshua Lock wrote:
> On Fri, 2011-01-21 at 09:21 +0800, Zhai, Edwin wrote:
> > There is also 2.90.X there. And I treated it as development branch, and 
> > stick to lower version.
> > I have compared between 2.22.1 and 2.23.2, and found no much difference. 
> > One case is 2.23.2 support libtool 2.4, but 2.22.1 doesn't, so we may 
> > have some autoconf issue there. Anyway, if you want to stick with stable 
> > version， I can downgrade it to 2.22.1.

Libtool 2.4 support is fine as we autoreconf and it doesn't have to have
it out the box.

For gtk+ we should avoid the 2.90 and 2.odd.x versions so 2.22.1 should
be the version we upgrade to.

If the package report system is saying otherwise, we need to teach it a
bit more about gnome project version numbers! :)

> GNOME version naming should be fairly well documented, version numbers
> are split into x.y.z components.
> The policy is Major.Minor.Release, with an odd minor number indicating a
> development release and an even minor number indicating a stable
> release.
> 
> http://live.gnome.org/ReleasePlanning/ModuleRequirements/Platform
> 
> 2.90.X is the development series for Gtk+3, a major release with no ABI
> guarantee to 2.x - though admittedly this seems to disagree with the
> versioning scheme above.
> If we're going to package 2.90.x it should be in addition to a 2.x
> release, be parallel installable and the recipe be named sufficiently to
> indicate that this is gtk+ 3.
> 
> The 2.23.x unstable branch is towards making a new release of Gtk+ with
> the API/ABI guarantees of the 2.x series for people who are not in a
> position to upgrade to Gtk+3. Most distributions will ship 2 and 3 for
> at least a release or two while non-GNOME software is updated.

Right.

> > > glib: 2.26.1
> > >   
> > 
> > Dongxiao owned this?

Fair enough, we do need to use a stable version of glib-2.0 too though.

> > > eds-dbus: 2.32
> > >   
> > 
> > 
> > My previous upgrade is 2.32.1. But with added nss/nspr, it's rejected. 
> > Working is in progress.

I think Saul confused the message. I dropped the eds-dbus gtk+ related
patch since I didn't take the gtk+ update. I don't think there is a
problem with eds versions but again, we should stick to even release
numbers as its a gnome project.


> > > webkit-gtk 1.2.6
> > >   
> > 
> > Our poky seems never has stable release, and always use development 
> > branch. Maybe we want some new feature? RP can comment. Another benefit 
> > is development branch is under svn, so we can selectively pick some 
> > modules instead of big whole repo. Given development branch, there is no 
> > even/odd difference.
> > 
> > I have a plan to change it to stable release with the cost of long 
> > download & compile time, but I'm afraid can't make it in this release cycle.
> 
> I think we need someone else to own downgrading this recipe for the next
> release then, we can't commit to a 6month stable cycle with an unstable
> software package. Do you have a handle on potential impact of
> downgrading this recipe?
> 
> IIRC only the sato browser (web-webkit) is affected by this recipe?

webkit is an odd beast. My gut instinct says we're better off keeping up
to date with webkit and the 1.3.7 version is ok in this case. I don't
know how "old" 1.2.6 is and how unstable the 1.3 series is though. For
what we use it for (web-webkit), 1.3.7 is probably fine?

Cheers,

Richard



Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id D81334C806FA
	for <poky@yoctoproject.org>; Tue, 29 Mar 2011 11:29:44 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2TGThxf025674;
	Tue, 29 Mar 2011 17:29:43 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 22441-06; Tue, 29 Mar 2011 17:29:39 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2TGTZJ8025650
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 29 Mar 2011 17:29:35 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Colin Walters <walters@verbum.org>
In-Reply-To: <AANLkTim-tPhaRCWsCP=sDW30FUL1MfyxTOHabCSHyeQK@mail.gmail.com>
References: <AANLkTi=zGTsBJ4t6MR=7pp2cSjwNFhSMJC=xQGy_mMBF@mail.gmail.com>
	<1301414580.24596.64.camel@rex>
	<AANLkTim-tPhaRCWsCP=sDW30FUL1MfyxTOHabCSHyeQK@mail.gmail.com>
Date: Tue, 29 Mar 2011 17:29:30 +0100
Message-ID: <1301416170.24596.73.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [patch] autotools: Remove .la files by default
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
X-List-Received-Date: Tue, 29 Mar 2011 16:29:45 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-03-29 at 12:15 -0400, Colin Walters wrote:
> On Tue, Mar 29, 2011 at 12:03 PM, Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
> 
> > So no, I'm not going to merge this patch at this time. If we were going
> > to do something like this I'd rather thrown out libtool entirely and
> > switch to something like dolt.
> 
> Would you take an option, off by default then?  I definitely do not
> want these files in my OS; I could remove them in a
> ROOTFS_POSTPROCESS_COMMAND, but it'd be even better to do in after
> each build.

I can do better than that, we have some limitations in the way .conf
files are parsed compared to .bbclass files. If you create a
"localchanges.bbclass" containing:

autotools_do_install_append () {
       # Also kill off .la files; they are wholly unnecessary and actually can
       # break things; see:
       # https://live.gnome.org/GnomeShell/RemovingLaFiles
       # http://wiki.debian.org/ReleaseGoals/LAFileRemoval
       find ${D}${libdir} -name '*.la' -delete
}

and then do INHERIT += "localchanges" you should have this doing what
you want though. You can create a classes/ directory for the .bbclass
along side you conf files (or add a layer for your customisations).

> > Also note in your gnome shell link above that its listed as required
> > because of "the dirty hacks that jhbuild plays to get it to sandbox your
> > system" which is hardly a glowing recommendation. We don't have this
> > problem.
> 
> The core problem arises in that often for developers it's convenient
> to do partial builds; say only rebuild glib and gtk+, but not rebuild
> pango (which lies between them).  What the libtool pango.la file does
> is add -L/usr/lib which is 1) unnecessary and 2) forces the linker
> search first in /usr/lib instead of /opt/gnome like we want.

Right, but with our build environment, this really becomes a non-issue
(and I've been trying to get patches upstream which stop -L/usr/lib
being injected anyway as that is a libtool bug).

Cheers,

Richard



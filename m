Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75D83E0059A
	for <poky@pokylinux.org>; Thu, 29 Mar 2012 07:09:03 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 29 Mar 2012 07:09:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="83079735"
Received: from unknown (HELO [10.255.12.50]) ([10.255.12.50])
	by AZSMGA002.ch.intel.com with ESMTP; 29 Mar 2012 07:09:02 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Detlev Zundel <dzu@denx.de>
In-Reply-To: <m2wr634wjd.fsf@lamuella.denx.de>
References: <4F71D17B.2030200@mlbassoc.com>
	<1332859973.3854.15.camel@elmorro>  <m2wr634wjd.fsf@lamuella.denx.de>
Date: Thu, 29 Mar 2012 09:09:41 -0500
Message-ID: <1333030181.23875.29.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@pokylinux.org
Subject: Re: Strange file names
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
X-List-Received-Date: Thu, 29 Mar 2012 14:09:03 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2012-03-29 at 10:54 +0200, Detlev Zundel wrote:
> Hi Tom,
> 
> > It may seem strange, but filenames are just text after all, and I wanted
> > to avoid having separate 'meta-files' describing that same logic that
> > would also have to be kept in sync, so decided it would be less
> > error-prone to keep that information in the filenames themselves.
> 
> It indeed is a possibility to encode "more than usual" into filenames,
> but it certainly will have other effects also.  Now that the name of the
> file itself contains "business logic" that is important for the system,
> I wonder how this interacts with other parts of the (sometimes
> unwritten) expectations of the development environment.  One thing which
> immediately comes to my mind is the interaction with the version control
> system.
> 
> Changing "an attribute" of such a file (which is coded in the inline
> python code) will essentially look like the deletion and addition of a
> file for version control.  Of course our version control (git) will be
> clever enough to identify the file as being the same, but still we now
> have an operation which was previously not used to change "business
> logic", i.e. renaming files, doing just that.  So for tracing the
> history of such an item I now need to trace the "rename history"
> additionally to the "content history".
> 
> So in contrast to the original idea of "keeping the information in one
> place", we now have two places, i.e. the content and the filename and
> the latter is really a very uncommon place for that.
> 
> I do have a severe bad feeling in my stomach about going into this
> (uncharted) territory and I do not know whether the potential problems
> that we (yet) do not see are worth it.  So I would also like you to
> reconsider that strategy.
> 

Yes, I think it would make sense for various reasons to get rid of it if
possible - it's not central to the mechanism, just convenient.

So the current uses of it are the following:

- having a particular filename match the machine name:
 
    ./powerpc/conf/machine/{{=machine}}.conf

- having a particular filename conditionally included or not:

    ./i386/recipes-kernel/linux/{{ if kernel_choice ==
"linux-yocto_3.2": }} linux-yocto_3.2.bbappend

For those two types of cases, I think it should be possible to move that
logic into the file itself using special filename and/or conditional
filename directives.

The other usage is to have directory names match the machine name for
instance:

 ./i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == "xserver_vesa": }} xorg.conf

In the case of directory names, since there's no file to put that
directive into, and we can't use the directory name any longer, we'll
have to again use some kind of special directory name directive and find
some file to put it into, probably just another .noinstall file, which
we already have a case of but that I wanted to get rid of.  There may be
a better way to do it, but we could keep those and do things that way in
the worst case.

Tom

> Thanks
>   Detlev
> 
> --
> DENX Software Engineering GmbH,      MD: Wolfgang Denk & Detlev Zundel
> HRB 165235 Munich,  Office: Kirchenstr.5, D-82194 Groebenzell, Germany
> Phone: (+49)-8142-66989-40 Fax: (+49)-8142-66989-80 Email: dzu@denx.de
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky




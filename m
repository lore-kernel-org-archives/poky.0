Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01EA6E013BA
	for <poky@pokylinux.org>; Thu, 29 Mar 2012 09:21:45 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 29 Mar 2012 09:21:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="135291332"
Received: from unknown (HELO [10.255.12.50]) ([10.255.12.50])
	by fmsmga001.fm.intel.com with ESMTP; 29 Mar 2012 09:21:45 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Detlev Zundel <dzu@denx.de>
In-Reply-To: <m2ty172y60.fsf@lamuella.denx.de>
References: <4F71D17B.2030200@mlbassoc.com>
	<1332859973.3854.15.camel@elmorro> <m2wr634wjd.fsf@lamuella.denx.de>
	<1333030181.23875.29.camel@elmorro> <m2ty172y60.fsf@lamuella.denx.de>
Date: Thu, 29 Mar 2012 11:22:25 -0500
Message-ID: <1333038145.23875.45.camel@elmorro>
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
X-List-Received-Date: Thu, 29 Mar 2012 16:21:46 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2012-03-29 at 18:02 +0200, Detlev Zundel wrote:
> Hi Tom,
> 
> thanks for listening to my concerns.  I have to admit though, that I
> wrote my mail because of my doubts about the usage of such unusal
> filenames, but I have yet to understand how you use the constructs.
> 
> > Yes, I think it would make sense for various reasons to get rid of it if
> > possible - it's not central to the mechanism, just convenient.
> >
> > So the current uses of it are the following:
> >
> > - having a particular filename match the machine name:
> >  
> >     ./powerpc/conf/machine/{{=machine}}.conf
> 
> Can you explain to me what this exactly does?  Does that file match
> every machine name?  If that is the case, then why do you need to match
> at all and not use a special file name?
> 

I guess 'match' is the wrong word - basically what happens when
processing the templates (and since the filenames themselves are part of
the 'templates', those too), the {{=machine}} in the name is replaced
with the name of the BSP.  So in the final set of files, supposing
you're creating a bsp named 'meta-foo', you end up with this file being
named:

./powerpc/conf/machine/foo.conf

which is what's expected in the BSP layout.

> > - having a particular filename conditionally included or not:
> >
> >     ./i386/recipes-kernel/linux/{{ if kernel_choice ==
> > "linux-yocto_3.2": }} linux-yocto_3.2.bbappend
> >
> > For those two types of cases, I think it should be possible to move that
> > logic into the file itself using special filename and/or conditional
> > filename directives.
> 
> I'm not sure if I understand fully, but something like (shell-syntax)
> "include ${kernel_choice}.bbappend" would work - modulo ignoring errors
> if the file is not found of course.
> 

So, similarly in this case, we have four files with similar names in
this dir, but only one of them should be used, and which one depends on
which kernel was selected.  The 'template processing' uses the code in
the filename to end up with that result.  So your suggestion is partly
fine in that we need some kind of 'include' to replace it, but it
doesn't contain the logic we need to choose only that file.  And it's
just replacing it with something that looks like executable code anyway.
But as I mentioned, I think this case also could me moved into the file
itself.

> > The other usage is to have directory names match the machine name for
> > instance:
> >
> >  ./i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == "xserver_vesa": }} xorg.conf
> 
> I fail to understand this for the same reason than the first item ;)
> 

This is actually a combination of the other two, replace the {{= with
'machine' but here it's a dirname, and conditionally select one of a set
of files.

Again, in this case, for the file in this case, we can move the
selection logic into the file, but for the dirname replacement we need
another place to contain it, which we can use the
aforementioned .noinstall files for, barring a better idea...

Tom

> Cheers
>   Detlev
> 
> --
> DENX Software Engineering GmbH,      MD: Wolfgang Denk & Detlev Zundel
> HRB 165235 Munich,  Office: Kirchenstr.5, D-82194 Groebenzell, Germany
> Phone: (+49)-8142-66989-40 Fax: (+49)-8142-66989-80 Email: dzu@denx.de




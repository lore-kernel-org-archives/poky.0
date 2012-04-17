Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1028CE013A6
	for <poky@yoctoproject.org>; Tue, 17 Apr 2012 08:44:59 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q3HFivte015428;
	Tue, 17 Apr 2012 16:44:57 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 15258-02; Tue, 17 Apr 2012 16:44:53 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q3HFipj2015421
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 17 Apr 2012 16:44:52 +0100
Message-ID: <1334677494.616.101.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
Date: Tue, 17 Apr 2012 16:44:54 +0100
In-Reply-To: <4F8D8A73.3030408@mlbassoc.com>
References: <4F8493BB.5070400@mlbassoc.com> <1334100422.10826.99.camel@ted>
	<4F84CCE3.1060504@mlbassoc.com> <4F84E00D.7030302@mlbassoc.com>
	<4F8D5F61.1010002@mlbassoc.com> <1334674913.616.98.camel@ted>
	<4F8D8A73.3030408@mlbassoc.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: SRC checksum checking broken
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
X-List-Received-Date: Tue, 17 Apr 2012 15:45:00 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-04-17 at 09:21 -0600, Gary Thomas wrote:
> On 2012-04-17 09:01, Richard Purdie wrote:
> > On Tue, 2012-04-17 at 06:17 -0600, Gary Thomas wrote:
> >> On 2012-04-10 19:36, Gary Thomas wrote:
> >>> On 2012-04-10 18:14, Gary Thomas wrote:
> >>>> On 2012-04-10 17:27, Richard Purdie wrote:
> >>>>> On Tue, 2012-04-10 at 14:10 -0600, Gary Thomas wrote:
> >>>>>> I'm not sure how, but this revision broke the checking of checksums:
> >>>>>>
> >>>>>> commit 3d69d9462d550ce4e00e14768cc616bc9ad7e8a5
> >>>>>> Author: Richard Purdie<richard.purdie@linuxfoundation.org>
> >>>>>> Date: Fri Mar 23 14:52:23 2012 +0000
> >>>>>>
> >>>>>> bitbake/fetch2: Ensure mirror tarballs have .done stamps so we don't redownload and corrupt them
> >>>>>>
> >>>>>> [YOCTO #2154]
> >>>>>>
> >>>>>> (Bitbake rev: 521d6b14151d3bf934b9597557f7ae46e50a3d7a)
> >>>>>>
> >>>>>> Signed-off-by: Richard Purdie<richard.purdie@linuxfoundation.org>
> >>>>>>
> >>>>>> The attached log shows this failure - I've modified the busybox_1.19.4.bb
> >>>>>> recipe to have incorrect checksums. With revision 67c83a8, the failure
> >>>>>> is correctly identified. With revision 3d69d94, it is not.
> >>>>>>
> >>>>>> The error happens with direct downloads (using DL_DIR) and also
> >>>>>> with a mirror setup (using own-mirrors).
> >>>>>>
> >>>>>> I've reviewed the change and I don't see how/why this happens.
> >>>>>
> >>>>> There was a patch just merged for something that sounds very similar. I
> >>>>> was going to give you a link and realised something has gone wrong with
> >>>>> the commit:
> >>>>>
> >>>>> http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=a46aafb8b27bd86d046385a569deee6b4c9b8bb6
> >>>>>
> >>>>> as its been squashed with a subsequent commit I had to resolve a
> >>>>> conflict with.
> >>>>>
> >>>>> Regardless, could you see whether that change solves your problem
> >>>>> please?
> >>>>
> >>>> No change, sorry.
> >>>>
> >>>
> >>> I think the problem is this part of the change:
> >>> diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
> >>> index 7524fa9..e5c4b34 100644
> >>> --- a/bitbake/lib/bb/fetch2/__init__.py
> >>> +++ b/bitbake/lib/bb/fetch2/__init__.py
> >>> @@ -476,6 +476,7 @@ def try_mirrors(d, origud, mirrors, check = False):
> >>>
> >>> if not os.path.exists(ud.donestamp) or ud.method.need_update(newuri, ud, ld):
> >>> ud.method.download(newuri, ud, ld)
> >>> + open(ud.donestamp, 'w').close()
> >>> if hasattr(ud.method,"build_mirror_data"):
> >>> ud.method.build_mirror_data(newuri, ud, ld)
> >>>
> >>> I think the call to open() that creates the .done stamp file should really
> >>> be a call to the update_stamp() function. This is the only place checksums
> >>> are being checked (as far as I can tell) and the fact that the .done file
> >>> has already been created is getting in the way. I'd suggest a patch, but I don't
> >>> understand enough of the context to figure out the parameters to call update_stamp() with
> >>> [parameters named u, ud&  d don't help me much]
> >>
> >> This is still broken, both in master (04d6aa1) and 1.2_M4.rc4 (4d9f4d6)
> >> Filed as https://bugzilla.yoctoproject.org/show_bug.cgi?id=2311
> >
> > Does this help?:
> >
> > bitbake/fetch2: Ensure directly mirrored files have their checksum validated
> >
> > Signed-off-by: Richard Purdie<richard.purdie@linuxfoundation.org>
> > ---
> > diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
> > index 414cc2b..e36d3ec 100644
> > --- a/bitbake/lib/bb/fetch2/__init__.py
> > +++ b/bitbake/lib/bb/fetch2/__init__.py
> > @@ -477,7 +477,10 @@ def try_mirrors(d, origud, mirrors, check = False):
> >               if not os.path.exists(ud.donestamp) or ud.method.need_update(newuri, ud, ld):
> >                   ud.method.download(newuri, ud, ld)
> >                   if os.path.exists(ud.localpath):
> > -                    open(ud.donestamp, 'w').close()
> > +                    if ud.localpath == origud.localpath:
> > +                        update_stamp(newuri, origud, ld)
> > +                    else:
> > +                        open(ud.donestamp, 'w').close()
> >                       if hasattr(ud.method,"build_mirror_data"):
> >                           ud.method.build_mirror_data(newuri, ud, ld)
> 
> It does fix the case when using DL_DIR, but own-mirrors is still broken.
> Note: both used to work correctly.

Can you give more details of the configuration please? Is this using
file:// urls?

For example in the bug you said you did "-c cleansstate" and I'd not
expect that to recheck checksums, you'd need to use a "cleanall" for
that.

Cheers,

Richard







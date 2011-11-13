Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CF1DE00304
	for <poky@yoctoproject.org>; Sun, 13 Nov 2011 01:48:04 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pAD9m1ex001462;
	Sun, 13 Nov 2011 09:48:01 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 29416-06; Sun, 13 Nov 2011 09:47:57 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pAD9lm54001456
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sun, 13 Nov 2011 09:47:51 GMT
Message-ID: <1321177671.26881.44.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Colin Walters <walters@verbum.org>
Date: Sun, 13 Nov 2011 09:47:51 +0000
In-Reply-To: <1321145853.14976.12.camel@lenny>
References: <1321145853.14976.12.camel@lenny>
X-Mailer: Evolution 3.2.1- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: non-upstreamed patches
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
X-List-Received-Date: Sun, 13 Nov 2011 09:48:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2011-11-12 at 19:57 -0500, Colin Walters wrote:
> So I've switched back to looking at Yocto again for a project, and the
> Edison release works fine.  Thanks!

Pleased to hear it! :)

> I work on GNOME (almost all of it), and I see quite a number of patches
> in the Yocto tree that I think have been inappropriately categorized as
> Upstream-Status: Inappropriate.

The Upstream-Status fields are relatively new and I think some of the
categorizations are perhaps not quite right or need to be interpreted
correctly. 

http://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines#Patch_Header_Recommendations

> For example,
> recipies-core/glib-2.0/glib-2.0/remove.test.for.qsort_r.patch
> 
> We definitely want upstream GLib to work for cross builds.

Taking this one as an example, someone has run into problems and fixed
it in a way that is certainly not appropriate for upstream as the patch
stands.

>   It was my
> understanding that the better way to handle autoconf checks that require
> running code was to pass a precomputed cache file:
> http://www.gnu.org/s/hello/manual/autoconf/Site-Defaults.html
>
> I think this makes sense to do for fundamental libraries like GLib;
> hacking up the configure.ac isn't a good long term plan.

Totally agreed. We do have site cache files an a much better way of
handling that issue would be to add the value to the site cache. In an
ideal world I've have caught that patch and asked it to be a site entry,
it looks like its slipped through. I'll certainly take a site file entry
and change to drop the patch.

> Another thing that seems to be proliferating is gtk-doc workarounds.  If
> it isn't working for you guys to --disable-gtk-doc, just tell me why and
> I'll fix it.
> 
> (The -Werror bit there is a total fuckup on our part, I will eventually
> convince Owen to remove it...)
> 
> librsvg/librsvg-2.31.1/doc_Makefile.patch is also TOTALLY appropriate
> upstream.  Why would you think it isn't?

This is a mess of our own making :/. You'd probably get a bit of a shock
if you look at our gtk-doc recipe. Since we reautoconf files, we need
the gtk-doc .m4 file. We just provide a static copy of it. To handle the
makefile, we just touch that.

I have a suspicion that EXTRA_DIST exists if you use the gtk-doc
makefile and hence appending to it is a good idea and hence that patch
truly is inappropriate for upstream.

In many cases we've learnt from our experiences and instead of touching
the makefile, we echo EXTRA_DIST = "" to it instead (or similar).

Ultimately I'd like to see a fixed gtk-doc recipe. It was so long ago I
last tried that I can't remember what issues we found.

> gtk+/gtk+-2.24.6/run-iconcache.patch is another cross build issue that
> I'm pretty sure we can solve better upstream.  gtk+ for example already
> has an automake conditional:
> AM_CONDITIONAL(CROSS_COMPILING, test $cross_compiling = yes)
> 
> We can just not run this code if that's true.

That would be a nice change to get upstream. The current patch is
inappropriate but I'm sure we could create one that could be accepted.

> (And I am totally fine with just copying that conditional into every
> single GNOME module).
> 
> hardcoded_libtool.patch is another one I think we can get upstream in a
> better way; shouldn't it just be using $LIBTOOL ?

Good question, I think I might tried that and had some kind of problem
but if that did would it would be great to see it upstream too.

> Finally, on the Upstream-Status: pending patches, can you guys please
> add links to bugzilla?

If its been filed there should be links. "Pending" can also mean "needs
to be submitted upstream". As I said, this is a relatively new thing, we
used to have no information in the patches at all so it is getting
better. We're making progress although never as fast as we would in an
ideal world! :)

Any help would be appreciated, the reminders above are helpful as there
does appear to be some low hanging fruit there. Also the pointers on
which ones might make it into gnome upstream are useful!

Cheers,

Richard



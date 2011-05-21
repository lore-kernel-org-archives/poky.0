Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 441A54C8026D
	for <poky@yoctoproject.org>; Sat, 21 May 2011 03:49:24 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4L8nMQ1003037;
	Sat, 21 May 2011 09:49:22 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 02732-01; Sat, 21 May 2011 09:49:18 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4L8nCAV003021
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sat, 21 May 2011 09:49:13 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4DD6FBE2.4080403@linux.intel.com>
References: <4DD6FBE2.4080403@linux.intel.com>
Date: Sat, 21 May 2011 09:49:04 +0100
Message-ID: <1305967744.3424.723.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: fetch2/git: questions on read-tree and checkout-index
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
X-List-Received-Date: Sat, 21 May 2011 08:49:24 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-05-20 at 16:40 -0700, Darren Hart wrote:
> As I ran into http://bugzilla.yoctoproject.org/show_bug.cgi?id=1089 today
> working with Saul to validate bug 1029, I spent some time reading through the
> fetch2/git source and the commit history. I had a couple questions regarding the
> rationale for the use of "read-tree" and "checkout-index" in the unpack routine:
> 
> runfetchcmd("git clone -s -n %s %s" % (ud.clonedir, destdir), d)
> if not ud.nocheckout:
>     os.chdir(destdir)
>     runfetchcmd("%s read-tree %s%s" % (ud.basecmd, ud.revisions[ud.names[0]], readpathspec), d)
>     runfetchcmd("%s checkout-index -q -f -a" % ud.basecmd, d)
> 
> As I understand it this would be equivalent to checking out HEAD and then
> overwriting everything in the tree with the contents of the repository at
> ud.revisions[ud.names[0]]. This results in all the modifications listed with git
> status but doesn't add any of the changes back to the index, so the log still
> appears to be at HEAD (with a lot of local changes). This seems unnecessary for
> the majority of use cases. The one where it seems potentially useful would be
> the subdir case. Is that the only motivator for using this method?

You're asking why this is as it is an the best answer I can give you is
history. We now use fetch2 and there were some changes in concept there
and the overall changes were discussed on the mailing list in detail
before they were implemented.

One key change was that we switched to preserving the SCM metadata with
the checked out source code when we used to throw it away. This allowed
several optimisations in the way we mirror data and "unpack" code.

If you imagine the .git directory isn't there at all and we were just
generating tarballs of checked out data, the fetcher code code starts to
make a lot more sense. The code needed to check out a specific revision,
it didn't matter what state the index/tree were in with reference to
branches and so forth. The fragment listed above does exactly that.

History wise, that fetcher has also been around since git was very new.
Back then many modern git commands didn't even exist so it does things
that now are considered more "internal" use of git.

> If so, what is the motivation for checkout out of a subdir - as opposed to just
> changing the recipe to build within that subdir?

Some projects are huge with subprojects within projects as a hangover
from svn source control for example (matchbox, clutter, bsd spring to
mind with that structure). I can see a use case for it, particularly
with the way the fetcher used to work as mentioned above.

How do we marry this up against our desire to keep the SCM metadata
around now? Good question...

> Unless I'm missing a use-case (quite likely as there are next to no comments
> articulating the rationale and approach taken)

There are several design discussions on the mailing list for fetch2
itself. We've concentrated on the overall architecture rather than the
individual specific fetchers as I think they flow from the former and
one needed to be got right before the other.

I don't think there is detailed comments about the specific commands
themselves although hopefully above you can see how we've arrived here.

>  I think it would make more sense
> to just checkout the required hash into a detached head for the build and update
> any recipes that make use of the subdir option to build within than subdir.

We need to be very careful about changing/breaking API but I agree the
benefits we once had with subdir have become more minimal now we use the
git metadata rather than the taring and untaring archives of source code
for the unpack stage.

> Alternatively, doing a checkout for the non subdir case would make most of the
> recipes get this behavior while allowing the subdir users to remain untouched.

I'd like to see your proposed checkout commands. We do need to be 100%
sure that the given checkout matches 100% with the revision the system
is trying to obtain which I believe is why the code has been left the
way it has for so long.

Cheers,

Richard




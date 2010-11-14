Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id E17CE4C80815
	for <poky@lists.pokylinux.org>; Sun, 14 Nov 2010 11:58:18 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAEHwIBt007549;
	Sun, 14 Nov 2010 17:58:18 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 07095-07; Sun, 14 Nov 2010 17:58:14 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAEHwAYT007542
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sun, 14 Nov 2010 17:58:11 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4CDDD3E7.3000305@mlbassoc.com>
References: <4CDB2A52.6060400@mlbassoc.com> <1289539963.1272.3055.camel@rex>
	<4CDCF848.9020703@mlbassoc.com> <1289550656.1272.3179.camel@rex>
	<4CDCFC57.20909@mlbassoc.com> <1289604672.1272.4108.camel@rex>
	<4CDDD3E7.3000305@mlbassoc.com>
Date: Sun, 14 Nov 2010 17:58:08 +0000
Message-ID: <1289757488.1272.4980.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: SSTATE builds more broken than I thought
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
X-List-Received-Date: Sun, 14 Nov 2010 17:58:19 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2010-11-12 at 16:55 -0700, Gary Thomas wrote:
> On 11/12/2010 04:31 PM, Richard Purdie wrote:
> > On Fri, 2010-11-12 at 01:35 -0700, Gary Thomas wrote:
> >> On 11/12/2010 01:30 AM, Richard Purdie wrote:
> >>> On Fri, 2010-11-12 at 01:18 -0700, Gary Thomas wrote:
> >>>>> Are these all files or are they symlinks? Are they just present for
> >>>>> deploy-ipk or are there others?
> >>>>
> >>>> They are files.
> >>>>
> >>>> Sorry, but I don't understand your other question.  These are the only
> >>>> extra files polluting the tree, except for Python *.py? object files
> >>>> which are also always created.
> >>>
> >>> Are there any files related to other sstate tasks such as
> >>> populate-sysroot*.tgz or package*.tgz or is there just *deploy-ipk*.tgz?
> >>>
> >>> In other words I'm wondering if this is something specific to the
> >>> deploy-ipk sstate task...
> >>
> >> The only extra files created are *deploy-ipk*.tgz
> >> This most certainly is restricted to the deploy-ipk sstate task and only
> >> happens if SSTATE_MIRRORS is defined.
> >
> > This should be fixed in ae98f7eacb9e61fe086d88dc694b4c651af9fee3, it
> > turns out to be an issue with the local fetcher not searching DL_DIR.
> 
> Trying the same process as in bug #526, it failed with this error:
[...]

Right, I messed up those commits. I should know better than make commits
when travelling and jetlagged.

I ended up reverting the first fixes and pushing a set of different
fixes.

Previously you (and I think Kevin Tian) reporting bitbake spending a
huge amount of time thinking about shared state. When I was debugging
this I noticed a potential cause of that, my local test setups were
evidently just too fast to notice it. I added another commit:

http://git.pokylinux.org/cgit.cgi/poky/commit/?id=89929e1f283c8508c505c9731ad933880abf22a1

which should make things faster (n^2 faster where n is the number of
tasks).

Thanks again for testing and reporting the issues, I believe this code
will make a significant difference for people once it works reliably and
we're close to making that happen.

Cheers,

Richard





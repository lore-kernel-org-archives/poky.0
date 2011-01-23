Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1CC0B4C81065
	for <poky@yoctoproject.org>; Sat, 22 Jan 2011 18:12:27 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0N0EBkw002562; Sun, 23 Jan 2011 00:14:12 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id jxTuW4luiWd4; Sun, 23 Jan 2011 00:14:11 +0000 (GMT)
Received: from [192.168.1.45] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0N0E1Nk002558
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Sun, 23 Jan 2011 00:14:04 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Wolfgang Denk <wd@denx.de>
In-Reply-To: <20110122144831.609C3B335@gemini.denx.de>
References: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
	<1295296178-18590-5-git-send-email-aalonso@secretlab.ca>
	<4D3884A0.8030602@linux.intel.com>
	<20110120230537.5CF85D301D7@gemini.denx.de>
	<1295565854.14388.27977.camel@rex>
	<20110122144831.609C3B335@gemini.denx.de>
Date: Sun, 23 Jan 2011 00:11:53 +0000
Message-ID: <1295741513.14388.37111.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Adrian Alonso <aalonso@secretlab.ca>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 05/25] u-boot: disable -Os option not supported by gcc
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
X-List-Received-Date: Sun, 23 Jan 2011 00:12:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2011-01-22 at 15:48 +0100, Wolfgang Denk wrote:
> In message <1295565854.14388.27977.camel@rex> you wrote:
> > > What exactly is the reason that -Os is not supported?
> > 
> > Its not so much not supported, its that gcc 4.5 seems to have totally
> > broken it and for better or worse, we're on that gcc version. Until we
> > have a toolchain where the option works what do we do?
> 
> Usually I try to approach problems at the root cause - the best
> solution was if we had patches for GCC to make it work.  It appears
> that "-Os" is only one way to trigger issues in recent GCC version;
> plain "-O" or "-O1" trigger other problems, see for example
> http://gcc.gnu.org/bugzilla/show_bug.cgi?id=45052

Right, I'm aware that recent versions of gcc have issues sadly :(. I'm
unaware of any resource available to Yocto with the right combination
of time/experience to fix that problem at source at this time though :(.

> > Well, its a case of "totally broken" or a risk of size issues on some
> > systems so I'm in favour of the latter. I agree the toolchain issues
> > need to be resolved and I'm sure they will sooner or later. I have
> > noticed upstream gcc don't seem to like the -Os option though and it
> > often seems to be the source of problems...
> 
> Probably this is (at least partially) due to the fact that only such
> lunatic fringe groups as the embedded folks tend to use exotic
> features like -Os, and our word is of little interest to the GCC
> PTBs.

I don't see embedded folks as a lunatic fringe group and I would like to
see gcc care a little more about some of these use cases and options,
you don't need to convince me about this.

>   Did anybody from the Yocto project / Poky / the LF / Intel or
> any other bigger player try to put his weight in?

I don't think the world works this way.

Lets take a step back and remind ourselves why Yocto exists in the first
place. Yocto exists to try and take Embedded Linux to a new level and
the fact there are people working on it shows a commitment from the LF,
Intel and other players to go and work on some hard problems. Great.

We can't fix every problem overnight, we don't have infinite resources.
Sad, but true.

For gcc specifically, consider the steps you need to take to approach
upstream about a problem. Top of the list is using recent versions. If
we try and report a bug upstream in an old version we'll just get told
to try with the latest. We have moved all our architectures to a modern
version of gcc although I think we're still a little behind. We're now
trying to figure out exactly how the land lies and make sure we have
something usable in the meantime (as you've noticed there are problems).
As and when we track down issues, they will get reported upstream and if
Yocto becomes a strong player representing embedded, I'd hope those
reports will get acted on. It will take time for Yocto to become a
significant player and it will take help from the wider community to
support that. We're not there yet.

FWIW, off the top of my head I think we have already fed a couple of
issues into the gcc community in one way or another.

We are open to suggestions on the issues where effort is needed. As I've
said above we have finite resources and some requirements from the
people providing those resources. We're going to do the best we can with
what we have.

This kind of issue is one reason I do want to keep up following upstream
versions so we can interact with the upstream more quickly and
effectively. I appreciate there are downsides to it too but I think in
the long run if we can keep on top of things and stay up to date it will
assist us in the long run immensely as we'll be able to feed back
information to the upstream much more quickly and efficiently if any
problems do appear.

So please try and help Yocto achieve these things but keep in mind its
not as simple as you make out above. There is a lot to do and help is
appreciated, gcc is just one facet of what we need to work on.

Cheers,

Richard



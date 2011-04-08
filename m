Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id C03484C80A78
	for <poky@yoctoproject.org>; Fri,  8 Apr 2011 08:21:39 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p38DLXGR007279;
	Fri, 8 Apr 2011 14:21:33 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 07176-02; Fri,  8 Apr 2011 14:21:29 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p38DLLbR007273
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 8 Apr 2011 14:21:23 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Joshua Lock <josh@linux.intel.com>
In-Reply-To: <1302265737.7724.1.camel@scimitar>
References: <cover.1301664697.git.josh@linux.intel.com>
	<8d834327e2d84b8d4ad72b9c617d261ab8b206e2.1301664697.git.josh@linux.intel.com>
	<BANLkTi=etDyw_wqyqbErqoR92cwOXw3R4A@mail.gmail.com>
	<1301957183.24596.414.camel@rex> <1302088591.2355.7.camel@scimitar>
	<BANLkTik=9jfHyeqiXwzS0dA2p=MDfdb8Yw@mail.gmail.com>
	<1302265737.7724.1.camel@scimitar>
Date: Fri, 08 Apr 2011 06:21:18 -0700
Message-ID: <1302268878.22904.125.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/7] elfutils: fix builds with gcc 4.6
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
X-List-Received-Date: Fri, 08 Apr 2011 13:21:40 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-04-08 at 13:28 +0100, Joshua Lock wrote:
> On Wed, 2011-04-06 at 10:06 -0700, Khem Raj wrote:
> > On Wed, Apr 6, 2011 at 4:16 AM, Joshua Lock <josh@linux.intel.com> wrote:
> > > I've worked up an alternative fix and sent a pull request to oe-core. I
> > > took the approach of consolidating several patches from the upstream
> > > source repository which remove the unused variables.
> > >
> > > I consolidated them into a single patch so that they are easier to drop
> > > once we update elfutils to 0.152 or higher.
> > >
> > 
> > Why not update to 0.152 then
> 
> The patch series is intended for a Bernard point release, the Bernard
> release is already out with eflutils 0.148.

I think this is a good approach given the issues we know we're going to
have with Bernard. I'll obviously take a version upgrade patch too :)

Cheers,

Richard



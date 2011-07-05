Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id A1C8D4C801DA
	for <poky@yoctoproject.org>; Tue,  5 Jul 2011 08:19:34 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p65DJXuV031510;
	Tue, 5 Jul 2011 14:19:33 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 31191-06; Tue,  5 Jul 2011 14:19:29 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p65DJRhx031504
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 5 Jul 2011 14:19:28 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4E12F6C8.9040806@mlbassoc.com>
References: <4E12F363.6070708@mlbassoc.com> <1309865186.20015.692.camel@rex>
	<4E12F6C8.9040806@mlbassoc.com>
Date: Tue, 05 Jul 2011 14:18:56 +0100
Message-ID: <1309871936.20015.703.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: eglibc build problem
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
X-List-Received-Date: Tue, 05 Jul 2011 13:19:35 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-07-05 at 05:34 -0600, Gary Thomas wrote:
> On 07/05/2011 05:26 AM, Richard Purdie wrote:
> > On Tue, 2011-07-05 at 05:20 -0600, Gary Thomas wrote:
> >> Any ideas what would keep the localedef stuff from being built for my
> >> board whereas it is built for a standard board?
> >>
> >> As I said, this has been working great up until some time recently.
> >> I can't see any hint in the commit logs of what might have changed
> >> to break it.  ... that will teach me to take a 2 week holiday!
> >
> > I'm going to guess that your distro overrides DISTRO_FEATURES and you
> > are missing some of the new libc settings...
> 
> Thanks, that does look promising.
> 
> That said, would this not then be a bug?  DISTRO_FEATURES does not imply
> localedefs, but the recipe still expects it to be there?

It does sound like a bug, yes...

Cheers,

Richard




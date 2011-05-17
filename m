Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 043C84C800B7
	for <poky@yoctoproject.org>; Tue, 17 May 2011 12:25:19 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4HHPH8B019014;
	Tue, 17 May 2011 18:25:17 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 18527-10; Tue, 17 May 2011 18:25:13 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4HHPAAi019005
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 17 May 2011 18:25:10 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Tom Zanussi <tom.zanussi@intel.com>
In-Reply-To: <1305555466.21191.227.camel@elmorro>
References: <cover.1305415455.git.tom.zanussi@intel.com>
	<92477bdb3d1f4a10cb30a261753cf959b52aab8a.1305415455.git.tom.zanussi@intel.com>
	<4DCF53FC.9060109@intel.com>  <1305436392.21191.135.camel@elmorro>
	<1305535028.3424.14.camel@rex>  <1305555466.21191.227.camel@elmorro>
Date: Tue, 17 May 2011 18:25:09 +0100
Message-ID: <1305653109.3424.270.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>, "Wold,
	Saul" <saul.wold@intel.com>
Subject: Re: [PATCH 1/4] crownbay: remove custom BASE_PACKAGE_ARCH and	PACKAGE_EXTRA_ARCHS
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
X-List-Received-Date: Tue, 17 May 2011 17:25:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-05-16 at 09:17 -0500, Tom Zanussi wrote:
> On Mon, 2011-05-16 at 01:37 -0700, Richard Purdie wrote:
> > On Sun, 2011-05-15 at 00:13 -0500, Tom Zanussi wrote:
> > > On Sat, 2011-05-14 at 21:18 -0700, Wold, Saul wrote:
> > > > On 05/14/2011 08:36 PM, Tom Zanussi wrote:
> > > > > From: Tom Zanussi<tom.zanussi@intel.com>
> > > > >
> > > > > PACKAGE_EXTRA_ARCHS in the conf file gets overwritten by the tune-atom
> > > > > include following it, preventing the atom BASE_PACKAGE_ARCH from being
> > > > > included in the final PACKAGE_ARCHS and causing do_rootfs to fail.
> > > > > Remove the atom BASE_PACKAGE_ARCH and PACKAGE_EXTRA_ARCHS in the conf
> > > > > file and allow the values in tune-atom to be used as intended.
> > > > >
> > > > I think we may still want to change the tune-atom PACKAGE_EXTRA_ARCHS to ?=.
> > > > 
> > > 
> > > Yeah, I'll change that along with a couple other changes to that file,
> > > such as switching -march=core2 to -march=atom, soon...
> > 
> > Does that actually make any difference to gcc? It never used to but I'm
> > wondering if anything has changed?
> 
> I don't know yet, which is why I didn't just make the change
> straightaway - it would need some benchmarking first, at least.
> 
> I would be kind of surprised though if it didn't have some effect -
> otherwise why would it exist at all?  It sounds like you've tested this
> before and it didn't make any difference - how did you test, and do you
> have any benchmarking suggestions that would help decide one way or the
> other?

I think I looked at the gcc codebase and found it didn't do anything.
Its more common that you'd have thought in gcc :/

Cheers,

Richard



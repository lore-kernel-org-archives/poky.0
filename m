Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 224DFE00346
	for <poky@yoctoproject.org>; Mon,  8 Oct 2012 15:40:04 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q98Me1Tw024117;
	Mon, 8 Oct 2012 23:40:01 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 21891-09; Mon,  8 Oct 2012 23:39:57 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q98MdoVD024111
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO);
	Mon, 8 Oct 2012 23:39:53 +0100
Message-ID: <1349735995.15658.156.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
Date: Mon, 08 Oct 2012 23:39:55 +0100
In-Reply-To: <50735211.1090100@mlbassoc.com>
References: <5072FBB8.9060703@mlbassoc.com> <5797264.jLXkT5xyjF@helios>
	<5073101D.9080204@r-finger.com> <1349728637.15658.127.camel@ted>
	<50735211.1090100@mlbassoc.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: Files missing from package
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 08 Oct 2012 22:40:05 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2012-10-08 at 16:22 -0600, Gary Thomas wrote:
> On 2012-10-08 14:37, Richard Purdie wrote:
> > On Mon, 2012-10-08 at 18:40 +0100, Tomas Frydrych wrote:
> >> On 08/10/12 17:24, Paul Eggleton wrote:
> >>> Since ${sysconfdir} is /etc by default and ${sysconfdir} is in the default
> >>> value of FILES_${PN}, and your additional package is appended to PACKAGES, I
> >>> suspect you'll find the file is being picked up by the main package first. You
> >>> need to use =+ instead of += so that the some-tool-tools package is prepended
> >>> to PACKAGES and thus gets the file before the main package.
> >>
> >> Probably worth noting that using =+ with PACKAGES can have some
> >> undesirable side effects. For example, if the recipe in question
> >> generates packages dynamically, e.g., for plugins, the first package in
> >> the PACKAGES list will be considered the 'main' package, and the dynamic
> >> packages will RDEPEND on it. If you modify PACKAGES in such a recipe
> >> using the =+, this will result in broken dependency chain without any
> >> obvious signs something is not right. I think it's much better to
> >> explicitly specify what should go into the main package than using =+ to
> >> work around the unsuitable main package default.
> >
> > FWIW, there is the PACKAGE_BEFORE_PN variable for this and other
> > scenarios where you want something just before PN in PACKAGES.
> 
> This does sound better, I always like to be explicit, especially when
> the default/background has a possibility of biting me!
> 
> So, how would I use that for my case (i.e. what lines do I add/change
> in my recipe to use it)?

PACKAGE_BEFORE_PN += "${PN}-tools"
FILES_${PN}-tools = "${sbindir}/get_tool \
                     ${sbindir}/put_tool \
                        /etc/tool.config \


PACKAGE_BEFORE_PN lets you put the package specifically after
-dev/-dbg/-doc/-locale and so on but before PN.

Cheers,

Richard



Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECDABE0027E
	for <poky@yoctoproject.org>; Mon,  8 Oct 2012 13:37:25 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q98KbK1G023177;
	Mon, 8 Oct 2012 21:37:21 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 21026-09; Mon,  8 Oct 2012 21:37:15 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q98KbCYP023171
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO);
	Mon, 8 Oct 2012 21:37:13 +0100
Message-ID: <1349728637.15658.127.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Tomas Frydrych <tf+lists.yocto@r-finger.com>
Date: Mon, 08 Oct 2012 21:37:17 +0100
In-Reply-To: <5073101D.9080204@r-finger.com>
References: <5072FBB8.9060703@mlbassoc.com> <5797264.jLXkT5xyjF@helios>
	<5073101D.9080204@r-finger.com>
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
X-List-Received-Date: Mon, 08 Oct 2012 20:37:26 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2012-10-08 at 18:40 +0100, Tomas Frydrych wrote:
> On 08/10/12 17:24, Paul Eggleton wrote:
> > Since ${sysconfdir} is /etc by default and ${sysconfdir} is in the default 
> > value of FILES_${PN}, and your additional package is appended to PACKAGES, I 
> > suspect you'll find the file is being picked up by the main package first. You 
> > need to use =+ instead of += so that the some-tool-tools package is prepended 
> > to PACKAGES and thus gets the file before the main package.
> 
> Probably worth noting that using =+ with PACKAGES can have some
> undesirable side effects. For example, if the recipe in question
> generates packages dynamically, e.g., for plugins, the first package in
> the PACKAGES list will be considered the 'main' package, and the dynamic
> packages will RDEPEND on it. If you modify PACKAGES in such a recipe
> using the =+, this will result in broken dependency chain without any
> obvious signs something is not right. I think it's much better to
> explicitly specify what should go into the main package than using =+ to
> work around the unsuitable main package default.

FWIW, there is the PACKAGE_BEFORE_PN variable for this and other
scenarios where you want something just before PN in PACKAGES.

Cheers,

Richard



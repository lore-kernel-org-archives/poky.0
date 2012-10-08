Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71D6BE0027E
	for <poky@yoctoproject.org>; Mon,  8 Oct 2012 10:41:01 -0700 (PDT)
Received: from [192.168.0.2] (host81-153-117-118.range81-153.btcentralplus.com
	[81.153.117.118]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 96FBF99A4
	for <poky@yoctoproject.org>; Mon,  8 Oct 2012 18:40:46 +0100 (BST)
Message-ID: <5073101D.9080204@r-finger.com>
Date: Mon, 08 Oct 2012 18:40:45 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <5072FBB8.9060703@mlbassoc.com> <5797264.jLXkT5xyjF@helios>
In-Reply-To: <5797264.jLXkT5xyjF@helios>
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
X-List-Received-Date: Mon, 08 Oct 2012 17:41:01 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 08/10/12 17:24, Paul Eggleton wrote:
> Since ${sysconfdir} is /etc by default and ${sysconfdir} is in the default 
> value of FILES_${PN}, and your additional package is appended to PACKAGES, I 
> suspect you'll find the file is being picked up by the main package first. You 
> need to use =+ instead of += so that the some-tool-tools package is prepended 
> to PACKAGES and thus gets the file before the main package.

Probably worth noting that using =+ with PACKAGES can have some
undesirable side effects. For example, if the recipe in question
generates packages dynamically, e.g., for plugins, the first package in
the PACKAGES list will be considered the 'main' package, and the dynamic
packages will RDEPEND on it. If you modify PACKAGES in such a recipe
using the =+, this will result in broken dependency chain without any
obvious signs something is not right. I think it's much better to
explicitly specify what should go into the main package than using =+ to
work around the unsuitable main package default.

Tomas


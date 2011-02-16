Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 01E954C800A3
	for <poky@yoctoproject.org>; Wed, 16 Feb 2011 10:11:36 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1GGBYqw011345;
	Wed, 16 Feb 2011 16:11:35 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 10928-07; Wed, 16 Feb 2011 16:11:31 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1GGBPsr011339
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 16 Feb 2011 16:11:26 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Saul Wold <sgw@linux.intel.com>
In-Reply-To: <4D5BF25E.7030401@linux.intel.com>
References: <4D5BF25E.7030401@linux.intel.com>
Date: Wed, 16 Feb 2011 16:11:24 +0000
Message-ID: <1297872684.11289.257.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "poky >> \"poky@yoctoproject.org\"" <poky@yoctoproject.org>
Subject: Re: [PULL] Consolidated pull request
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
X-List-Received-Date: Wed, 16 Feb 2011 16:11:37 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-02-16 at 07:50 -0800, Saul Wold wrote:
> Richard,
> 
> This  builds and address issues with RPM, adds parallel make back to 
> some recipes and adds support for building more docs.
> 
> Sau!
> 
> 
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: distro/master
>    Browse: 
> http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=distro/master
> 
> Thanks,
>      Saul Wold <sgw@linux.intel.com>
> ---
> 
> 
> Beth Flanagan (1):
>    Doing uname without subprocess: buildstats.bbclass
> 
> Lianhao Lu (1):
>    linux-libc-headers-yocto: Added RPROVIDES.
> 
> Mark Hatle (4):
>    rpm: Add the ability to use the platform file during install
>    rpm: Avoid fsync when writing files
>    image.bbclass: Disable shell debug messages
>    package_rpm: Fix solverdb generation
> 
> Saul Wold (6):
>    poky.conf: make the WHITELIST for INCOMPATIBLE_LICENSE overridable
>    gettext: reenable PARALLEL_MAKE
>    ncurses: reenable PARALLEL_MAKE
>    pango: reenable PARALLEL_MAKE
>    eds-dbus: reenable PARALLEL_MAKE
>    rpm: Fix upstream checksums
> 
> Scott Garman (5):
>    texinfo: recipe cleanup, add native support
>    sgml-common-native: fix license info and checksum fields
>    docbook-utils-native: new recipe v0.6.14
>    opensp: improve configuration and install steps
>    iputils: enable generation of man pages

Merged into master except for the last patch you rushed and it needs
cleaning up ;-).

I also held that one as we may need to adjust the sources mirror at the
same time its merged and I'd like to know how the tarball has changed
before we commit this too.

Cheers,

Richard



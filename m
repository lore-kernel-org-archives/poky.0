Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDCC0E004D1
	for <poky@yoctoproject.org>; Fri, 30 Sep 2011 09:34:26 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p8UGehMY030954; Fri, 30 Sep 2011 17:40:43 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id AdbeHW5luobr; Fri, 30 Sep 2011 17:40:43 +0100 (BST)
Received: from [192.168.1.40] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p8UGecZD030948
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Fri, 30 Sep 2011 17:40:39 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Fri, 30 Sep 2011 17:34:11 +0100
In-Reply-To: <cover.1317398102.git.paul.eggleton@linux.intel.com>
References: <cover.1317398102.git.paul.eggleton@linux.intel.com>
X-Mailer: Evolution 3.1.91- 
Message-ID: <1317400459.12332.212.camel@ted>
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] Fix audio mixer settings on beagleboard
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
X-List-Received-Date: Fri, 30 Sep 2011 16:34:28 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-09-30 at 16:57 +0100, Paul Eggleton wrote:
> On an rpm rootfs at least (did not test ipk), using RDEPENDS instead of
> RDEPENDS_${PN} does not work, so alsa-utils-amixer wasn't installed and
> beagleboard-audio was not able to set the default mixer settings.
> RDEPENDS_${PN} is the correct usage in any case.
> 
> The following changes since commit 72928abdfc00af2a7a5fac27f82e23e5de8efc4b:
> 
>   util-linux: Ensure perl scripts reference the correct perl (2011-09-28 21:51:52 +0100)
> 
> are available in the git repository at:
>   git://git.pokylinux.org/poky-contrib paule/bb-audio-fix
>   http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=paule/bb-audio-fix
> 
> Paul Eggleton (1):
>   beagleboard-audio: fix RDEPENDS on alsa-utils-amixer

Merged to master, thanks.

Richard



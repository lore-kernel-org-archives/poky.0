Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2A18E4C8009A
	for <poky@yoctoproject.org>; Tue,  8 Mar 2011 12:56:10 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p28Iu0hY023307;
	Tue, 8 Mar 2011 18:56:00 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 23224-02; Tue,  8 Mar 2011 18:55:56 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p28Itlbe023301
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 8 Mar 2011 18:55:50 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
In-Reply-To: <cover.1299544029.git.sgw@linux.intel.com>
References: <cover.1299544029.git.sgw@linux.intel.com>
Date: Tue, 08 Mar 2011 10:55:44 -0800
Message-ID: <1299610544.602.109.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [OE-core] [PATCH 0/8] Numerous bug fixes
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
X-List-Received-Date: Tue, 08 Mar 2011 18:56:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-03-07 at 16:29 -0800, Saul Wold wrote:
> From: Saul Wold <sgw@linux.intel.com>
> 
> This set address a number of bugs found during testing of
> the Bernard release, they may not all be accepeted, I send 
> them here for reference also.
> 
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: distro/oe-dist
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=distro/oe-dist
> 
> Thanks,
>     Saul Wold <sgw@linux.intel.com>
> ---
> 
> 
> Dexuan Cui (1):
>   util-macros: fix DEPENDS in the case of native/nativesdk

I think Joshua Lock is going to come up with a better patch for this as
this patch inadvertently adds in libgpg-error dependencies for native
and nativesdk which we don't want.

> Dongxiao Xu (1):
>   connman: add xuser to the dbus permission list

Merged.

> Koen Kooi (1):
>   libgpg-error: extend to nativesdk to catch up with metadata changes

Not needed with Joshua's patch.

> Liping Ke (1):
>   adt: Update to svn r596 to fix symbolic link issues

Merged.

> Nitin A Kamble (1):
>   gcc-runtime: fix LSB library checks for libstdc++.so.6

Waiting for an updated version based on Khem's comments.

> Saul Wold (3):
>   gst-plugins: Added hal to DEPENDS
>   attr: Added ncurses to depends
>   lsb-live image: add lsb-live and lsb-sdk-live image types

Merged. I'd like to drop the hal dependency if someone can send me a
patch which disables it and everything works.

Cheers,

Richard
 



Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCB8BE006D9
	for <poky@yoctoproject.org>; Tue, 26 Jun 2012 07:36:12 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q5QEa8RX004018;
	Tue, 26 Jun 2012 15:36:08 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 26014-09; Tue, 26 Jun 2012 15:36:04 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q5QEZvTI004012
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 26 Jun 2012 15:35:59 +0100
Message-ID: <1340721361.23146.11.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Saul Wold <sgw@linux.intel.com>
Date: Tue, 26 Jun 2012 15:36:01 +0100
In-Reply-To: <cover.1340643949.git.sgw@linux.intel.com>
References: <cover.1340643949.git.sgw@linux.intel.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [Consolidated Poky Pull 0/7] Poky Kernel, Tiny and scripts updates
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
X-List-Received-Date: Tue, 26 Jun 2012 14:36:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2012-06-25 at 10:07 -0700, Saul Wold wrote:
> Richard,
> 
> This pulls together a number of changes pending for meta-yocto
> in Poky Master.
> 
> Sau!
> 
> 
> The following changes since commit 5e3a61b40b7b697d83b41e7e247cd1f94eb7673c:
> 
>   bblayers.conf.sample: Fix empty BBPATH entry warnings (2012-06-25 16:35:55 +0100)
> 
> are available in the git repository at:
>   git://git.yoctoproject.org/poky-contrib sgw/stage
>   http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=sgw/stage
> 
> Bruce Ashfield (2):
>   linux-libc-headers-yocto: use kernel-arch to set ARCH
>   linux-libc-headers-yocto: update to v3.4 and remove unecessary code
> 
> Darren Hart (2):
>   busybox: Introduce poky-tiny defconfig override
>   tiny-init: Basic init mechanism for poky-tiny
> 
> Saul Wold (1):
>   upstream_tracking: Update Upgraded and Manual Checked upstream
> 
> Tom Zanussi (2):
>   yocto-bsp: update yocto-bsp machine.conf template
>   yocto-bsp: update yocto-bsp xorg.conf templates

Merged to meta-yocto master, thanks.

Richard



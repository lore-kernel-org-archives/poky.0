Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id A034C4C800A1
	for <poky@yoctoproject.org>; Wed,  1 Jun 2011 11:49:00 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p51GmxfF012363;
	Wed, 1 Jun 2011 17:48:59 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 10378-03; Wed,  1 Jun 2011 17:48:51 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p51Gmmr8012337
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 1 Jun 2011 17:48:48 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Saul Wold <sgw@linux.intel.com>
In-Reply-To: <cover.1306946141.git.sgw@linux.intel.com>
References: <cover.1306946141.git.sgw@linux.intel.com>
Date: Wed, 01 Jun 2011 17:48:28 +0100
Message-ID: <1306946908.27470.438.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] Check for non-gplv3 build before including qemu-config
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
X-List-Received-Date: Wed, 01 Jun 2011 16:49:01 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-06-01 at 09:38 -0700, Saul Wold wrote:
> This patch will check INCOMPATIBLE_LICENSE for GPLv3 before including
> qemu-config to the DISTRO_EXTRA_RDEPENDS list.
> 
> Sau!
> 
> The following changes since commit 802080eb6dd4c872ef16797f06d1aee43624a64c:
> 
>   allarch.bbclass: A "all" TARGET_ARCH is dangerous as an OVERRIDE (2011-06-01 14:13:23 +0100)
> 
> are available in the git repository at:
>   git://git.yoctoproject.org/poky-contrib sgw/patch
>   http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=sgw/patch
> 
> Saul Wold (1):
>   poky.conf: Make qemu-config optional for non-GPLv3

Merged to master, thanks.

Richard



Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 864284C80578
	for <poky@yoctoproject.org>; Tue, 10 May 2011 05:01:06 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4AA13ga004525;
	Tue, 10 May 2011 11:01:03 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 03424-03-7; Tue, 10 May 2011 11:00:56 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4A9xdxv004342
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 10 May 2011 10:59:39 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Saul Wold <sgw@linux.intel.com>
In-Reply-To: <5c24804728524d8b994c9f001cfe1ebbf7f05c83.1305004683.git.sgw@linux.intel.com>
References: <cover.1305004683.git.sgw@linux.intel.com>
	<5c24804728524d8b994c9f001cfe1ebbf7f05c83.1305004683.git.sgw@linux.intel.com>
Date: Tue, 10 May 2011 10:03:45 +0100
Message-ID: <1305018225.30391.257.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Darren Hart <dvhart@linux.intel.com>, poky@yoctoproject.org
Subject: Re: [PATCH 1/1] linux-yocto: move non-core machines to meta-yocto
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
X-List-Received-Date: Tue, 10 May 2011 10:01:07 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-05-09 at 22:25 -0700, Saul Wold wrote:
> From: Bruce Ashfield <bruce.ashfield@windriver.com>
> 
> The non-qemu compatibility references have been removed from
> the main linux-yocto recipe. This change restores them in the
> meta-yocto layer.
> 
> Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
> Acked-by: Darren Hart <dvhart@linux.intel.com>
> ---
>  meta-yocto/conf/layer.conf                         |    3 ++-
>  .../linux/linux-yocto-stable_git.bbappend          |   12 ++++++++++++
>  .../recipes-kernel/linux/linux-yocto_git.bbappend  |   12 ++++++++++++
>  3 files changed, 26 insertions(+), 1 deletions(-)
>  create mode 100644 meta-yocto/recipes-kernel/linux/linux-yocto-stable_git.bbappend
>  create mode 100644 meta-yocto/recipes-kernel/linux/linux-yocto_git.bbappend

Merged to master, thanks.

Richard



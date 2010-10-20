Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id B435C4C801BF
	for <poky@pokylinux.org>; Wed, 20 Oct 2010 04:28:45 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id o9K9SiCL014909;
	Wed, 20 Oct 2010 10:28:44 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 14820-02; Wed, 20 Oct 2010 10:28:40 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id o9K9SaHs014903
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 20 Oct 2010 10:28:36 +0100
From: Richard Purdie <rpurdie@linux.intel.com>
To: Qing He <qing.he@intel.com>
In-Reply-To: <20101020085626.GA14696@qhe2-db>
References: <20101020085626.GA14696@qhe2-db>
Date: Wed, 20 Oct 2010 10:28:28 +0100
Message-ID: <1287566908.16386.34.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky <poky@pokylinux.org>
Subject: Re: [PULL] fixes for bash and nfs-utils
X-BeenThere: poky@pokylinux.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.pokylinux.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/poky>,
	<mailto:poky-request@pokylinux.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/poky>
List-Post: <mailto:poky@pokylinux.org>
List-Help: <mailto:poky-request@pokylinux.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/poky>,
	<mailto:poky-request@pokylinux.org?subject=subscribe>
X-List-Received-Date: Wed, 20 Oct 2010 09:28:46 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-10-20 at 16:56 +0800, Qing He wrote:
> this fixes bug 483 and bug 387.
> 
> Thanks,
> Qing
> 
> ---
>  meta/recipes-connectivity/nfs-utils/nfs-utils/nfsserver |    6 +++---
>  meta/recipes-connectivity/nfs-utils/nfs-utils_1.2.2.bb  |    2 +-
>  meta/recipes-extended/bash/bash.inc                     |    2 +-
>  meta/recipes-extended/bash/bash_3.2.48.bb               |    2 +-
>  meta/recipes-extended/bash/bash_4.1.bb                  |    2 +-
>  5 files changed, 7 insertions(+), 7 deletions(-)
> 
> Qing He (2):
>       bash: fix job control
>       nfs-utils: fix nfs server initscript
> 
> Pull URL: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=qhe/fix

Merged into master, thanks!

Richard



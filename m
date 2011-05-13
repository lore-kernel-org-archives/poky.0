Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id C2B684C800AF
	for <poky@yoctoproject.org>; Fri, 13 May 2011 04:59:55 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4D9xswR015105;
	Fri, 13 May 2011 10:59:54 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 14858-05; Fri, 13 May 2011 10:59:50 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4D9xkt3015099
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 13 May 2011 10:59:46 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Nitin A Kamble <nitin.a.kamble@intel.com>
In-Reply-To: <483456db6f26684d977870434bbf3b51891c171c.1305245924.git.nitin.a.kamble@intel.com>
References: <cover.1305245922.git.nitin.a.kamble@intel.com>
	<483456db6f26684d977870434bbf3b51891c171c.1305245924.git.nitin.a.kamble@intel.com>
Date: Fri, 13 May 2011 10:59:34 +0100
Message-ID: <1305280774.19606.39.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 25/25] m4: update upstream-status for patches
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
X-List-Received-Date: Fri, 13 May 2011 09:59:56 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Nitin,

On Thu, 2011-05-12 at 17:20 -0700, Nitin A Kamble wrote:
> From: Nitin A Kamble <nitin.a.kamble@intel.com>
> 
> Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
> ---
>  meta/recipes-devtools/m4/m4/ac_config_links.patch  |    2 +
>  .../m4/m4/fix_for_circular_dependency.patch        |    2 +
>  .../m4/m4/m4-1.4.9_extra_options.patch             |  169 ++++++++++++++++++++
>  meta/recipes-devtools/m4/m4/make.patch             |    1 +
>  4 files changed, 174 insertions(+), 0 deletions(-)
>  create mode 100644 meta/recipes-devtools/m4/m4/m4-1.4.9_extra_options.patch

I didn't take this patch as there seemed to be more than a patch header
addition in this patch...

Cheers,

Richard



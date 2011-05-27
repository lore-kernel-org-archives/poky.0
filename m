Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9084F4C800AF
	for <poky@yoctoproject.org>; Fri, 27 May 2011 07:18:20 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4RCIHQA002047;
	Fri, 27 May 2011 13:18:17 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 01934-03; Fri, 27 May 2011 13:18:13 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4RCIBlN002041
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 27 May 2011 13:18:11 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Qing He <qing.he@intel.com>
In-Reply-To: <c2ef9acdefb7f8a7ac7ddfc2bf3a0d613e24851d.1306486855.git.qing.he@intel.com>
References: <cover.1306486855.git.qing.he@intel.com>
	<c2ef9acdefb7f8a7ac7ddfc2bf3a0d613e24851d.1306486855.git.qing.he@intel.com>
Date: Fri, 27 May 2011 13:18:05 +0100
Message-ID: <1306498685.27470.262.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] rpm: fix fprint pointer issue
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
X-List-Received-Date: Fri, 27 May 2011 12:18:21 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-05-27 at 17:03 +0800, Qing He wrote:
> [YOCTO #1030]
> 
> Signed-off-by: Qing He <qing.he@intel.com>
> ---
>  .../rpm/rpm/fprint-pointer-fix.patch               |   35 ++++++++++++++++++++
>  meta/recipes-devtools/rpm/rpm_5.4.0.bb             |    3 +-
>  2 files changed, 37 insertions(+), 1 deletions(-)
>  create mode 100644 meta/recipes-devtools/rpm/rpm/fprint-pointer-fix.patch
> 

Applied to master, thanks.

Richard



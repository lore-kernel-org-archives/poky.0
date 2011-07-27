Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 966904C800A1
	for <poky@yoctoproject.org>; Wed, 27 Jul 2011 10:13:13 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p6RFD74K030719;
	Wed, 27 Jul 2011 16:13:07 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 30554-02; Wed, 27 Jul 2011 16:13:03 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p6RFD1UH030713
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 27 Jul 2011 16:13:01 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <a02b26818337f27c46abaf4c2ab1913337f56bc8.1311738987.git.bruce.ashfield@windriver.com>
References: <cover.1311738987.git.bruce.ashfield@windriver.com>
	<a02b26818337f27c46abaf4c2ab1913337f56bc8.1311738987.git.bruce.ashfield@windriver.com>
Date: Wed, 27 Jul 2011 16:12:51 +0100
Message-ID: <1311779571.2344.387.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: Re: [PATCH 1/1] linux-yocto/meta-yocto: create linux-yocto 3.0 bbappend
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
X-List-Received-Date: Wed, 27 Jul 2011 15:13:14 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-07-26 at 23:58 -0400, Bruce Ashfield wrote:
> Creating a 3.0 bbappend to enable work on the hardware yocto targets.
> The SRCREV updates in this file are accurate, but compatibility
> has been commented out until support can be verified.
> 
> Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
> ---
>  .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |   15 +++++++++++++++
>  1 files changed, 15 insertions(+), 0 deletions(-)
>  create mode 100644 meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend

Merged to master, thanks.

Richard



Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AF71E01206
	for <poky@yoctoproject.org>; Tue,  8 May 2012 08:18:19 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q48FIBnE004268;
	Tue, 8 May 2012 16:18:11 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 03507-07; Tue,  8 May 2012 16:18:06 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q48FI37n004243
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 8 May 2012 16:18:04 +0100
Message-ID: <1336490287.30349.0.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Tue, 08 May 2012 16:18:07 +0100
In-Reply-To: <8ace3005d974562b7a5f52e8f683cebd2337a4af.1336488562.git.bruce.ashfield@windriver.com>
References: <cover.1336488562.git.bruce.ashfield@windriver.com>
	<8ace3005d974562b7a5f52e8f683cebd2337a4af.1336488562.git.bruce.ashfield@windriver.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: Re: [PATCH 1/1] meta-yocto/linux-yocto-3.0: update branch mappings for new tools
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
X-List-Received-Date: Tue, 08 May 2012 15:18:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-05-08 at 10:52 -0400, Bruce Ashfield wrote:
> Updates to the kern-tools to be more flexible and support multiple
> upstream repository formats means that KMACHINE should really only
> map to a machine and that KBRANCH should specify branch information.
> 
> To adapt to this change, we split the hardware reference boards into
> KMACHINE and KBRANCH mappings.
> 
> Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
> ---
>  .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |   10 ++++++----
>  1 files changed, 6 insertions(+), 4 deletions(-)

Merged to master, thanks.

Richard



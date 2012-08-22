Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 399DDE01388
	for <poky@yoctoproject.org>; Wed, 22 Aug 2012 06:05:58 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q7MD5sXG003377;
	Wed, 22 Aug 2012 14:05:54 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 03272-02; Wed, 22 Aug 2012 14:05:49 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q7MD5jeg003369
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO);
	Wed, 22 Aug 2012 14:05:46 +0100
Message-ID: <1345640747.3907.118.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Darren Hart <dvhart@linux.intel.com>
Date: Wed, 22 Aug 2012 14:05:47 +0100
In-Reply-To: <05d539a9494fad9e5a84891631abe046c16b3063.1345566425.git.dvhart@linux.intel.com>
References: <05d539a9494fad9e5a84891631abe046c16b3063.1345566425.git.dvhart@linux.intel.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, Poky <poky@yoctoproject.org>
Subject: Re: [PATCH V3] README: Clarify where to send patches
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 22 Aug 2012 13:05:59 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-08-21 at 09:27 -0700, Darren Hart wrote:
> There is still a great deal of confusion over where patches for the
> various components of the poky repository should be sent. Attempt to
> mitigate this by including a blurb in the poky README similar to what
> other layers and repositories do.
> 
> V2: Call out the special care required when dealing with the scripts
>     directory per Saul Wold's recommendation.
> 
> V3: Recommend applying patches to oe-core prior to sending patches to
>     the oe-core mailing list.
> 
> Signed-off-by: Darren Hart <dvhart@linux.intel.com>
> CC: Richard Purdie <richard.purdie@intel.com>
> CC: Paul Gortmaker <paul.gortmaker@windriver.com>
> CC: Paul Eggleton <paul.eggleton@linux.intel.com>
> CC: Khem Raj <raj.khem@gmail.com>
> ---
>  README | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)


Merged to master, thanks.

Richard



Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 264464C80B6B
	for <poky@yoctoproject.org>; Mon, 22 Nov 2010 09:33:27 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAMFXOBe028956;
	Mon, 22 Nov 2010 15:33:24 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 28922-01; Mon, 22 Nov 2010 15:33:20 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAMFXITw028950
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 22 Nov 2010 15:33:18 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Joshua Lock <josh@openedhand.com>
In-Reply-To: <1290434035.2579.15.camel@scimitar>
References: <4CE8FECD.5050905@mlbassoc.com> <1290434035.2579.15.camel@scimitar>
Date: Mon, 22 Nov 2010 15:33:17 +0000
Message-ID: <1290439997.1272.16996.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: BBFILE_PRIORITY confusion
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
X-List-Received-Date: Mon, 22 Nov 2010 15:33:27 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2010-11-22 at 13:53 +0000, Joshua Lock wrote:
> On Sun, 2010-11-21 at 04:13 -0700, Gary Thomas wrote:
> > 
> > It seems to me that BBFILE_PRIORITY is a bit too zealous; barring any other
> > constraint, I should think that the 2.6.32 recipe should always take precedence.
> > 
> > Am I missing something here, or is it a bug?
> > 
> 
> This is working exactly as intended, you've told bitbake that the
> manufacturer layer has a higher priority so it's using that to satisfy
> any recipe it can, regardless of version. If you'd like the platform to
> be able to be prioritised over the manufacturer you'd need to adjust the
> priority accordingly.
> 
> If you want the most highest version recipe to be used, regardless of
> layer, you could set the priorities to be the same.
> 
> Perhaps you could work around this by having your platforms pin specific
> kernel versions when they need an older kernel?

Or you give the layers the same priority, then the usual mechanisms take
effect. As Joshua says, its doing exactly what its intended to do
though.

Cheers,

Richard




Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 107564C80053
	for <poky@lists.pokylinux.org>; Wed,  9 Feb 2011 19:37:17 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1A1bHR5009130;
	Thu, 10 Feb 2011 01:37:17 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 08703-07; Thu, 10 Feb 2011 01:37:13 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1A1b9dL009124
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 10 Feb 2011 01:37:09 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4D533BCA.9000902@mlbassoc.com>
References: <4D533BCA.9000902@mlbassoc.com>
Date: Thu, 10 Feb 2011 01:37:06 +0000
Message-ID: <1297301826.20543.1722.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: git tarballs gone?
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
X-List-Received-Date: Thu, 10 Feb 2011 01:37:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-02-09 at 18:13 -0700, Gary Thomas wrote:
> I just noticed that with the new fetcher, git tarballs are
> no longer being created.
>    * Is this expected?
>    * Can it be [re]enabled?  This is a great help to me so I
>      can distribute pre-staged sources to my customers. Tarballs
>      are much more convenient than .git repositories.

Its expected, just set BB_GENERATE_MIRROR_TARBALLS = "1" in local.conf
to generate them if you need them. 

As standard the average user doesn't need/use/want them and the fetcher
no longer needs them so we don't generate them by default any more.

Cheers,

Richard



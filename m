Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 174C74C801BF
	for <poky@pokylinux.org>; Thu, 21 Oct 2010 07:51:14 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id o9LCpAP8002763;
	Thu, 21 Oct 2010 13:51:10 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 02254-09; Thu, 21 Oct 2010 13:51:06 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id o9LCp5KS002757
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 21 Oct 2010 13:51:06 +0100
From: Richard Purdie <rpurdie@linux.intel.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
In-Reply-To: <AANLkTikBkCSh7kJfshniCFpAqky+stOHmVL1NtQZxTLh@mail.gmail.com>
References: <AANLkTikBkCSh7kJfshniCFpAqky+stOHmVL1NtQZxTLh@mail.gmail.com>
Date: Thu, 21 Oct 2010 13:50:55 +0100
Message-ID: <1287665455.16386.454.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky <poky@pokylinux.org>
Subject: Re: [PULL] powerpc build fixes
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
X-List-Received-Date: Thu, 21 Oct 2010 12:51:15 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-10-21 at 00:46 -0400, Bruce Ashfield wrote:
> When building poky-image-sato, two build errors popped up. When
> the original integration was done, the tuning bounced back and forth
> on this, it looks like a mismatch was sent up for merge mistakenly.
> 
> This fixes the tuning and tweaks gst-ffmpeg to get everything building
> for sato. I don't see the need for altivec tests (or optimizations) for
> gst-ffmpeg at the moment, so my suggestion is to simply disable
> the tests.

Merged to master, thanks.

Richard



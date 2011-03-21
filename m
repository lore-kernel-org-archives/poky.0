Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 142CB4C80132
	for <poky@lists.pokylinux.org>; Mon, 21 Mar 2011 06:58:03 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2LBw492012649;
	Mon, 21 Mar 2011 11:58:04 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 12187-07; Mon, 21 Mar 2011 11:58:00 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2LBvt8g012643
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 21 Mar 2011 11:57:56 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4D86B0D2.2070004@mlbassoc.com>
References: <4D86B0D2.2070004@mlbassoc.com>
Date: Mon, 21 Mar 2011 11:57:31 +0000
Message-ID: <1300708651.30423.3434.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: RPM vs IPK
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
X-List-Received-Date: Mon, 21 Mar 2011 11:58:04 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2011-03-20 at 19:58 -0600, Gary Thomas wrote:
> I know that historically Poky has used 'ipk' as the primary packaging
> mechanism.  It seems that now Poky/Yocto has move to 'rpm'.  My distribution
> is still using ipk, but I'm happy to change, given a good argument.
> 
> * Is there such [a good reason] to use rpm over ipk?
> * What are the pros and cons?  I'm mostly interested in very resource limited
>    deeply embedded systems which often only run from FLASH.
> 
> Thanks for any comments

My advice is that for such a resource limited system, you're probably
best of sticking to ipk, particularly if you have it working already.

opkg:

* Has a smaller disk footprint
* Is generally faster than rpm

rpm+zypper:

* More of an industry standard
* Emphasises correctness and robustness over speed (e.g. number of 
  fsync calls)
* Has desktop/enterprise features
* Not optimised for size (e.g. uses c++)

I'd not say one was better than the other, they're just different and
suit different use cases.

Cheers,

Richard





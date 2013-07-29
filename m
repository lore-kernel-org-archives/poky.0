Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A09FCE013DE
	for <poky@yoctoproject.org>; Mon, 29 Jul 2013 00:29:22 -0700 (PDT)
Received: from air.local (host86-137-85-147.range86-137.btcentralplus.com
	[86.137.85.147])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id D7FF5956F
	for <poky@yoctoproject.org>; Mon, 29 Jul 2013 08:29:20 +0100 (BST)
Message-ID: <51F619CF.5010607@r-finger.com>
Date: Mon, 29 Jul 2013 08:29:19 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:17.0) Gecko/20130620 Thunderbird/17.0.7
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <1374770285-22235-1-git-send-email-ross.burton@intel.com>
	<1374770285-22235-5-git-send-email-ross.burton@intel.com>
In-Reply-To: <1374770285-22235-5-git-send-email-ross.burton@intel.com>
Subject: Re: [PATCH 4/6] genericx86: disable rootless X
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
X-List-Received-Date: Mon, 29 Jul 2013 07:29:22 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 25/07/2013 17:38, Ross Burton wrote:
> Not all video drivers support rootless X and this BSP aims to have broader
> support than atom-pc.

Which drivers do you have in mind here? AFAICT this patch set / BSP only
supports the i9x5 family of drivers out of the box, where this is not an
issue. In this day and age rootless X should be the norm, not the
exception, so I think it would be preferable to document the need to
disable rootless X with any such substandard drivers rather than have a
suboptimal lowest common denominator for the generic x86 machine.

Tomas


--
http://sleepfive.com


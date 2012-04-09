Return-Path: <derek.buitenhuis@gmail.com>
Received: from mail-gy0-f176.google.com (mail-gy0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46810E0059A
	for <poky@yoctoproject.org>; Mon,  9 Apr 2012 13:48:32 -0700 (PDT)
Received: by ghbz10 with SMTP id z10so2618750ghb.35
	for <poky@yoctoproject.org>; Mon, 09 Apr 2012 13:48:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:x-enigmail-version:content-type
	:content-transfer-encoding;
	bh=oDI2pJ6PGhaHcp4anYkSs2GWxauvF1MXqYfXuhRa2xw=;
	b=cAUy906Nh/7o8kRYIWO1RscDGyYkOWeQbgbxutSNpP2MEE63IBQJCsyHpjTua38ZOK
	uBqhh9uftVzzyz0RJt6hYF+UEcwAz6NicfB0D+3X6icsh5dJcJUJ9tigMH74AYijCrRq
	sPUT1VRwmVCvVLIiCNOoaM7iYrbb//td8HTtmqEkc0LGxBSvGn8S4MqevKFtuQJvTmL6
	RsZ0/Rxb0o1jO6I633ZznbFmj6L781y14TMI/m59DgAURbT+8U/KBNGq3yHPASEw53Na
	9kZ7EGXahEqSk0WjpTx1YU84BuZ54CUkq0s+V1iDHQUyARchHIMrIVOYua5dWAaqpbot
	W3+A==
Received: by 10.60.172.231 with SMTP id bf7mr12206847oec.45.1334004511583;
	Mon, 09 Apr 2012 13:48:31 -0700 (PDT)
Received: from [192.168.1.111] (S0106586d8f4832af.tb.shawcable.net.
	[24.109.142.27])
	by mx.google.com with ESMTPS id t5sm13749944oef.10.2012.04.09.13.48.30
	(version=SSLv3 cipher=OTHER); Mon, 09 Apr 2012 13:48:31 -0700 (PDT)
Message-ID: <4F834B2C.7080702@gmail.com>
Date: Mon, 09 Apr 2012 16:48:44 -0400
From: Derek Buitenhuis <derek.buitenhuis@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:11.0) Gecko/20120327 Thunderbird/11.0.1
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4F7F2AA5.2010400@linux.intel.com> <4F801898.2060107@freyther.de>
	<4F833F34.5050901@linux.intel.com> <4F834601.6020507@gmail.com>
	<4F8347A1.3050007@linux.intel.com>
	<4F834AB9.8060907@linux.intel.com>
In-Reply-To: <4F834AB9.8060907@linux.intel.com>
X-Enigmail-Version: 1.4
Subject: Re: Edison Next
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
X-List-Received-Date: Mon, 09 Apr 2012 20:48:32 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 09/04/2012 4:46 PM, Saul Wold wrote:
> Joshua is correct, we should update the FAQ to state "Major Version" 
> changes to toolchain or kernel.  If there is a CVE that is addressed by 
> a patch or maintence update we will ensure those get in.

OK. Thanks.

- Derek


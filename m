Return-Path: <derek.buitenhuis@gmail.com>
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3527CE00596
	for <poky@yoctoproject.org>; Mon,  9 Apr 2012 13:26:30 -0700 (PDT)
Received: by ggcs6 with SMTP id s6so2600658ggc.35
	for <poky@yoctoproject.org>; Mon, 09 Apr 2012 13:26:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:x-enigmail-version:content-type
	:content-transfer-encoding;
	bh=0Ne1IoYSrJQqhPO8Th+tg3go3jirkzuDk59hCrOtdKc=;
	b=yVT2XpEZE6PHH5S2+LjWynlTrgbM9HJ5VAlrTOTTksDqUdCDKpiEahuuLpURj0uhHH
	451ijACzDvKP6lktEwTlNCqGalReSciNZTu+8WGXIAGtt65FV4DQEKi1bxogf4xJch+g
	bjGyjNmm+XwiwEIazFG6dzf989Kx3FtwUvWB3ihmn/+E5WYi4tXgcCZkXHmcouGK1WAF
	Uk4gJakzZOOdoAbdHtqqw2ZWfwCOeENYjzEXsVNJ1eEiFXZvL+sfUEx36JxbtSplKTF9
	rViYeCbpLW3HHWeDvUVScsOmv19lumFUMfasjBcQ0oNnPEUYxVuJ/Cgg87fRrUKw6Ukz
	AVUA==
Received: by 10.60.8.129 with SMTP id r1mr12168337oea.28.1334003189486;
	Mon, 09 Apr 2012 13:26:29 -0700 (PDT)
Received: from [192.168.1.111] (S0106586d8f4832af.tb.shawcable.net.
	[24.109.142.27])
	by mx.google.com with ESMTPS id m3sm13697126oem.7.2012.04.09.13.26.28
	(version=SSLv3 cipher=OTHER); Mon, 09 Apr 2012 13:26:28 -0700 (PDT)
Message-ID: <4F834601.6020507@gmail.com>
Date: Mon, 09 Apr 2012 16:26:41 -0400
From: Derek Buitenhuis <derek.buitenhuis@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:11.0) Gecko/20120327 Thunderbird/11.0.1
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4F7F2AA5.2010400@linux.intel.com> <4F801898.2060107@freyther.de>
	<4F833F34.5050901@linux.intel.com>
In-Reply-To: <4F833F34.5050901@linux.intel.com>
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
X-List-Received-Date: Mon, 09 Apr 2012 20:26:30 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 09/04/2012 3:57 PM, Joshua Lock wrote:
> "Q: What is the overall support plan for the Yocto Project?
> 
> A: Security patches and critical bug fixes are supplied one release 
> back. No toolchain or kernel changes are allowed for these updates. 
> Support for longer periods of time can be supplied by commercial OSVs."

Random Question:

The above FAQ is a tad vague... what if the kernel or toolchain change
is a security fix?

- Derek


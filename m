Return-Path: <alexandre.belloni@free-electrons.com>
Received: from mail.free-electrons.com (top.free-electrons.com [176.31.233.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 647D1E0084B
	for <poky@yoctoproject.org>; Tue,  7 Jan 2014 06:15:47 -0800 (PST)
Received: by mail.free-electrons.com (Postfix, from userid 106)
	id 00D9C8AD; Tue,  7 Jan 2014 15:15:50 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	mail.free-electrons.com
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT
	shortcircuit=ham autolearn=disabled version=3.3.2
Received: from [192.168.1.65] (128-79-216-6.hfc.dyn.abo.bbox.fr [128.79.216.6])
	by mail.free-electrons.com (Postfix) with ESMTPSA id 31DC57CD;
	Tue,  7 Jan 2014 15:14:31 +0100 (CET)
Message-ID: <52CC0BC0.8050103@free-electrons.com>
Date: Tue, 07 Jan 2014 15:14:24 +0100
From: Alexandre Belloni <alexandre.belloni@free-electrons.com>
Organization: Free Electrons
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <1389102512-15615-1-git-send-email-alexandre.belloni@free-electrons.com>
	<1389103396.6899.29.camel@ted>
In-Reply-To: <1389103396.6899.29.camel@ted>
X-Enigmail-Version: 1.5.2
Cc: "Hart, Darren" <darren.hart@intel.com>,
	Darren Hart <dvhart@linux.intel.com>, poky@yoctoproject.org
Subject: Re: [PATCH] kernel: use oldnoconfig instead of yes '' | make oldconfig
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
X-List-Received-Date: Tue, 07 Jan 2014 14:15:48 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 07/01/2014 15:03, Richard Purdie wrote:
> Could you post this to the openembedded-core list please. I've cc'd a
> couple of people who should review this to.
> 

Right, I was too quick and assumed what was in poky was for poky@, I
forgot about meta going to openembedded-core. Will do.


-- 
Alexandre Belloni, Free Electrons
Embedded Linux, Kernel and Android engineering
http://free-electrons.com


Return-Path: <Paul.Gortmaker@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3283AE00599
	for <poky@yoctoproject.org>; Fri, 27 Jan 2012 09:39:46 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q0RHdfMo021716
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 27 Jan 2012 09:39:41 -0800 (PST)
Received: from [128.224.146.65] (128.224.146.65) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 27 Jan 2012 09:39:41 -0800
Message-ID: <4F22E15B.4070105@windriver.com>
Date: Fri, 27 Jan 2012 12:39:39 -0500
From: Paul Gortmaker <paul.gortmaker@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.24) Gecko/20111109 Thunderbird/3.1.16
MIME-Version: 1.0
To: Wolfgang Denk <wd@denx.de>
References: <1327681281-11454-1-git-send-email-paul.gortmaker@windriver.com>
	<1327681281-11454-2-git-send-email-paul.gortmaker@windriver.com>
	<20120127173315.A632E1581959@gemini.denx.de>
In-Reply-To: <20120127173315.A632E1581959@gemini.denx.de>
X-Originating-IP: [128.224.146.65]
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/3] u-boot: Don't make the -Os removal part of global settings.
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
X-List-Received-Date: Fri, 27 Jan 2012 17:39:46 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On 12-01-27 12:33 PM, Wolfgang Denk wrote:
> Dear Paul Gortmaker,
> 
> In message <1327681281-11454-2-git-send-email-paul.gortmaker@windriver.com> you wrote:
>> We don't want to force everyone to be stripping the -Os
>> flags from their u-boot builds.  Move it to the existing
>> recipes so that current behaviour is maintained, while
>> opening up the possibility for new recipes to avoid it.
> 
> Is there any reason to keep this at all?  The compiler issues that
> caused builds with -Os to fail have long been fixed.

I would agree with you, but as I said in the commit log,
I don't want to be changing other people's settings that
I can't personally test.  If the owners of those platforms
figure that is an acceptable risk, then I'll gladly send
another patch to remove the -Os toggle entirely.

Paul.

> 
> Best regards,
> 
> Wolfgang Denk
> 


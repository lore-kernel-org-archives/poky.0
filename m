Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 416984C80287
	for <poky@lists.pokylinux.org>; Sun, 21 Nov 2010 06:43:38 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 960FF16605BA; Sun, 21 Nov 2010 05:43:37 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 48B2516605B2;
	Sun, 21 Nov 2010 05:43:36 -0700 (MST)
Message-ID: <4CE913F7.5070906@mlbassoc.com>
Date: Sun, 21 Nov 2010 05:43:35 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.12) Gecko/20101027 Fedora/3.1.6-1.fc13 Thunderbird/3.1.6
MIME-Version: 1.0
To: Richard Purdie <rpurdie@linux.intel.com>
References: <4CE8EC19.6030103@mlbassoc.com> <1290342337.1272.15331.camel@rex>
In-Reply-To: <1290342337.1272.15331.camel@rex>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: meta-toolchain-sdk
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
X-List-Received-Date: Sun, 21 Nov 2010 12:43:38 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/21/2010 05:25 AM, Richard Purdie wrote:
> On Sun, 2010-11-21 at 02:53 -0700, Gary Thomas wrote:
>> I just did a build of the SDK using a fairly recent tree (from 2010-11-17).
>> I was surprised to find the resulting tarball stored in my home directory,
>> not tmp/deploy/sdk!
>>
>> Is this expected?  When/why was this change made?
>>
>> Just curious...
>
> There has been no change with the effect, it should be tmp/deploy/sdk as
> always. Was anything placed into the sdk directory? This sounds a little
> odd/worrying if it has changed...

There's nothing at all in tmp/deploy/sdk

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------


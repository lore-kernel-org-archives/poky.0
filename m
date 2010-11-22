Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 63C094C80B6B
	for <poky@yoctoproject.org>; Mon, 22 Nov 2010 09:37:40 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 2404016607F1; Mon, 22 Nov 2010 08:37:40 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id D03A41660787;
	Mon, 22 Nov 2010 08:37:38 -0700 (MST)
Message-ID: <4CEA8E42.1060404@mlbassoc.com>
Date: Mon, 22 Nov 2010 08:37:38 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.12) Gecko/20101027 Fedora/3.1.6-1.fc13 Thunderbird/3.1.6
MIME-Version: 1.0
To: Richard Purdie <rpurdie@linux.intel.com>
References: <4CE8FECD.5050905@mlbassoc.com> <1290434035.2579.15.camel@scimitar>
	<1290439997.1272.16996.camel@rex>
In-Reply-To: <1290439997.1272.16996.camel@rex>
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
X-List-Received-Date: Mon, 22 Nov 2010 15:37:40 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/22/2010 08:33 AM, Richard Purdie wrote:
> On Mon, 2010-11-22 at 13:53 +0000, Joshua Lock wrote:
>> On Sun, 2010-11-21 at 04:13 -0700, Gary Thomas wrote:
>>>
>>> It seems to me that BBFILE_PRIORITY is a bit too zealous; barring any other
>>> constraint, I should think that the 2.6.32 recipe should always take precedence.
>>>
>>> Am I missing something here, or is it a bug?
>>>
>>
>> This is working exactly as intended, you've told bitbake that the
>> manufacturer layer has a higher priority so it's using that to satisfy
>> any recipe it can, regardless of version. If you'd like the platform to
>> be able to be prioritised over the manufacturer you'd need to adjust the
>> priority accordingly.
>>
>> If you want the most highest version recipe to be used, regardless of
>> layer, you could set the priorities to be the same.
>>
>> Perhaps you could work around this by having your platforms pin specific
>> kernel versions when they need an older kernel?
>
> Or you give the layers the same priority, then the usual mechanisms take
> effect. As Joshua says, its doing exactly what its intended to do
> though.

Fair enough, but I have to admit that it's certainly not clear in the
documentation that priority overrides version numbers no matter what.

I've changed my setup to use equal priorities as that does what I want.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------


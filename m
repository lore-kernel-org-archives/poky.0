Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4098E00307
	for <poky@yoctoproject.org>; Fri,  3 Feb 2012 05:27:56 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 7B156F811F2; Fri,  3 Feb 2012 06:27:53 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id AD266F811EC;
	Fri,  3 Feb 2012 06:27:51 -0700 (MST)
Message-ID: <4F2BE0D7.7040101@mlbassoc.com>
Date: Fri, 03 Feb 2012 06:27:51 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4F2B1AC9.9000904@mlbassoc.com> <1328263676.3895.86.camel@ted>
In-Reply-To: <1328263676.3895.86.camel@ted>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: require statement does not honor .bbappend
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
X-List-Received-Date: Fri, 03 Feb 2012 13:27:57 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-02-03 03:07, Richard Purdie wrote:
> On Thu, 2012-02-02 at 16:22 -0700, Gary Thomas wrote:
>> This is really a bitbake problem, but I'll bring it up here.
>>
>> I have a statement like this in one of my recipes:
>>      require xyz.bb
>>
>> If I also have within my layers a xyz.bbappend file, it gets
>> processed when I build xyz, e.g.
>>     % bitbake xyz
>> but is ignored when I only 'require' that recipe.
>>
>> Should it not be always processed?
>
> No, as designed and implemented you can't bbappend to anything being
> used as an include (or require), only the final .bb file.

Bummer.  What's the rationale behind this [restriction]?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------


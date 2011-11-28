Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C6C8E00303
	for <poky@yoctoproject.org>; Mon, 28 Nov 2011 13:31:50 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id C786316607F9; Mon, 28 Nov 2011 14:31:47 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 4B2B9166038B;
	Mon, 28 Nov 2011 14:31:47 -0700 (MST)
Message-ID: <4ED3FDC3.6030805@mlbassoc.com>
Date: Mon, 28 Nov 2011 14:31:47 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:7.0.1) Gecko/20110930 Thunderbird/7.0.1
MIME-Version: 1.0
To: Joshua Lock <josh@linux.intel.com>
References: <4ED3F3BF.6030305@mlbassoc.com> <4ED3F4D5.3060106@linux.intel.com>
In-Reply-To: <4ED3F4D5.3060106@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: Fixed /etc/resolv.conf
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
X-List-Received-Date: Mon, 28 Nov 2011 21:31:50 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2011-11-28 13:53, Joshua Lock wrote:
>
>
> On 28/11/11 12:49, Gary Thomas wrote:
>> I'd like to have my network hard-wired - fixed IP, fixed /etc/resolv.conf
>>
>> I can see how to adjust my network settings by providing my own version of
>> /etc/network/interfaces.  However, I don't see how to have a fixed
>> (immutable)
>> version of /etc/resolv.conf
>>
>> Any ideas?
>
> Do you have connman in your image? If so, do you need it if you're
> providing static versions of those files?

No conman/network-manager is included.  This image needs to be static
and as absolutely minimal as possible.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------


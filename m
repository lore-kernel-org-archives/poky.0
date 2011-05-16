Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id C10474C803BA
	for <poky@yoctoproject.org>; Mon, 16 May 2011 11:49:24 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 41BD6166019A; Mon, 16 May 2011 10:49:24 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 5EB521660191;
	Mon, 16 May 2011 10:49:23 -0600 (MDT)
Message-ID: <4DD15593.5030400@mlbassoc.com>
Date: Mon, 16 May 2011 10:49:23 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Saul Wold <saul.wold@intel.com>
References: <4DD10B56.1060700@mlbassoc.com> <4DD1524C.9020305@intel.com>
In-Reply-To: <4DD1524C.9020305@intel.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH resend] Kernel command line options for runqemu
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
X-List-Received-Date: Mon, 16 May 2011 16:49:25 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/16/2011 10:35 AM, Saul Wold wrote:
> On 05/16/2011 04:32 AM, Gary Thomas wrote:
>> This patch lets the user add options to the kernel command line when
>> started via runqemu. Very useful for things like 'psplash=false'
>>
>>
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>
> Gary,
>
> This is a reasonable idea, but it exposes an internal variable that might change in the future, so am I hesitant to take this.

Without it, the only way to change the kernel command line is by
editing the script, which doesn't seem very friendly.

Would you feel better if it were a special variable, just for
this purpose, which is by default empty?  I was just using the
infrastructure that was already in place.

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------


Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id E1F714C80A46
	for <poky@yoctoproject.org>; Tue,  3 May 2011 18:20:41 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 88F7E166027D; Tue,  3 May 2011 17:20:41 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 51B12166026E;
	Tue,  3 May 2011 17:20:40 -0600 (MDT)
Message-ID: <4DC08DC8.908@mlbassoc.com>
Date: Tue, 03 May 2011 17:20:40 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
References: <4DC07C9A.8080202@mlbassoc.com>
	<20110503231224.GA5966@sakrah.homelinux.org>
In-Reply-To: <20110503231224.GA5966@sakrah.homelinux.org>
Subject: Re: Incorrect startup warning on ARM targets
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
X-List-Received-Date: Tue, 03 May 2011 23:20:42 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/03/2011 05:12 PM, Khem Raj wrote:
> On (03/05/11 16:07), Gary Thomas wrote:
>> When building for an ARM target, you may see this error:
>>    /proc/sys/vm/mmap_min_addr is not<= 65536. This will cause problems with qemu so please fix the value (as root)
>>
>> This is a show-stopper; bitbake refuses to run until it's fixed.
>> However, I don't believe it is useful or required any longer.  From
>> my understanding, it was there in the past because QEMU for ARM didn't
>> work correctly unless this system parameter was set as indicated.  That
>> was when QEMU was being used during the build to create localization
>> data.  This is no longer being done and QEMU is not used during the
>> build process.
>>
>> Perhaps we could eliminate this warning or make it conditional
>> somehow?  As is, asking the user to make a system-wide setting
>> as root for something that's not necessary seems wrong.
>
> This warning is taken care of in qemu-native we build. But I think its
> already fixed in upstream oe-core

It's still in the Poky tree (sanity.bbclass) which is what I'm asking about.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------


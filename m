Return-Path: <raj.khem@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E839FE00536
	for <poky@yoctoproject.org>; Mon,  3 Oct 2011 13:14:16 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ywb3 with SMTP id 3so5344433ywb.35
	for <poky@yoctoproject.org>; Mon, 03 Oct 2011 13:14:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=rteqIsDiXoAxoMe1GEF5U8vrU6rXF1HE6KkgAqZZQNQ=;
	b=XkMzas1a3SqKMqvEyZ2V6cZSmSmDwc/0IUPhvFInqbrLK5d/sZaPHwzQWBSjUpKFjW
	2oo50g+G/j10RE0wyrXZbP1IclxhkiJCV79JRbfAAWZl3lfBhkiMnTPUz5Y31rQbhehj
	8KxxvSEw9EtgWSv9sDBcbFXuIa/f3WDsqnLNI=
Received: by 10.236.201.233 with SMTP id b69mr2299350yho.51.1317672856140;
	Mon, 03 Oct 2011 13:14:16 -0700 (PDT)
Received: from [172.23.2.133] (natint3.juniper.net. [66.129.224.36])
	by mx.google.com with ESMTPS id d5sm16823519yhl.19.2011.10.03.13.14.14
	(version=SSLv3 cipher=OTHER); Mon, 03 Oct 2011 13:14:15 -0700 (PDT)
Message-ID: <4E8A1795.6020306@gmail.com>
Date: Mon, 03 Oct 2011 13:14:13 -0700
From: Khem Raj <raj.khem@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4E862363.8010704@mlbassoc.com> <4E89CDC9.9050500@mlbassoc.com>
In-Reply-To: <4E89CDC9.9050500@mlbassoc.com>
Subject: Re: web2 on PPC
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
X-List-Received-Date: Mon, 03 Oct 2011 20:14:17 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10/3/2011 7:59 AM, Gary Thomas wrote:
> On 2011-09-30 14:15, Gary Thomas wrote:
>> I'm trying to run the web-webkit browser on my PowerPC system (built
>> using Poky).
>> I've built this on ARM and it runs great, but on PowerPC it fails
>> almost immediately.
>> Following into the failure with GDB, it looks like it's trying to
>> build up a string
>> using a [possibly] wide character iterator. It fails on line 76 of the
>> code below,
>> going through it by hand shows that 'iterator' is NULL.
>>
>> (gdb) dir
>> /local/logopak8347tbga_new/tmp/work/ppc603e-amltd-linux/webkit-gtk-1.5.1+svnr90727-r0
>>
>> (gdb) l
>> 71 TextBreakIterator* acquireLineBreakIterator(const UChar* string,
>> int length, const AtomicString& locale)
>> 72 {
>> 73 UBreakIterator* iterator =
>> LineBreakIteratorPool::sharedPool().take(locale);
>> 74
>> 75 UErrorCode setTextStatus = U_ZERO_ERROR;
>> 76 ubrk_setText(iterator, string, length, &setTextStatus);
>> 77 if (U_FAILURE(setTextStatus)) {
>> 78 LOG_ERROR("ubrk_setText failed with status %d", setTextStatus);
>> 79 return 0;
>> 80 }
>> (gdb) b 75
>> Breakpoint 1 at 0xf8a7440: file
>> Source/WebCore/platform/text/TextBreakIteratorICU.cpp, line 75.
>>
>> Any ideas what might be wrong here? Maybe some confusion about wide vs
>> not-wide
>> character representation (I've seen this one a lot, especially on
>> PowerPC systems)?
>> Any clues where to look next?
>> I did note that 'locale' into this function is also NULL.
>>
>> Should I file a bug?
>>
>> Note: I tried this with the stock Poky master
>> 9d1db6cc928199f8ac4960e8d4648563ef141427
>> building for qemuppc and running web2 via ssh -X (since qemu doesn't
>> support graphics?)
>> The failure is the same, so this is not something special in my setup.
>>
>> Note 2: it's difficult to get this to fail when running in qemu since
>> it only fails
>> when it's loading and rendering the www.google.co.uk default page. I
>> couldn't figure
>> out how to get my qemu system to be able to access that page over the
>> net, but I ran
>> the same Yocto filesystem on my hardware (this is not a hardware bug)
>> with the same
>> failure. Maybe someone smarter than me can show me how to get qemu to
>> actually access
>> the internet (when the machine that's running qemu is inside a NAT'd
>> zone)?
>>
>> Thanks for any help/ideas
>>
>
> Filed as http://bugzilla.pokylinux.org/show_bug.cgi?id=1570
>
> Still looking for ideas on where to look, how to debug this.

such problems can happen when autoconf variables are not cached with 
right values. So look into site files. What variables to look for can be
taken from config.log of the package.


>
> Thanks
>



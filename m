Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06C5BE004E9
	for <poky@yoctoproject.org>; Mon,  3 Oct 2011 07:59:28 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 6F6FF1660321; Mon,  3 Oct 2011 08:59:27 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id EB89916602EE;
	Mon,  3 Oct 2011 08:59:21 -0600 (MDT)
Message-ID: <4E89CDC9.9050500@mlbassoc.com>
Date: Mon, 03 Oct 2011 08:59:21 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:6.0.2) Gecko/20110906 Thunderbird/6.0.2
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
References: <4E862363.8010704@mlbassoc.com>
In-Reply-To: <4E862363.8010704@mlbassoc.com>
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
X-List-Received-Date: Mon, 03 Oct 2011 14:59:29 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2011-09-30 14:15, Gary Thomas wrote:
> I'm trying to run the web-webkit browser on my PowerPC system (built using Poky).
> I've built this on ARM and it runs great, but on PowerPC it fails almost immediately.
> Following into the failure with GDB, it looks like it's trying to build up a string
> using a [possibly] wide character iterator. It fails on line 76 of the code below,
> going through it by hand shows that 'iterator' is NULL.
>
> (gdb) dir /local/logopak8347tbga_new/tmp/work/ppc603e-amltd-linux/webkit-gtk-1.5.1+svnr90727-r0
> (gdb) l
> 71 TextBreakIterator* acquireLineBreakIterator(const UChar* string, int length, const AtomicString& locale)
> 72 {
> 73 UBreakIterator* iterator = LineBreakIteratorPool::sharedPool().take(locale);
> 74
> 75 UErrorCode setTextStatus = U_ZERO_ERROR;
> 76 ubrk_setText(iterator, string, length, &setTextStatus);
> 77 if (U_FAILURE(setTextStatus)) {
> 78 LOG_ERROR("ubrk_setText failed with status %d", setTextStatus);
> 79 return 0;
> 80 }
> (gdb) b 75
> Breakpoint 1 at 0xf8a7440: file Source/WebCore/platform/text/TextBreakIteratorICU.cpp, line 75.
>
> Any ideas what might be wrong here? Maybe some confusion about wide vs not-wide
> character representation (I've seen this one a lot, especially on PowerPC systems)?
> Any clues where to look next?
> I did note that 'locale' into this function is also NULL.
>
> Should I file a bug?
>
> Note: I tried this with the stock Poky master 9d1db6cc928199f8ac4960e8d4648563ef141427
> building for qemuppc and running web2 via ssh -X (since qemu doesn't support graphics?)
> The failure is the same, so this is not something special in my setup.
>
> Note 2: it's difficult to get this to fail when running in qemu since it only fails
> when it's loading and rendering the www.google.co.uk default page. I couldn't figure
> out how to get my qemu system to be able to access that page over the net, but I ran
> the same Yocto filesystem on my hardware (this is not a hardware bug) with the same
> failure. Maybe someone smarter than me can show me how to get qemu to actually access
> the internet (when the machine that's running qemu is inside a NAT'd zone)?
>
> Thanks for any help/ideas
>

Filed as http://bugzilla.pokylinux.org/show_bug.cgi?id=1570

Still looking for ideas on where to look, how to debug this.

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------


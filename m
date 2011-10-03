Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4AD41E00536
	for <poky@yoctoproject.org>; Mon,  3 Oct 2011 09:04:29 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 9AC9816602D2; Mon,  3 Oct 2011 10:04:26 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 1415A166024F;
	Mon,  3 Oct 2011 10:04:26 -0600 (MDT)
Message-ID: <4E89DD0A.3090207@mlbassoc.com>
Date: Mon, 03 Oct 2011 10:04:26 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:6.0.2) Gecko/20110906 Thunderbird/6.0.2
MIME-Version: 1.0
To: Holger Hans Peter Freyther <holger@freyther.de>
References: <4E862363.8010704@mlbassoc.com> <4E89D9C2.9030502@freyther.de>
In-Reply-To: <4E89D9C2.9030502@freyther.de>
Cc: poky@yoctoproject.org
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
X-List-Received-Date: Mon, 03 Oct 2011 16:04:29 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2011-10-03 09:50, Holger Hans Peter Freyther wrote:
> On 09/30/2011 10:15 PM, Gary Thomas wrote:
>
>> (gdb) l
>> 71      TextBreakIterator* acquireLineBreakIterator(const UChar* string, int
>> length, const AtomicString&  locale)
>
> what is locale? is ICU missing some data files that could/should be installed
> (strace or such). The AtomicString class has a way to get the String which has
> a way to convert/encode to UTF8 which has a way to get the data that can be
> printed with printf. :)

As mentioned, the 'locale' variable is NULL

The real question is why this program works just fine on ARM, but fails on PPC.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------


Return-Path: <holger@freyther.de>
Received: from mail.symoco.de (sysmocom.de [78.46.147.233])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B634E004E9
	for <poky@yoctoproject.org>; Mon,  3 Oct 2011 08:50:31 -0700 (PDT)
Received: from [192.168.0.101] (91-64-80-26-dynip.superkabel.de [91.64.80.26])
	by mail.symoco.de (Postfix) with ESMTPSA id 1450D2543638
	for <poky@yoctoproject.org>; Mon,  3 Oct 2011 15:47:36 +0000 (UTC)
Message-ID: <4E89D9C2.9030502@freyther.de>
Date: Mon, 03 Oct 2011 17:50:26 +0200
From: Holger Hans Peter Freyther <holger@freyther.de>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.23) Gecko/20110922 Lightning/1.0b2 Thunderbird/3.1.15
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4E862363.8010704@mlbassoc.com>
In-Reply-To: <4E862363.8010704@mlbassoc.com>
X-Enigmail-Version: 1.1.1
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
X-List-Received-Date: Mon, 03 Oct 2011 15:50:32 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 09/30/2011 10:15 PM, Gary Thomas wrote:

> (gdb) l
> 71      TextBreakIterator* acquireLineBreakIterator(const UChar* string, int
> length, const AtomicString& locale)

what is locale? is ICU missing some data files that could/should be installed
(strace or such). The AtomicString class has a way to get the String which has
a way to convert/encode to UTF8 which has a way to get the data that can be
printed with printf. :)

holger


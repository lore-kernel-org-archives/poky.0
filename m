Return-Path: <holger@freyther.de>
Received: from mail.symoco.de (sysmocom.de [78.46.147.233])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62D40E00536
	for <poky@yoctoproject.org>; Mon,  3 Oct 2011 10:36:39 -0700 (PDT)
Received: from [192.168.0.101] (91-64-80-26-dynip.superkabel.de [91.64.80.26])
	by mail.symoco.de (Postfix) with ESMTPSA id D43452543638
	for <poky@yoctoproject.org>; Mon,  3 Oct 2011 17:33:44 +0000 (UTC)
Message-ID: <4E89F2A1.20506@freyther.de>
Date: Mon, 03 Oct 2011 19:36:33 +0200
From: Holger Hans Peter Freyther <holger@freyther.de>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.23) Gecko/20110922 Lightning/1.0b2 Thunderbird/3.1.15
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4E862363.8010704@mlbassoc.com> <4E89D9C2.9030502@freyther.de>
	<4E89DD0A.3090207@mlbassoc.com>
In-Reply-To: <4E89DD0A.3090207@mlbassoc.com>
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
X-List-Received-Date: Mon, 03 Oct 2011 17:36:40 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 10/03/2011 06:04 PM, Gary Thomas wrote:
> On 2011-10-03 09:50, Holger Hans Peter Freyther wrote:

> 
> As mentioned, the 'locale' variable is NULL

It can not be NULL (as in pointer), it might be that it is an empty atomic
string. I am not expert on PPC, the guesses are:

1.) alignment rules... we might do unaligned access that manifests weirdly here?

2.) Look into LineBreakIteratorPool::sharedPool() and check if there is
something obvious...

3.) Look if ICU is compiled differently for ARM/PPC?

cheers
	holger


Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 92BC14C80039
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 07:41:11 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 6F55816603F9; Tue, 18 Jan 2011 06:41:10 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 1DD581660300;
	Tue, 18 Jan 2011 06:41:10 -0700 (MST)
Message-ID: <4D359876.8000208@mlbassoc.com>
Date: Tue, 18 Jan 2011 06:41:10 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Koen Kooi <koen@dominion.thruhere.net>
References: <4D32E4D2.5030002@mlbassoc.com>	
	<1295256226.2321.1.camel@scimitar>	<4D343BB7.4050404@mlbassoc.com>
	<1295269851.6501.2.camel@scimitar>	<4D3443FC.5060201@mlbassoc.com>
	<4D34731A.2090304@mlbassoc.com>	<4D357B4B.30607@mlbassoc.com>
	<D6F16B0B-0272-4D07-8163-4BD17C368CEB@dominion.thruhere.net>
In-Reply-To: <D6F16B0B-0272-4D07-8163-4BD17C368CEB@dominion.thruhere.net>
Cc: poky@yoctoproject.org
Subject: Re: Kernel firmware?
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
X-List-Received-Date: Tue, 18 Jan 2011 13:41:11 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/18/2011 06:29 AM, Koen Kooi wrote:
> Op 18 jan 2011, om 12:36 heeft Gary Thomas het volgende geschreven:
>
>> I don't see any kernel modules get installed in one of Poky's
>> "supported" platforms either.  I just tried
>>   MACHINE=igep0030 bitbake poky-image-minimal
>> in a clean tree.  No kernel modules:
>>
>> [gthomas@titan igep_test]$ ls tmp/work/igep0030-poky-linux-gnueabi/poky-image-minimal-1.0-r0/rootfs/lib
>>
>> libanl-2.12.1.so           libcrypt.so.1       libnsl.so.1              libpthread.so.0         modules
>                                                                                                                                             ^^^^^^^^

No, I'm looking for /lib/firmware (kernel loadable firmware) in particular,
which is not present.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------


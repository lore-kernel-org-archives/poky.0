Return-Path: <abuse@basmevissen.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F976E00C59; Tue,  8 May 2018 07:31:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 350 seconds by postgrey-1.32 at yocto-www;
	Tue, 08 May 2018 07:31:49 PDT
Received: from hosting.emcodev.net (hosting.emcodev.net [178.18.92.162])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68F5CE0084D
	for <poky@yoctoproject.org>; Tue,  8 May 2018 07:31:49 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id 1036812A360;
	Tue,  8 May 2018 16:25:58 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at hosting.emcodev.net
Received: from hosting.emcodev.net ([127.0.0.1])
	by localhost (hosting.emcodev.net [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id m9C90GZ5ZiOY; Tue,  8 May 2018 16:25:57 +0200 (CEST)
Received: from hosting.emcodev.net (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id 2F50212A2EB;
	Tue,  8 May 2018 16:25:57 +0200 (CEST)
MIME-Version: 1.0
Date: Tue, 08 May 2018 16:25:57 +0200
From: Bas Mevissen <abuse@basmevissen.nl>
To: Andrea Previtali <and.previtali@gmail.com>
In-Reply-To: <CA+c40zUe_W6O1PK9RMm4DERfeyf4=fZ_WgpKBEPaUE2hup0EKQ@mail.gmail.com>
References: <CA+c40zUe_W6O1PK9RMm4DERfeyf4=fZ_WgpKBEPaUE2hup0EKQ@mail.gmail.com>
Message-ID: <b7eda1624a76e4198bef2eb255a75c3f@basmevissen.nl>
X-Sender: abuse@basmevissen.nl
User-Agent: Roundcube Webmail/1.3.6
Cc: poky@yoctoproject.org
Subject: Re: Create a recovery partition
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 08 May 2018 14:31:51 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

On 2018-05-08 15:44, Andrea Previtali wrote:
> Hi everybody, I have little skills in Yocto. I need to realize a
> recovery partition on my system and I need to manage it in case my
> primary file system shows problems.
> I really have no idea where to start and I found no help on the
> internet.
> Has anybody faced out this problem?
> 
> Regards,
> Andrea

Hi Andrea,

The basics are that you:

1) Have a compact bootable image that contains just enough to recover 
the normal image. This system might share stuff like device tree file 
and kernel or have their own copy, depending on the update strategy.

2) Have a means in the bootloader to boot into this recovery system. For 
example, detect watchdog timeout or read some button status during boot 
(press and hold that button during power up to get into recovery mode). 
After successful recovery, the normal system can be booted again.

Some boards might also be able to boot from another boot source (e.g. 
sdcard) depending on some jumper setting or otherwise. You can use that 
feature to boot a recovery image and restore your normal image.


Hope this gives you a first start.

As this is not necessarily a Yocto/Poky specific issue, further 
discussion is better done off-list.

Cheers,

Bas.


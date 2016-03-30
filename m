Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB7C8E00C4C; Wed, 30 Mar 2016 06:03:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 541 seconds by postgrey-1.32 at yocto-www;
	Wed, 30 Mar 2016 06:03:39 PDT
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B40DE00C27
	for <poky@yoctoproject.org>; Wed, 30 Mar 2016 06:03:39 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 7CCF168A01C; Wed, 30 Mar 2016 13:54:37 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 1111468A019;
	Wed, 30 Mar 2016 13:54:36 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 0F9AA6740C50;
	Wed, 30 Mar 2016 14:54:35 +0200 (CEST)
To: poky@yoctoproject.org
References: <56FBC74C.4070204@astro-kom.de>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <56FBCC89.6020201@mlbassoc.com>
Date: Wed, 30 Mar 2016 14:54:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <56FBC74C.4070204@astro-kom.de>
Subject: Re: poky: added overlay file
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
X-List-Received-Date: Wed, 30 Mar 2016 13:03:41 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-03-30 14:32, Dr. Arno Baumfalk wrote:
> Hello,
>
> I have found, that the init-live.sh script does not consider, that the overlay filesystem in the linux kernel has been
> renamed from "overlayfs" to "overlay" (and the mount API has changed, too).
> Currently the script will not detect "overlay" and use "aufs" as a fallback, if present.

Patches for this have already been sent to the OE-core mailing list.
Please check there to see how yours intersect/overlap.

>
> In order not to break anything for users of elder kernel versions I have simply added the "overlay" case to the script,
> see attached patch.
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------


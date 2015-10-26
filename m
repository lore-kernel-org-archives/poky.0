Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43419E00B9A; Mon, 26 Oct 2015 06:04:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B20EE00A38
	for <poky@yoctoproject.org>; Mon, 26 Oct 2015 06:04:33 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id D8635F81199; Mon, 26 Oct 2015 07:04:32 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 6CCA3F81199;
	Mon, 26 Oct 2015 07:04:32 -0600 (MDT)
To: poky@yoctoproject.org
References: <CA+pXca1P5rGW7yB5+tQ9a6_9n2c39UzrFgd5Q-h9Ftogp3UWtA@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <562E251D.7060303@mlbassoc.com>
Date: Mon, 26 Oct 2015 07:05:33 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <CA+pXca1P5rGW7yB5+tQ9a6_9n2c39UzrFgd5Q-h9Ftogp3UWtA@mail.gmail.com>
Subject: Re: libpam issue
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
X-List-Received-Date: Mon, 26 Oct 2015 13:04:37 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-10-26 06:55, praveen vattipalli wrote:
> Hi All,
>
> I am building libpam in yocto-1.6.1 on ubuntu12.04 64bit for cortexa8 board(beagle bone).  Actually i need *pam_succeed_if.so* in final rootfs, but it is missing.
> *pam_succeed_if.so* is getting compiled and copied to sysroot/beaglebone/lib/security directory but missing in final rootfs/lib/security directory. Do i need to change any
> configuration to get it copied to rootfs.

The various pam libraries and plugins are all packaged separately.

You'll need to add 'pam-plugin-succeed-if' to your image

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------


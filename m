Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 85BA04C800AB
	for <poky@lists.pokylinux.org>; Thu, 10 Feb 2011 07:11:52 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 725BB166015C; Thu, 10 Feb 2011 06:11:51 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id D31641660154;
	Thu, 10 Feb 2011 06:11:50 -0700 (MST)
Message-ID: <4D53E416.4090200@mlbassoc.com>
Date: Thu, 10 Feb 2011 06:11:50 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Poky <poky@lists.pokylinux.org>
References: <4D53E3A5.9050801@mlbassoc.com>
In-Reply-To: <4D53E3A5.9050801@mlbassoc.com>
Subject: Re: Can't build for BeagleBoard
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
X-List-Received-Date: Thu, 10 Feb 2011 13:11:52 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 02/10/2011 06:09 AM, Gary Thomas wrote:
> Using latest master 296866c38e1b88df42d66bdc32cfed2d5212914c
>
> bitbake poky-image-sato fails with the log http://www.mlbassoc.com/poky/log.do_compile-beagleboard
>
> You can see this with the simpler case
> bitbake binutils
>

Belay that - I had Nitin's GCC 4.5.2 changes enabled, so this
error probably only applies there.

Sorry

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------


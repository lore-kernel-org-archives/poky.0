Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 350E4E0120C
	for <poky@yoctoproject.org>; Sun, 21 Aug 2011 12:41:13 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 2AB1016601AB; Sun, 21 Aug 2011 13:41:13 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id AC77A1660187;
	Sun, 21 Aug 2011 13:41:11 -0600 (MDT)
Message-ID: <4E515F57.2060407@mlbassoc.com>
Date: Sun, 21 Aug 2011 13:41:11 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:5.0) Gecko/20110707 Thunderbird/5.0
MIME-Version: 1.0
To: =?UTF-8?B?UHJ6ZW1layBPZ29yemHFgmVr?= <darthhunterix@wp.pl>
References: <4e51533cbaea03.13400098@wp.pl>
In-Reply-To: <4e51533cbaea03.13400098@wp.pl>
Cc: poky@yoctoproject.org
Subject: Re: Several noob's problems:
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
X-List-Received-Date: Sun, 21 Aug 2011 19:41:13 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2011-08-21 12:49, Przemek Ogorzałek wrote:
> Hello!
>
> I've got some problems with using Poky and I couldn't find any solutions in documentation or wiki, so I hope that someone will be able to help me. Some questions might sound
> stupid, but I've got almost zero experience with embedded hardware, and even some obvious things are a mystery to me.
>
> Question one:
>
> There is an excellent instruction of booting the device over network, but I need to download the image directly to device. How do I do that?

It would depend partly on what sort of storage you have on your target.
Some details might help provide better answers.

What I do is boot a specially configured target image which knows how to
download the final image and move/install it onto the target.

> Question two:
>
> I have installed the Eclipse plug-in, but it requires running "bitbake meta-ide-support" to build toolchain. Is there any way to use pre-build tarballs from
> http://autobuilder.yoctoproject.org/downloads/yocto-1.0/toolchain/i686/ ?
>
> I have written in another mail (Subject: "glibc building problem") why I can't simply create my own toolchain (compilation problems).

Toolchains and Poky have quite an entangled history.  My experience is it's
best [easier ] to just use the defaults and let Poky build what it wants.

> Question three:
>
> As I understand, to customize my Poky, I have to edit recipes (or write my own). There are plenty of them however in meta directory, and finding a pattern among them is rather
> difficult. Is there any sort of wizard (I mean something like "make menuconfig" during normal kernel compilation) for it, or I have to study meta directory?
>
> I use Poky 5.0.1 on 32-bit host with Fedora 15 and my target is PowerPC.

You might try the cutting edge (check the master branch out via git).  I don't
have any troubles building for PowerPC with it, even on Fedora 15.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------


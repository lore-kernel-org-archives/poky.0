Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7354E4C80039
	for <poky@yoctoproject.org>; Tue, 25 Jan 2011 04:15:14 -0600 (CST)
Received: from [192.168.0.7] (5ad4d7b0.bb.sky.com [90.212.215.176])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 198BB12EC1C7
	for <poky@yoctoproject.org>; Tue, 25 Jan 2011 04:56:08 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: poky@yoctoproject.org
In-Reply-To: <AANLkTikO8-sLM_qMNvj=Xpt723iL-eA2MJPxY6YwdaLQ@mail.gmail.com>
References: <AANLkTikO8-sLM_qMNvj=Xpt723iL-eA2MJPxY6YwdaLQ@mail.gmail.com>
Date: Tue, 25 Jan 2011 10:15:06 +0000
Message-ID: <1295950506.4384.11.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Subject: Re: questions about bblayers idioms
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
X-List-Received-Date: Tue, 25 Jan 2011 10:15:14 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-01-25 at 11:59 +1000, Angus Lees wrote:
> I've been trying to play nice and describe my poky changes in
> self-contained layers.
> I have accumulated a bunch of questions about some common problems
> I've hit, and I'm sorry if some of these are FAQs:

The layers are still new and I'm glad to see people using them, if
there's documentation missing we'll be glad to add it.


> 1. *.bbappend lets me modify *.bb files.  How do I incrementally
> modify other files?
> 
> Eg: I'd really like to add something to gcc-common.inc (for example).
> Do I need to add a family of gcc-*.bbappend files to hook in the
> common change?

That seems like it would work, I'm not sure if there's a neater
alternative...

> 
> 1a. How do I modify/fix a bbclass file?
> 
> In particular {siteinfo,insane}.bbclass need to be modified to add new
> architectures, which seems like a common task.
> Copying and modifying (as I have done), gets increasingly ugly now
> that I have two layers, which each want to add new architectures (one
> SDK, one target).

Not something I've tried either, but you should be able to use the
inclusion capabilities of BitBake to create a class which includes the
class from the core and adds whatever you require.

http://bitbake.berlios.de/manual/ch02.html#id869194

> 
> 2. BBCLASSEXTEND doesn't work in .bbappend files.
> 
> Is this correct?  I tried to add BBCLASSEXTEND+="nativesdk" to a
> .bbappend file but it didn't seem to have any effect.

Not sure, is this simply a case where the += syntax requires a space,
i.e try:

BBCLASSEXTEND += " nativesdk"
or
BBCLASSEXTEND =+ "nativesdk"

http://bitbake.berlios.de/manual/ch02.html#id868981

Though I can't see why we wouldn't take a change like that into the
core. 

> 
> 3. What is the standard idiom for picking up patches from layers?
> 
> I've been using something like this:
>  THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
>  FILESPATH =. "${@base_set_filespath(["${THISDIR}/${BP}"], d)}:"

In the emenlow layer we use:

FILESEXTRAPATHS := "${THISDIR}/${PN}"

THISDIR is already defined for you in base.bbclass

This is vaguely alluded to in the BSP document:
http://www.yoctoproject.org/docs/poky-ref-manual/poky-ref-manual.html#bsp-filelayout-kernel

> 
> But this gets increasingly more difficult once you have multiple
> layers and I had to use unique names for THISDIR in each layer :(
> Is there some better way to handle this?

Hopefully this will get you a bit further until someone better informed
comes along.

Regards,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre



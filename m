Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 89C654C8007E
	for <poky@yoctoproject.org>; Tue,  8 Feb 2011 15:49:25 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 44AD716601F6; Tue,  8 Feb 2011 14:49:24 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 3B1DF16601BB;
	Tue,  8 Feb 2011 14:49:23 -0700 (MST)
Message-ID: <4D51BA63.3020606@mlbassoc.com>
Date: Tue, 08 Feb 2011 14:49:23 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4D51B86E.7060709@linux.intel.com>
In-Reply-To: <4D51B86E.7060709@linux.intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: History and intentions of linux.inc ?
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
X-List-Received-Date: Tue, 08 Feb 2011 21:49:26 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/08/2011 02:41 PM, Darren Hart wrote:
> I've stumbled over a couple of interesting bits in the existing
> recipes-kernel/linux/linux.inc, for example (but not limited to):
>
>> do_install_prepend() {
>>          if test -e arch/${ARCH}/boot/Image ; then
>>               ln -f arch/${ARCH}/boot/Image arch/${ARCH}/boot/uImage
>>          fi
>
> On a recent kernel, the above will overwrite a valid uImage with Image,
> resulting in a non-bootable set of files in deploy/images.
>
>>
>>          if test -e arch/${ARCH}/boot/images/uImage ; then
>>               ln -f arch/${ARCH}/boot/images/uImage arch/${ARCH}/boot/uImage
>>          fi
>
> The arch/arm/boot/images directory does not exist on a current kernel
> (2.6.35-linaro anyway).
>
>
> Does anyone know the historical significance and/or intent of this code?
> Are there architectures for which this does something sane? After
> reading through linux.inc, I'm inclined to avoid using it for the
> meta-linaro kernel, and then going after it with chainsaw.
>
> Anyone have anything to add before I start cutting?
>

I also found the same odd behaviour.  My [simple] solution was
to use my own linux.inc, much like there is a linux-yocto.inc,
which totally removes do_install_prepend()

I'm sure this is safe to do in the mainline meta/recipes-kernel;
as I said the yocto kernel already has done away with the whole
file.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------


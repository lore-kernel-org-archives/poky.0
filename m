Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-vx0-f176.google.com (mail-vx0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D887E0122A
	for <poky@yoctoproject.org>; Mon,  5 Sep 2011 08:22:31 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vxh17 with SMTP id 17so6036537vxh.35
	for <poky@yoctoproject.org>; Mon, 05 Sep 2011 08:22:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=t8HtbAzKE0qbEdZ+lvYHEGfIeivvzD7jafuYJEFd1TU=;
	b=bNn3K1Hv+K6c59+jXjdcPGlVhSuOcSpwQqkbQEvt0l4fOi+ESibkeRavkT8sd+AGq6
	TBUfqwMbixI/rmtq0iuz7OmASe1yMJVdIETSU+e+Aok8WUKP6Afvy3kqLoFUg9nxB1ZS
	iMXEeHxLsv3kSfgapKFN5TdznalS8sJUVezEs=
MIME-Version: 1.0
Received: by 10.52.98.137 with SMTP id ei9mr1881634vdb.72.1315236149668; Mon,
	05 Sep 2011 08:22:29 -0700 (PDT)
Received: by 10.52.112.169 with HTTP; Mon, 5 Sep 2011 08:22:29 -0700 (PDT)
In-Reply-To: <CAJrrM576Ep=mpUizw+zn_HH-yRS=UVAqXEQjvPBj+GOw+YCqSw@mail.gmail.com>
References: <CAFt-cowyXXMup_j-i36Ws8zXz4xgBeUBSo-eOGDBxd7hymdDUg@mail.gmail.com>
	<1314818486.5939.486.camel@rex>
	<CAJrrM576Ep=mpUizw+zn_HH-yRS=UVAqXEQjvPBj+GOw+YCqSw@mail.gmail.com>
Date: Mon, 5 Sep 2011 11:22:29 -0400
Message-ID: <CADkTA4O7moVRQmGY+xcPWL0HdCqmzch-Dxj=z+wGs-0sMHv2bQ@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Akshat Saha <akshat.embedded@gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: Can we build sugarbay for 32bit
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
X-List-Received-Date: Mon, 05 Sep 2011 15:22:31 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 5, 2011 at 10:51 AM, Akshat Saha <akshat.embedded@gmail.com> wr=
ote:
> Hi Richard,
> I want to make=A0core-image-minimal for 32-bit
>
> I have tried
>
> conf/machine/include/tune-core2.inc
>
> I also tried
>
> conf/machine/include/tune-1586.inc
>
> But I got error in kernel compilation, as the kernel was still building f=
or
> 64-bit mode and hence the mismatch.
> I solved it by doing make ARCH=3Di386 menuconfig, and build again from th=
ere.
> Now, the live image seems to work fine, but after installing the image on
> SSD and booting it from GRUB, it prompts:=A0bad file descriptor.
>
> Also, after changing the include file in machine conf as mentioned above,
> grub 0.97 is made instead of grub2(1.98).
> So, I modified conf/machine/include/tune-x86_64.inc
> #DEFAULTTUNE =3D "x86_64" =A0to,
> DEFAULTTUNE =3D "x86"
> But the problem still persists.
> Can you guide in finding :
>
> How can we make the kernel for 32-bit?

In your layer, create a config fragment that sets 32 bit. i.e:

% cat 32bit.cfg
# CONFIG_64BIT is not set
CONFIG_X86_32=3Dy
# CONFIG_X86_64 is not set

and add 32bit.cfg to the SRC_URI (just like anything you'd add to the
SRC_URI).

Your configuration will be applied last and override the default 64
bit settings,
but inherit the rest.

Bruce


> Why is the grub legacy is built instead of grub2?
> And foremost, how to solve "bad file descriptor" error in grub, even thou=
gh
> live image works.
>
>
>
> On Thu, Sep 1, 2011 at 12:51 AM, Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
>>
>> On Wed, 2011-08-31 at 11:06 +0530, v sailaja wrote:
>> > Can anyone please tell me how to build the "sugarbay" for 32bit. By
>> > default sugarbay supports 64bit but is there anyway to change it to
>> > 32bit.
>> > My host machine is ubuntu 11.04 and 64bit.
>>
>> Change meta-intel/meta-sugarbay/conf/machine/sugarbay.conf
>>
>> to say
>>
>> conf/machine/include/tune-core2.inc
>>
>> instead of x86-64 and then it will build for 32 bit since that is the
>> default for core2.
>>
>> Cheers,
>>
>> Richard
>>
>>
>>
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>
>
>
> --
> Akshat
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"


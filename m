Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.49726.1585574906074962769
 for <poky@lists.yoctoproject.org>;
 Mon, 30 Mar 2020 06:28:26 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=q/mcOQed;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: hannandor@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ECB83E01911; Mon, 30 Mar 2020 06:28:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (hannandor[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.193 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com [209.85.208.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E035DE0190E
	for <poky@yoctoproject.org>; Mon, 30 Mar 2020 06:28:23 -0700 (PDT)
Received: by mail-lj1-f193.google.com with SMTP id q19so17994463ljp.9
        for <poky@yoctoproject.org>; Mon, 30 Mar 2020 06:28:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=1ha5KP0nbXtQVlZXmhz9J58nuZ+AAiPxekCHQpruAHc=;
        b=q/mcOQedM7BXnF8d+eo+4Dkrl5l6ibzfBhkHAaSg/HtER42GtSfzjmZf8THT9CNMDC
         3RBkECLkHfJIslD6HI9RrZHcXQCby0zrA/8hdwwrizMabmqnO3HvzPFkK2OQwx9o1J7Y
         bK6Q3qemseC0iNWcq52ZAe1BsVs1dX8/AcoW3sw0CmOf82+4s7yNK6S5hCrujCPQ9qPJ
         0raNaDEvhTjrz+BoRCgoVIFgVQJJ3vuyuzgdTcBXTnDsO4gwFIfbCf3KFgl00F9nKXbM
         4ysUA/6CpHkfqROy8FdcV5J7m3ECFQYNCKPTLIb6I9Lh9OMTV2/gFtHTSYDcFwX5FYrS
         rCVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=1ha5KP0nbXtQVlZXmhz9J58nuZ+AAiPxekCHQpruAHc=;
        b=cCEiwKB0mvjcnC2q/r0XUM42zke7vQ5tDYWq2rJpqZCJUtKTRsmeWvQSJreE34laxf
         MtMIEAm2VFgfm92EX+4pZIO1dMl3wAOGsdrTKmPJwG/a/eAVvNtutRH590TNbOr9M8S0
         BoK8WGmbAW5u0n7VkSpukBTIHmoth1ziE6qfnrrl69Z/kxyba1IETD2B+pKGC4Ocjr7y
         koxdiSNYP2jbW10q4U/sZv2Z6JUGS62cy25Yu0K2MDwWcsftHX1VJSLSlXsmjw0V0NhB
         0EQDrrL6HarrEkTltnrgkCKuhq0JgW96/gTyGil3dOoLtuenHyzs00kqHYqbY3eh4Ey3
         kZ/g==
X-Gm-Message-State: AGi0Puaz5Iz90Fkn4mPgQny207JxltJTHYbTDdu5A9qUQINDLRpzQEtO
	Jj4CI2dS/UPKHCZIsTGMEoitfhxv
X-Google-Smtp-Source: APiQypJovMEljUi2eUeaRA++ZQyzUjSjSBChciffv8cW5iGt64YT032DYP4XJ2VzfHr/XxibyPe6tA==
X-Received: by 2002:a2e:9886:: with SMTP id b6mr7294162ljj.237.1585574902388;
        Mon, 30 Mar 2020 06:28:22 -0700 (PDT)
Received: from localhost.localdomain (dys4zfyc151xd2mccrgkt-3.rev.dnainternet.fi. [2001:14ba:3f1:4200:55cd:663b:2842:7151])
        by smtp.gmail.com with ESMTPSA id f6sm4368713lfm.40.2020.03.30.06.28.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 06:28:21 -0700 (PDT)
Subject: Re: [poky] Dependency loop with kernel-fitimage class
To: Olivier Dufour <olivier.dufour@qarnot-computing.com>,
 poky@yoctoproject.org
References: <CADGCjzwkN9pAbc=GmAAtK_VmKYoiUMZh8ntaZyJuDOhtJbpznw@mail.gmail.com>
From: "Nandor Han" <hannandor@gmail.com>
Message-ID: <c3761a96-5fa1-5249-1a6c-563d7960842c@gmail.com>
Date: Mon, 30 Mar 2020 16:28:20 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CADGCjzwkN9pAbc=GmAAtK_VmKYoiUMZh8ntaZyJuDOhtJbpznw@mail.gmail.com>
Content-Type: multipart/alternative;
 boundary="------------3D2567F52A7E9AAAFB35118D"
Content-Language: en-US

--------------3D2567F52A7E9AAAFB35118D
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2018-05-16 13:17, Olivier Dufour wrote:
> Hi,
>
> I'm trying to build a trusted boot image on ARM64 platform using u-boot=
.
> I've added kernel-fitimage to KERNEL_CLASSES, and set=20
> UBOOT_SIGN_ENABLE to "1".
>
> I get the following dependency loop:
>
>     Dependency loop #1 found:
>     =C2=A0 Task
>     /build/firmware/v3/build/../meta-marvell/recipes-bsp/u-boot/u-boot-=
marvell_2017.03.bb:do_concat_dtb
>     (dependent Tasks ['linux-marvell_4.4.52.bb:do_assemble_fitimage'])
>     =C2=A0 Task
>     /build/firmware/v3/build/../meta-marvell/recipes-bsp/u-boot/u-boot-=
marvell_2017.03.bb:do_install
>     (dependent Tasks ['pseudo_1.8.2.bb:do_populate_sysroot',
>     'u-boot-marvell_2017.03.bb:do_compile',
>     'u-boot-marvell_2017.03.bb:do_concat_dtb'])
>     =C2=A0 Task
>     /build/firmware/v3/build/../meta-marvell/recipes-bsp/u-boot/u-boot-=
marvell_2017.03.bb:do_deploy
>     (dependent Tasks ['u-boot-marvell_2017.03.bb:do_install',
>     'u-boot-marvell_2017.03.bb:do_deploy_dtb'])
>     =C2=A0 Task
>     /build/firmware/v3/build/../meta-marvell/recipes-kernel/linux/linux=
-marvell_4.4.52.bb:do_assemble_fitimage
>     (dependent Tasks ['u-boot-marvell_2017.03.bb:do_deploy',
>     'linux-marvell_4.4.52.bb:do_compile'])
>
>
> From my understanding, do_assemble_fitimage should only depend on=20
> do_deploy_dtb, since it doesn't require the whole u-boot binary, but=20
> only the dtb.
>
> I did a few patches to get it work eventually, but I wonder if that's=20
> the right way to go. Maybe I'm missing a step in my configuration ?
>
Hi,

The keys are injected in DTB, however the newly created DTB needs to be=20
recombined with U-Boot, resulting in `u-boot-dtb.bin` (IIRC).

Just to have this in mind :)

Nandor

--------------3D2567F52A7E9AAAFB35118D
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2018-05-16 13:17, Olivier Dufour
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CADGCjzwkN9pAbc=3DGmAAtK_VmKYoiUMZh8ntaZyJuDOhtJbpznw@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hi,
        <div><br>
        </div>
        <div>I'm trying to build a trusted boot image on ARM64 platform
          using u-boot.</div>
        <div>I've added kernel-fitimage to KERNEL_CLASSES, and set
          UBOOT_SIGN_ENABLE to "1".</div>
        <div><br>
        </div>
        <div>I get the following dependency loop:</div>
        <div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">Dependency loop #1 found:<=
br>
            =C2=A0 Task
/build/firmware/v3/build/../meta-marvell/recipes-bsp/u-boot/u-boot-marvel=
l_2017.03.bb:do_concat_dtb
            (dependent Tasks
            ['linux-marvell_4.4.52.bb:do_assemble_fitimage'])<br>
            =C2=A0 Task
/build/firmware/v3/build/../meta-marvell/recipes-bsp/u-boot/u-boot-marvel=
l_2017.03.bb:do_install
            (dependent Tasks ['pseudo_1.8.2.bb:do_populate_sysroot',
            'u-boot-marvell_2017.03.bb:do_compile',
            'u-boot-marvell_2017.03.bb:do_concat_dtb'])<br>
            =C2=A0 Task
/build/firmware/v3/build/../meta-marvell/recipes-bsp/u-boot/u-boot-marvel=
l_2017.03.bb:do_deploy
            (dependent Tasks ['u-boot-marvell_2017.03.bb:do_install',
            'u-boot-marvell_2017.03.bb:do_deploy_dtb'])<br>
            =C2=A0 Task
/build/firmware/v3/build/../meta-marvell/recipes-kernel/linux/linux-marve=
ll_4.4.52.bb:do_assemble_fitimage
            (dependent Tasks ['u-boot-marvell_2017.03.bb:do_deploy',
            'linux-marvell_4.4.52.bb:do_compile'])</blockquote>
        </div>
        <div><br>
        </div>
        <div>
          <div>From my understanding, do_assemble_fitimage should only
            depend on do_deploy_dtb, since it doesn't require the whole
            u-boot binary, but only the dtb.</div>
          <div><br>
          </div>
          <div>I did a few patches to get it work eventually, but I
            wonder if that's the right way to go. Maybe I'm missing a
            step in my configuration ?</div>
          <div><br>
          </div>
        </div>
      </div>
    </blockquote>
    <p>Hi,</p>
    <p>The keys are injected in DTB, however the newly created DTB needs
      to be recombined with U-Boot, resulting in `u-boot-dtb.bin`
      (IIRC).<br>
    </p>
    <p>Just to have this in mind :)</p>
    Nandor<br>
  </body>
</html>

--------------3D2567F52A7E9AAAFB35118D--

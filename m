Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E958F43689
	for <webhook@archiver.kernel.org>; Fri, 17 Apr 2026 09:25:38 +0000 (UTC)
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.40818.1776417934264726682
 for <poky@lists.yoctoproject.org>;
 Fri, 17 Apr 2026 02:25:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=OCaVf4gv;
 spf=pass (domain: linaro.org, ip: 209.85.216.46, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-35d90833cacso318296a91.2
        for <poky@lists.yoctoproject.org>; Fri, 17 Apr 2026 02:25:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1776417934; x=1777022734; darn=lists.yoctoproject.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=m61bBqxtKI8dXCJ4gH6W0dU2JeNyZadwM4iRn82ruA0=;
        b=OCaVf4gvZ4ShPlRgbtAxDPS8vdx0zGFCSXqrlZ0TjX2SYbLHe9SWfqezh48crU5TXN
         1fTg1a5wOTrotHDzVf6RsGOfrkba+eMQolwroLmr24YZiGfl4wbMg+pnAeIaVcLoz/LR
         FA9wRmawzwXEiYDyZ0uYj52xw7NvzeofWLz3VoqFpdj+cRTWfcHGoqY9ylTqJILOdqji
         SGZsAubN+QXBVODyFpSOYM7NeCwoCP15ZHBVzUqe6DowZQZGR9GPNCQi6sgS1EaJ9Q4D
         7xulFDisrbz5u0U5+JfufrbjF0ZLqRQCDTasERT6B5EwUfDKHa9+GJBS4hO6RNwFC80L
         rjNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776417934; x=1777022734;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=m61bBqxtKI8dXCJ4gH6W0dU2JeNyZadwM4iRn82ruA0=;
        b=iW/P2Sw7kjpkapB0e/uE0KAcGpjHj0O2YENiKy/KSZa5v8XjHT5mWqF0Z43TcKDW9O
         WsGBnZ3c1dIvk8AVR1vXuY+vDZG2LV9nXg4p7uyWAOBC4LuJWqUZe/6/Ayn4hD/EKqH4
         q9ZBql46cM1TYSGXrJEZ5nAY+isqV+pLedtaOD57AP4GbBFw8j0Aq48a2/uiQt5ANknX
         px5GfV9+6U3Emueq5lAN0AGYs/OVG8fgOl9UpwWxh6bXK/WxK38DCwdXtygZy3eyDAmy
         IpS/mutvJ9YXLRPQ26E7WMaeWl8GO0QBUOrFTUGVf788BlZs7Iumz2/tLgdo/awEPUj9
         MR6w==
X-Gm-Message-State: AOJu0YwstAAXNRuEmh9+C+2bWd+I4QqgWPbVfTfRShglJI6wXnVhIy54
	pC0MD2Mt/WjS9Rj92tEAhF5AEra1pojRLRQWcAChvRW8P/lFC1lp1mqNeR8KE5TmOkA=
X-Gm-Gg: AeBDiessD04j9Vi1ASnN8olr+b8sRKMs34uCph5aEEeHJMJMIGWR/xko0aHaxBkENlc
	c02+6zCTBffSoOfh/mRYTWxuA4/l98u8PUHtapN/g14aG69jXIQEEOp4spFc6cwXbzy2SMonre0
	BWCMr1np4PNpS00CXADD6VhYLMgBIHTEQevXY0wIo92iGyvEQuYXTjCFnj57sAjSU++WuYcBn/m
	tZy9D1+MbdRZkfqArRYSnZ6CdG9hgJLA9YhsAzHT2wovFxmsKuCI9BGCq9TsRNL+U2Hkrvuswa9
	vd+nAuh1oQIHXS/GMqE1ddbtHfJzdU4YQBq357rh5U/FsMbVyee+pJxYQOqfht/Qco88sbgm+OG
	m+7j4IV3QB57HPqLPXkDhHVIFISMr+iG4vgRfWanQyrzk0mAD9fanRRMzl+MeXJ+ODnHCjTx4rg
	KnMgna3ZnUcV62q/E6ccUKJxm7xCU9ACi/qHUZXeh8aEtLDkrTaLoRvhmDW7Yj4k9Z48s8VhXK
X-Received: by 2002:a17:90b:3d86:b0:35c:a8f:5c5f with SMTP id 98e67ed59e1d1-361403f0ee8mr1962510a91.8.1776417933533;
        Fri, 17 Apr 2026 02:25:33 -0700 (PDT)
Received: from nuoska (78-27-71-225.bb.dnainternet.fi. [78.27.71.225])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-36140fc5d94sm2162426a91.2.2026.04.17.02.25.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Apr 2026 02:25:33 -0700 (PDT)
Date: Fri, 17 Apr 2026 12:25:29 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@lists.yoctoproject.org, Bruce Ashfield <bruce.ashfield@gmail.com>
Subject: Re: [poky] [PATCH v3] genericarm64 core-image-initramfs-boot: remove
 some kernel drivers
Message-ID: <aeH8idgVfQ5I0UqT@nuoska>
References: <20260413072715.20701-1-mikko.rapeli@linaro.org>
 <026091996b0e9f36733c8933fdf6f872625be247.camel@linuxfoundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <026091996b0e9f36733c8933fdf6f872625be247.camel@linuxfoundation.org>
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 17 Apr 2026 09:25:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13907

Hi,

On Fri, Apr 17, 2026 at 10:10:07AM +0100, Richard Purdie wrote:
> On Mon, 2026-04-13 at 10:27 +0300, Mikko Rapeli via lists.yoctoproject.org wrote:
> > genericarm64 supports a lot of HW and thus large collection of kernel
> > drivers are enabled and installed to images by default.
> > Subset of the kernel drivers are needed in initramfs to mount rootfs
> > from local mass storage devices. This increases initramfs size a lot
> > and with new kernel config updates even more. Thus remove kernel
> > drivers from initramfs image which are not needed for mounting
> > rootfs from local mass storage devices. GPU, Bluetooth, NFC,
> > sound, networking etc support is not needed in the initramfs.
> > 
> > According to buildhistory core-image-initramfs-boot size is reduced
> > from 118 to 83 Mb.
> > 
> > Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
> > ---
> > �.../images/core-image-initramfs-boot.bbappend | 28 +++++++++++++++++++
> > �1 file changed, 28 insertions(+)
> > �create mode 100644 meta-yocto-bsp/recipes-core/images/core-image-initramfs-boot.bbappend
> > 
> > v3: added PATHS_TO_REMOVE variable so that it can be customized
> > ��� as suggested by Jose Quaresma <quaresma.jose@gmail.com>
> > 
> > v2: https://lists.yoctoproject.org/g/poky/message/13894
> > 
> > diff --git a/meta-yocto-bsp/recipes-core/images/core-image-initramfs-boot.bbappend b/meta-yocto-bsp/recipes-core/images/core-image-initramfs-boot.bbappend
> > new file mode 100644
> > index 000000000000..2298c2f94740
> > --- /dev/null
> > +++ b/meta-yocto-bsp/recipes-core/images/core-image-initramfs-boot.bbappend
> > @@ -0,0 +1,28 @@
> > +POSTFUNCS = ""
> > +POSTFUNCS:genericarm64 = "reduce_initrd_size"
> > +
> > +PATHS_TO_REMOVE = ""
> > +# these kernel modules are not needed for rootfs mount from local mass storage
> > +# and can be loaded from main rootfs by udev
> > +PATHS_TO_REMOVE:genericarm64 = "\
> > +��� ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/drivers/bluetooth \
> > +��� ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/drivers/gpu \
> > +��� ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/drivers/media \
> > +��� ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/drivers/net \
> > +��� ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/drivers/nfc \
> > +��� ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/drivers/usb/gadget \
> > +��� ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/fs/fuse \
> > +��� ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/net/bluetooth \
> > +��� ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/net/bridge \
> > +��� ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/net/netfilter \
> > +��� ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/net/nfc \
> > +��� ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/sound \
> > +"
> > +
> > +do_rootfs[postfuncs] += "${POSTFUNCS}"
> > +reduce_initrd_size () {
> > +��� if [ -n "${PATHS_TO_REMOVE}" ]; then
> > +������� rm -rf ${PATHS_TO_REMOVE}
> > +��� fi
> > +}
> > +
> 
> This is a tough one. There are some simple things like "POSTFUNCS"
> being a bit generic as a name. I also worry a little this may trip up
> yocto-check-layer with the added variable POSTFUNCS, even if it is
> empty. I think if we're creating this as API, listing the directories:
> 
>     drivers/bluetooth \
>     drivers/gpu \
>     drivers/media \
>     drivers/net \
>     drivers/nfc \
>     drivers/usb/gadget \
>     fs/fuse \
>     net/bluetooth \
>     net/bridge \
>     net/netfilter \
>     net/nfc \
>     sound \
> 
> and then adding the prefix would probably be cleaner too. Those are all
> easier tweaks.
> 
> The bigger challenge is "generic" kernel adding all this. Ideally you
> wouldn't install these things to the initramfs in the first place, then
> you wouldn't need to delete them. I'm not sure how you could
> detect/filter and install only the subset of modules you want, or how
> that list of modules would be maintained/updated.

kernel-modules correctly get installed to all images through MACHINE_EXTRA_RDEPENDS.
This is flexible to drivers being built-in or modules. IMO initramfs
image should not be explicitly tied to the exact kernel config and thus
should not depend on the exact set of kernel module packages. A slightly more abstract
interface between kernel and initramfs image is needed, and "kernel-modules"
decent at that. This works well for the real rootfs but is not optimal for
initramfs.

> A different package to "kernel-modules" could be one idea, how you
> construct that, again, I'm less sure. The above filter list could be
> used to iterate the modules and filter by path I guess?

I had a patchset for this but ran into issues with it.

https://lists.openembedded.org/g/openembedded-core/topic/112087526#msg214354

I don't see how that can move forward though.
 
> Now we've merged the firmware update, the builds are breaking but some
> of these kinds of changes are probably too late for the release/LTS.
> 
> Perhaps we just have to increase the size of the initramfs for now :(

Sigh, alright then.

Cheers,

-Mikko


Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 05B08109C024
	for <webhook@archiver.kernel.org>; Wed, 25 Mar 2026 14:31:58 +0000 (UTC)
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.24115.1774449113956471320
 for <poky@lists.yoctoproject.org>;
 Wed, 25 Mar 2026 07:31:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=ZkL1Nw/U;
 spf=pass (domain: linaro.org, ip: 209.85.216.45, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-35c0e7b751aso858465a91.2
        for <poky@lists.yoctoproject.org>; Wed, 25 Mar 2026 07:31:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1774449113; x=1775053913; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=npzjVW2R6mvQ2RSLp9mKi7hahrRJozqWcMuHZibKSYM=;
        b=ZkL1Nw/URRs4kSfkWECCELHcgnOC/MSQcfIfxcI6TQxL+h+mpAA+MAW7vtOPHo3ugJ
         nUaWUTsXOckQpGttz2VbAH91lnhGP69DTEcEVevLj3dW5YhbCz40xb1RBnbml5CNkZtu
         0wvkNcfthBPNGuOHkUO8tjRSbVQFY6Gh5IGY7C99C3N6t1n4WqMGrW+/1gDR8tkicxUz
         G0zvJTYGTfCpSlApHC2u97qS1UL26qXjyuQTzPiKH4OxPFPGnLsZU8SsPexqkYgBI1pl
         rAf3eTNqKvtYuqto+p9Neipr5tY3JPeUnY3syaA322GPBMd7DLrn1b/zrnbwzldEOL9Q
         KkwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774449113; x=1775053913;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=npzjVW2R6mvQ2RSLp9mKi7hahrRJozqWcMuHZibKSYM=;
        b=c/mD/mT83hc1MJZo5afjpWQFLL/XiWM+FCKUpHiTx9pGQrehUqSZpu8wgvBYzfOkSg
         fp6QExxL7mgawK466sjNq5UrzGa02hOslDUJzI/gzEUoy4BAX8vw/PKRmIsev0s7zDGJ
         XtWn4f9pNp/NIPyquid2eG09kFNjPZrBGxAPjyTVm2o+TF/wGuo68eeSoBQ/koqSunYa
         roaDhfdwY56uBxQENo+At4i+2u4MAs6q14y9egNSZGEBQNfHR8lGVma+Tpe3aaMTqSMP
         Iyzlz4rsH/Y07L7NfaUgBSopeuFFNKfW2yMozRSPNZOc1+gcUCcv5kcu5YBS8QcFlr0C
         d+rg==
X-Gm-Message-State: AOJu0YwfBt9sFPIJmuAT1Hdf6GKC8O72ymPHO1a0oQWYh4j7qYV07+rx
	/LAN96fjgVtxN1/AAgKP7inpTC9mXN68vT6kndj+VVlW+4WeEOMmMuTqlQsyrpGjkJ9rHRSBWMf
	3CrGA
X-Gm-Gg: ATEYQzxfbp5PHukoKno/Uzwnx2KGEvd6TjtlKgo8fxtDQNf+T3fF7S0jKPyGo7rtsdo
	Co7WBSl/MCy/kTEgIshNuNd7ngNGIL493EzvwAkooaioryvtm8wBfplgRUNRDh/9jxRh36EKQIa
	7Ahpn5BsDLopw7sQiECMOL+bpbLGcLE3e1vlFA7SzaIfugMUStElN/kasdkDJE6SyBvPmg0Il/m
	H1qLwCrGuNvzefPA7pnbaHVkCF6pYEyH0zksC/mhgDBel7HDk5w70oZdceCkewH2oDMKp4sOBT/
	Uvf/P2nBpgJDZ9GvZJNjTXP7KoPDhLGuiJ/LsGii7HRhJs/GI4/xH7oWO7NHWMbJpT3cp8AjKXt
	Q4dWAsu4WSNDFGfbe0LD/xuNdPYf8vNnpujnEuAex6BCAiceR3JEv7QAOJpPdOZbCwrhyeMMfIN
	ljAIf0tFSQlqC2dbKkMllastjRfJZ0hLrOG6nxUmVLcXODxRWCBcu8pSUC
X-Received: by 2002:a17:903:2281:b0:2b0:5795:9eb1 with SMTP id d9443c01a7336-2b0b084558amr43302475ad.0.1774449113078;
        Wed, 25 Mar 2026 07:31:53 -0700 (PDT)
Received: from nuoska (87-100-249-247.bb.dnainternet.fi. [87.100.249.247])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b0bc882339sm513835ad.43.2026.03.25.07.31.51
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2026 07:31:52 -0700 (PDT)
Date: Wed, 25 Mar 2026 16:31:49 +0200
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Subject: Re: [PATCH v3] genericarm64.conf: fix qemu testing with
 testimage.bbclass
Message-ID: <acPx1d9uPLgymfa1@nuoska>
References: <20260311133202.292677-1-mikko.rapeli@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260311133202.292677-1-mikko.rapeli@linaro.org>
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 25 Mar 2026 14:31:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13868

Hi,

Could this be applied to master branch?

Cheers,

-Mikko

On Wed, Mar 11, 2026 at 03:32:02PM +0200, Mikko Rapeli wrote:
> genericarm64 machine has supported qemu for a long time but
> the default build config failed with testimage.bbclass to boot
> and run oeqa runtime tests.
> 
> TESTIMAGEDEPENDS needs qemu utilities so that they are correctly
> installed to image sysroot. For qemu machines these are set in
> testimage.bbclass but remain unset for non-qemu machines like
> genericarm64.
> 
> TEST_RUNQEMUPARAMS needs snapshot since default genericarm64 image
> is a compressed wic.zst.
> 
> With these set, default genericarm64 core-image-sato boots correctly
> with testimage.bbclass and all oeqa runtime tests pass on an x86_64
> build machine:
> 
> $ bitbake core-image-sato && bitbake -c testimage core-image-sato
> ...
> SUMMARY:
> core-image-sato () - Ran 75 tests in 229.248s
> core-image-sato - OK - All required tests passed (successes=24,
> skipped=51, failures=0, errors=0)
> NOTE: Tasks Summary: Attempted 1558 tasks of which 1556 didn't need to
> be rerun and all succeeded.
> 
> To boot qemu manually (add "slirp" if tap networking not setup,
> and "nographic" if qemu graphics not setup):
> 
> $ runqemu snapshot core-image-sato
> 
> Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
> ---
>  meta-yocto-bsp/conf/machine/genericarm64.conf | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> v3: dropping nographic from TEST_RUNQEMUPARAMS, both this
>     and slirp are limitations of test environment and
>     need to be set in local.conf or similar
> 
> v2: dropper slirp from TEST_RUNQEMUPARAMS
>     https://lists.yoctoproject.org/g/poky/message/13859
> 
> v1: https://lists.yoctoproject.org/g/poky/message/13854
> 
> diff --git a/meta-yocto-bsp/conf/machine/genericarm64.conf b/meta-yocto-bsp/conf/machine/genericarm64.conf
> index 2b1ce4bdd02b..be34a5605c24 100644
> --- a/meta-yocto-bsp/conf/machine/genericarm64.conf
> +++ b/meta-yocto-bsp/conf/machine/genericarm64.conf
> @@ -73,5 +73,9 @@ QB_TCPSERIAL_OPT ?= "-device virtio-serial-pci -chardev socket,id=virtcon,port=@
>  # Virtio networking
>  QB_TAP_OPT ?= "-netdev tap,id=net0,ifname=@TAP@,script=no,downscript=no"
>  
> +# snapshot for wic.zst image type
> +TEST_RUNQEMUPARAMS ?= "snapshot"
> +# basic qemu testimage.bbclass support
> +TESTIMAGEDEPENDS:append = " qemu-native:do_populate_sysroot qemu-helper-native:do_populate_sysroot qemu-helper-native:do_addto_recipe_sysroot"
>  # If we're running testimage then we're in a qemu, so ensure u-boot is build
>  TESTIMAGEDEPENDS:append = " u-boot:do_deploy"
> -- 
> 2.34.1
> 


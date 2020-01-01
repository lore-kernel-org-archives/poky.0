Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com [209.85.214.195])
 by mx.groups.io with SMTP id smtpd.web12.3018.1577908515130544070
 for <poky@lists.yoctoproject.org>;
 Wed, 01 Jan 2020 11:55:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=l5I1ukgB;
 spf=pass (domain: gmail.com, ip: 209.85.214.195, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f195.google.com with SMTP id x17so17038971pln.1
        for <poky@lists.yoctoproject.org>; Wed, 01 Jan 2020 11:55:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=ZeivrKjfbrZj3Dt+VgMQUm7DDn/MYNFSiIbn7PZtMz4=;
        b=l5I1ukgBQSFIojVIhqDUxPpLPubue3eAjeO8tO7hyNN6KHcUUZMsOVwVWYUDnPqa7M
         nL85QOstQYuJhnJVVZk9vajIVGLNhoOs/hZyRLuq/KZ6qO5LEU5A6gp0SLXcc8KxIgRu
         YtB+roceLf+FhLdR8BphpQkJWiRmWaJisOjeiK6dAbZjt86aMPk+SMpDhs8bFeBM3PUj
         RgdVOUj8ISPlaAbUSdRdWgFDU1prtj6rjdpQNCVObKliIAXTNm0LXZgLkYmOh1Dvm+JR
         DunVYstInUqG1nrxwPFvKUT/19V5bZl2g8huWy/bObIqwy5zH2im2edJvJtx5aP306r6
         BCDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language;
        bh=ZeivrKjfbrZj3Dt+VgMQUm7DDn/MYNFSiIbn7PZtMz4=;
        b=obKloTIim/wBHm4OWI7K3wxWjM9BBjGBgIBqxSMjIWSMFYkGl2T8laYSHMQuVX+xTI
         Yb1x9S5cxT3iAjLRAAOerqwst56HQUX0xxJkHz+SAen5qGEuBI9E+snZdIeOADjKxXzY
         4arf0IX3zKHHHsSKt3s1cXdP7ITT44/x8hUcdRTKvlgYg84jNOYoJjPn20ESdrDmjfxR
         jnYf/Uv2BK3TzUpe6rcw0UrxN1ublWOHsNIVM55BOnhnLvanBYeIPAJiOkxekY5dhGXz
         E/3y98OSQuAwCOP6R0D4uTFlQOWpwwdg4NCt3sJPGlzemsCAxxUDGI/xx8ufWYYsMYGu
         /xYw==
X-Gm-Message-State: APjAAAW2q616Ij8OYyygBOP+BvHXL5glcN/CFWkPjn7GvXWmstbZyHyd
	xHXxFC6giNEgeCSRyEYrXdjv5GLdxW8=
X-Google-Smtp-Source: APXvYqwJmIrFyI7+AEGCEdxJdlvHCDJH6noLiC+dRyr41yq8BcVluG1STYxGhn3YfuhGTt+hEzbfmw==
X-Received: by 2002:a17:902:61:: with SMTP id 88mr39257485pla.313.1577908514444;
        Wed, 01 Jan 2020 11:55:14 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:7152:582:136c:6dbf? ([2601:202:4180:a5c0:7152:582:136c:6dbf])
        by smtp.gmail.com with ESMTPSA id p17sm59073437pfn.31.2020.01.01.11.55.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jan 2020 11:55:13 -0800 (PST)
Subject: Re: [poky] [thud][PATCH] linux-yocto/4.14: update Yocto Bsps to 4.14.154
To: poky@yoctoproject.org
Cc: poky@lists.yoctoproject.org
References: <15E27CA73AC7A0C4.20782@lists.yoctoproject.org>
From: "Armpit" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 xsFNBFnlUP4BEADpKf+FQdLykenQXKk8i6xJNxDow+ypFeVAy8iFJp7Dsev+BtwUFo8VG7hx
 Jmd71vHMw+coBetWC3lk+IKjX815Ox0puYXQVRRtI+yMCgd6ib3oGxoQ8tCMwhf9c9/aKjaz
 mP97lWgGHbiEVsDpjzmMZGlJ6pDVZzxykkJExKaosE46AcA8KvfhRQg5zRyYBtinzs8Zu8AP
 aquZVHNXxPwjKPaSEEYqQjFeiNgFTavV+AhM2dmPmGUWCX9RZisrqA4slGwEB0srMdFf12Zg
 mD35Y9jZ80qpu5LPtJCFcsaAlebqR+dg36pIpiRR+olhN1wmC6LYP1vw6uMEYBjkTa2Rnb6+
 C4FDzCJD4UCrUvLMNeTW810DY0bjMMj3SfmSGSfQUssaaaTXCVlLGuGxyCr/kza1rHaXMKum
 Ek4EFj1fyn7AfkSLEHfJfY4sO1tpgigvs4eD/4ZSQEXSu/TjVvyKx4EvUbhlGMRyH2CPwD/H
 7DFF8tcVtJvCwUUW+zKtjxjSSLrhniNMXAOQJZ6CdaqCe4OyJQT5aRdr+FWbBRjpaRCCf5nf
 dTc88NMU9PrBT3vu0QJ5WNPO6MJpnb+d8iMNLZAz8tv8JMm2l+sMcNKSJ6lhX8peoBsfMVqc
 FgiykEO0fUt7DCbUYR5tLjM/3E5tHvTjMooVJyOxoufVLYtTtQARAQABzSFha3VzdGVyODA4
 IDxha3VzdGVyODA4QGdtYWlsLmNvbT7CwX0EEwEIACcFAlnlUP4CGyMFCQlmAYAFCwkIBwIG
 FQgJCgsCBBYCAwECHgECF4AACgkQ7ou0mfRW5/kuhRAAlR2FTq5572jrX5nnPR7AqI2bvSVb
 vqGLlvv739WhghvagbC+tu05QguopAhWW1/DcHK2+QtfIoC9UZrSW4RaO0CCo5sPjqK7l1KT
 ngWX/rGjF6xTF2QN0U/btcpMyVN2CNtVLwsDF9e+GHKoUcnFkP+JP8vHGokN9k6E/c97hLaL
 IJPeKl8LZXc2Efk+MaW1NXkfDJdcp/p+voajbihSQO6OZ/o+x9d2I3ZybKfTZ71+ek5Hxzjz
 g6KkMOI7KJjlmBlrQFAtVbS+CFAKrwkYznE6ggkcmGv3N7DeUBTUR78hf+EZEAM+ajeLMtrG
 rXE00pIb+gLGYPZxba5pCdQ+qWUW38qi9UnIRPm6fq7Ypx1r6XwJvbgCOkhbxo3D4YUdyC0b
 FE9lgrg8htbc9in4j2+hVI6ALswNjLprzXdzdKrd+T3Egx36o3Z/qrYsW2o5/A5sVvvASVKi
 wRPuEKhEhfmiHUPLvuKqhMoymHaz3fg5D2Q8G0gSDkLgeEpAjiWqf4+AGLx+MSDai7DSOsmI
 t61kWxs7cFTB32UrB/TDoVNn3Fm88ZFQpA/bngikE9jgEm045mSY86fNlbFj2mcCd0Ha1i1n
 aYc97RpgfjNMWyHDVHOGrNg/hJjkGa5RsAXkfyBwltHRw0Hj4urUQ3rr8um8PLe43SezPwXA
 oRoyDxDOwU0EWeVQ/gEQALNHwj5VSPdnvXy1RXUuH+rclMx4x8zaqDyY0YqHfA7b/d8Y0VAt
 Y6YpzDeFTwD8A0Wfb7kZ2mlDIE6ODCB71uT/E3C6b+FiiN+lgzslznjUW+9l8ddDhRrC8HMG
 37vrXF5h++PTXUKEKUlkDib1w093tu3mlJXUvIAzl8CEHkptF6Br0L9XxFwuWoNUfjT9IorQ
 0SVIhvq5PhVAITXUD5fD7/N8B4TYegmHFRo1UaaKSnSHwlJJkzKpeWOH8QTYrP0RHxX86Obv
 IZuwbAo3F3oojcvLJt9NxWnbEmEALkleklLZnukgu7q5Wp1VDwhUbMFTLb6qmnBa/Xi30uOk
 0l1TMHDbeQswvQDOZBAMukSRqyBetKxQ3iTfZ/3z1ubQRcVDbVlMDScSHQq0LK3F9yMOMM/6
 0QPqJjl13xn/+Bn7WJiAIXXwzAV7uo6i0khFfjDtCDQ40aeffqOLxp1yMLkc3EKJGcQ5F6O2
 ycEf4QXCYUbMXjxB0EJB8y7z+xOi5Mmd/pPlVmZ2gQK84NAL90p7n7jRlyf3gOUY+JOl4c5e
 UFiIhOzmuqNrvPOiZ02GXh6SGUU5y7IgSoIKvXSFgHAn2OG/tcspBmkyv6IuNVpmbmEgYn4I
 Rnt40UXVQkxTh0dENFhk2cjunMYozV/OqYCgmZLFSeJd8kAo4yn+yOtNABEBAAHCwWUEGAEI
 AA8FAlnlUP4CGwwFCQlmAYAACgkQ7ou0mfRW5/nNcg//R63cbOS6zLtvdnPub3Ssp1Ft8Wmv
 mni+kccuNApuDV7d63QckYxjAfUv2zYMLpbh87gVbLyCq9ASn552EbfRhTvHdk44CgbHBVcI
 ZBEdZWgRR5ViJakQSYHpP2e5AGNFnx9gSIuRTaa5rvZM+4xeoZ2vJiq93TtaYPr7UFNfK+c4
 vv4C66lkt9l95/I10eSc3RqbOKZW47emlg4X3ygEoB9k2lPrpspyf6sUuSEi0WrlSxoLAr6p
 JG8rTUErYNeXe6JCdL31odDx1Dh5sdKIj2RicUYZNilxu9f1M7jZwf2ra1FGAlKj2ybqmgpZ
 EFteaiCinEYsvDyZyOiWHjAFI+RZIPQQL3AnVp4l7wYD3r9hnqYPww0slyMDcb9262RoFkHq
 dDwxPYarrNjWUpOzxB6bFxOgNRdCTgvQl8Ftk8a/yXB6vHeUSm1vPFCBxQPZytyfOLhEWm0J
 /mkVL0Z6iRK3p1LKnpLYCS4/esL2u7RrhPyCs2SsL58YcQF/g+PpeT9geZ+oyZ/4IQ+TWJoU
 PNHndk8VBTpzrmOaJxrebNL/W6C8JCmbLM11TAUMmHYi9JDytN8Au78hWpDbIdKwg1LeSxpw
 ZZD/OqOc0DBvHOpQhzkSrtR1lVlDV/+9E8J1T4uDhrGmZwYV+4xQetypHax8aAHisYbjXdVa
 8CS2NxU=
Message-ID: <20df9437-1d65-c02d-b0dc-3a66e24846c7@gmail.com>
Date: Wed, 1 Jan 2020 11:55:12 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <15E27CA73AC7A0C4.20782@lists.yoctoproject.org>
Content-Type: multipart/alternative;
 boundary="------------D273439C09C191765612E1F9"
Content-Language: en-US

--------------D273439C09C191765612E1F9
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

ping

On 12/21/19 12:24 PM, Armpit via Lists.Yoctoproject.Org wrote:
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>  .../recipes-kernel/linux/linux-yocto_4.14.bbappend   | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
>
> diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
> index 6449538..bbe6eae 100644
> --- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
> +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
> @@ -8,11 +8,11 @@ KMACHINE_genericx86 ?= "common-pc"
>  KMACHINE_genericx86-64 ?= "common-pc-64"
>  KMACHINE_beaglebone-yocto ?= "beaglebone"
>  
> -SRCREV_machine_genericx86    ?= "b53319c5302a195ae3c156dfa2dc1a6badc91d30"
> -SRCREV_machine_genericx86-64 ?= "b53319c5302a195ae3c156dfa2dc1a6badc91d30"
> -SRCREV_machine_edgerouter ?= "326e296f237347e965a38acb34f09e594430b0c6"
> -SRCREV_machine_beaglebone-yocto ?= "1b8c86329c9dbb10b8fcaeb2dceb75680994cd84"
> -SRCREV_machine_mpc8315e-rdb ?= "f26672ec1f164b0f2a15d629128a91093f971bdd"
> +SRCREV_machine_genericx86 ?= "57278e88a6b0f7c6230f7429cab7e74229f2b7ce"
> +SRCREV_machine_genericx86-64 ?= "57278e88a6b0f7c6230f7429cab7e74229f2b7ce"
> +SRCREV_machine_edgerouter ?= "16d624ede7ca9f71331b626685435ffee022dd32"
> +SRCREV_machine_beaglebone-yocto ?= "2e7b9777f352f70e2e9a82d8c403d3ea88d0bde3"
> +SRCREV_machine_mpc8315e-rdb ?= "9ff346785bdf42767b4002c41f5692f0a98b7480"
>  
>  COMPATIBLE_MACHINE_genericx86 = "genericx86"
>  COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
> @@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
>  COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
>  COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
>  
> -LINUX_VERSION_genericx86 = "4.14.143"
> -LINUX_VERSION_genericx86-64 = "4.14.143"
> -LINUX_VERSION_edgerouter = "4.14.143"
> -LINUX_VERSION_beaglebone-yocto = "4.14.143"
> -LINUX_VERSION_mpc8315e-rdb = "4.14.143"
> +LINUX_VERSION_genericx86 = "4.14.154"
> +LINUX_VERSION_genericx86-64 = "4.14.154"
> +LINUX_VERSION_edgerouter = "4.14.154"
> +LINUX_VERSION_beaglebone-yocto = "4.14.154"
> +LINUX_VERSION_mpc8315e-rdb = "4.14.154"
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#11878): https://lists.yoctoproject.org/g/poky/message/11878
> Mute This Topic: https://lists.yoctoproject.org/mt/69202191/3616698
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub  [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-


--------------D273439C09C191765612E1F9
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    ping<br>
    <br>
    <div class="moz-cite-prefix">On 12/21/19 12:24 PM, Armpit via
      Lists.Yoctoproject.Org wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:15E27CA73AC7A0C4.20782@lists.yoctoproject.org">
      <pre class="moz-quote-pre" wrap="">Signed-off-by: Armin Kuster <a class="moz-txt-link-rfc2396E" href="mailto:akuster808@gmail.com">&lt;akuster808@gmail.com&gt;</a>
---
 .../recipes-kernel/linux/linux-yocto_4.14.bbappend   | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
index 6449538..bbe6eae 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
@@ -8,11 +8,11 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86    ?= "b53319c5302a195ae3c156dfa2dc1a6badc91d30"
-SRCREV_machine_genericx86-64 ?= "b53319c5302a195ae3c156dfa2dc1a6badc91d30"
-SRCREV_machine_edgerouter ?= "326e296f237347e965a38acb34f09e594430b0c6"
-SRCREV_machine_beaglebone-yocto ?= "1b8c86329c9dbb10b8fcaeb2dceb75680994cd84"
-SRCREV_machine_mpc8315e-rdb ?= "f26672ec1f164b0f2a15d629128a91093f971bdd"
+SRCREV_machine_genericx86 ?= "57278e88a6b0f7c6230f7429cab7e74229f2b7ce"
+SRCREV_machine_genericx86-64 ?= "57278e88a6b0f7c6230f7429cab7e74229f2b7ce"
+SRCREV_machine_edgerouter ?= "16d624ede7ca9f71331b626685435ffee022dd32"
+SRCREV_machine_beaglebone-yocto ?= "2e7b9777f352f70e2e9a82d8c403d3ea88d0bde3"
+SRCREV_machine_mpc8315e-rdb ?= "9ff346785bdf42767b4002c41f5692f0a98b7480"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.14.143"
-LINUX_VERSION_genericx86-64 = "4.14.143"
-LINUX_VERSION_edgerouter = "4.14.143"
-LINUX_VERSION_beaglebone-yocto = "4.14.143"
-LINUX_VERSION_mpc8315e-rdb = "4.14.143"
+LINUX_VERSION_genericx86 = "4.14.154"
+LINUX_VERSION_genericx86-64 = "4.14.154"
+LINUX_VERSION_edgerouter = "4.14.154"
+LINUX_VERSION_beaglebone-yocto = "4.14.154"
+LINUX_VERSION_mpc8315e-rdb = "4.14.154"
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.

View/Reply Online (#11878): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/poky/message/11878">https://lists.yoctoproject.org/g/poky/message/11878</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/69202191/3616698">https://lists.yoctoproject.org/mt/69202191/3616698</a>
Group Owner: <a class="moz-txt-link-abbreviated" href="mailto:poky+owner@lists.yoctoproject.org">poky+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/poky/unsub">https://lists.yoctoproject.org/g/poky/unsub</a>  [<a class="moz-txt-link-abbreviated" href="mailto:akuster808@gmail.com">akuster808@gmail.com</a>]
-=-=-=-=-=-=-=-=-=-=-=-
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------D273439C09C191765612E1F9--

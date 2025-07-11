Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3F0C83F1A
	for <webhook@archiver.kernel.org>; Fri, 11 Jul 2025 09:30:26 +0000 (UTC)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
 by mx.groups.io with SMTP id smtpd.web11.9798.1752226216941857954
 for <poky@lists.yoctoproject.org>;
 Fri, 11 Jul 2025 02:30:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=tNsRpX1E;
 spf=pass (domain: linaro.org, ip: 209.85.208.169, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-32ce1b2188dso17215041fa.3
        for <poky@lists.yoctoproject.org>; Fri, 11 Jul 2025 02:30:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752226215; x=1752831015; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6AJ5hK7Y37/bgWEqdyzsIbVFTZuUqVJoQI1oQqIe0d0=;
        b=tNsRpX1EU6SGr6CxoU1tlEHMpzBSz2JpLCVIs1+5JlLZB8RzM06hd7prsfUpcBDdSe
         r1QPJkRU8GroyrcwlsVL1jrXej+otNMYKl5sWW5KOjzSxwGTlhBg7ljbfBNM54Ya0Toz
         q5DUv1XA9bjW1DpaTlPafYNNUotJvQIME1C4eyQTuMZZIm0c2bKu/bCGN7mPUid6kqG5
         1c4RONm5TzwX7i2kgjjkeOeATrTkXhMVjlxXeIfxfE7TMUKunirjgwXBTa6QtJe/sDOY
         FGob65h5+7uWHLfl+MeIapsAE4+EdQIAGvrWvXZVmj+ayYoFq9oRcDRju+tfWoah1BQs
         0FGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752226215; x=1752831015;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6AJ5hK7Y37/bgWEqdyzsIbVFTZuUqVJoQI1oQqIe0d0=;
        b=oTBJZrVpDhbo2PwmfT05DWtV7Ef8Z+PdSTLKMxFMg/nlxzQZKyUGDDVsrSZAqyPEWn
         ZMjB0M93uCpoq6JQuLFGx5j78WlmMU0JBGvLE3MoE+qitP1uKLCAalv1C9D8LgAm2AKJ
         nY5ytajPJKdCGZTRgcsrlfZhfuk4nj3mAVjHrwSlVUxFGnG1DDCXzIY2dDxcGGpRZUj9
         6UY/BssKmr1BeJh+jIe9ZSkvP5u1dQEYfmfoBYauLATBphHYV/+nxb3cm00Lsh6QOuvF
         AtYtSb9LTmGQRxhdmO2DQTDDD1dWrWzYj7b9FUVWhEBA24aO/a3fnQpgeSqYq9tC2ERz
         T+lA==
X-Gm-Message-State: AOJu0Yx54EL0UV9dg49KsIZ1jeDeXkBbt6S11Gkntv+ukokf6iTu7Jtf
	b+HfwN7e9RSIG7f5MZ1zCDQLENOsOwtJ8T2rYlTgH7jRL1YRdbD+xDokQqctRlL0NHA=
X-Gm-Gg: ASbGncs1/gt7JplTT4BH2nmFs/Uz2HDsGic+cMRGYfznjMhWdexFVvpWyGh9/sTO8rd
	Jt07HRCbKwUshju1Zwcryq4so2M9ZnzsYXL4emEFADea/n7siFLAxXxtTmmj+/+jlw6Zl9bt4Gr
	1BmFj4hOLHhaz/tBC8JFfOJEj7S7bWB0D+ta+3CjE0izLENDZ1cDpdm610GrhciUN6/fBNq/TBE
	yNvDf/MkCQ5e/juxq875uIOw+PpygnjTqTT22TpHZDIh2+VHKLKzovvvGCGzyvme304LCEV4o5Y
	PBTCA4ud8mDnYzsBJiWlP4dbPdxA50duwglBwQcbvp+OEWsfGr1chSP0HaY8oABbUMSgLloGuq1
	LsbE1uS5CdA12ljNmLVWtKi8/LRVoF1lgMdv8nlp6hr0pdoFaKh0pqGQ=
X-Google-Smtp-Source: AGHT+IGb6mhgP6QpKePbB9g0SrPp/wXwbIl1gsLQLPS+i7uBGd7a2dbtiXrg774tlaa1JYo5jztwyg==
X-Received: by 2002:a05:651c:4190:b0:32a:69c7:7b0b with SMTP id 38308e7fff4ca-33053341cb8mr5637081fa.12.1752226214987;
        Fri, 11 Jul 2025 02:30:14 -0700 (PDT)
Received: from nuoska (87-100-218-141.bb.dnainternet.fi. [87.100.218.141])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32fa29134e3sm6248071fa.11.2025.07.11.02.30.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Jul 2025 02:30:14 -0700 (PDT)
Date: Fri, 11 Jul 2025 12:30:13 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: Ross Burton <Ross.Burton@arm.com>,
	Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@lists.yoctoproject.org
Subject: Re: [poky] [PATCH v3 5/5] oeqa parselogs: add
 parselogs-ignores-genericarm64.txt
Message-ID: <aHDZpReCMhrztS7a@nuoska>
References: <184E5E78D990934F.30429@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <184E5E78D990934F.30429@lists.yoctoproject.org>
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 11 Jul 2025 09:30:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13700

Hi Ross and Richard,

Enablers for this have been merged to poky master branch now.
Could this be applied too?

I've noticed that meta-yocto-bsp patched are not getting applied
like changes to oe-core. Is there something wrong with the changes
or is something different in the review process which I could
take into account?

Cheers,

-Mikko

On Wed, Jul 02, 2025 at 10:25:59AM +0300, Mikko Rapeli via lists.yoctoproject.org wrote:
> With safe to ignore pinctl and initrd warnings from
> AMD kv260 boot.
> 
> Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
> ---
>  .../lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt | 4 ++++
>  1 file changed, 4 insertions(+)
>  create mode 100644 meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
> 
> diff --git a/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt b/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
> new file mode 100644
> index 000000000000..1e8b1f4b7d1b
> --- /dev/null
> +++ b/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
> @@ -0,0 +1,4 @@
> +# safe to ignore minor firmware issue
> +zynqmp-pinctrl firmware:zynqmp-firmware:pinctrl: failed to set: pin
> +# safe to ignore initrd warning
> +Can't lookup blockdev
> -- 
> 2.43.0
> 

> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13690): https://lists.yoctoproject.org/g/poky/message/13690
> Mute This Topic: https://lists.yoctoproject.org/mt/113944197/7159507
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [mikko.rapeli@linaro.org]
> -=-=-=-=-=-=-=-=-=-=-=-
> 



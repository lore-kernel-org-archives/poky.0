Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A1B3CCF9F8
	for <webhook@archiver.kernel.org>; Fri,  7 Nov 2025 16:38:04 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.3457.1762533474692544638
 for <poky@lists.yoctoproject.org>;
 Fri, 07 Nov 2025 08:37:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=CQQOE3pf;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-47118259fd8so6918525e9.3
        for <poky@lists.yoctoproject.org>; Fri, 07 Nov 2025 08:37:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1762533473; x=1763138273; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=kVCTuVr62dyryYUClIkCtIKZ6BHTOQbHTZ/Bq+sqN+M=;
        b=CQQOE3pfR6pfSeIkxkmmEvCmlgmhhqlbfSm3BgclGi5dvgBBWY4ZyuRZ0E18KA1JFh
         a90SQiJFeb6t7nyd1RR6ziAv9IqZSZTGfTnlljMFjjTgykafjx+pN/3/ezoJxyfcb0Ty
         syj840gjn2HMHFvHw16bB1LCnrTm2xT/1vyg0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762533473; x=1763138273;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kVCTuVr62dyryYUClIkCtIKZ6BHTOQbHTZ/Bq+sqN+M=;
        b=C8SeWgzLsgHjLUaNSf5c4Mu2k6tjZCef3ea1MwPcLgITebZeVxkBSceZDhwAVOb/7B
         TCMc7R4HwnxyAnEubJJ6ktZxrTfhHtUg3G+4RmAM6AQILEt2SXwQBJs3QR40mD2d7ZwV
         1lJAyNOCO89o0QYvmoprKbB2SpKPkW/k+wDnfCAXe8iD+k19T4EvZu+oYuPlytjX9zQs
         QUJlPh1H/kC1xv+a/pA3gdsW5K8QBGp93ASuVwim9b+te7IegE8Aeujjh7U84WKGRUpU
         oX0oidfTgRjOfzGo3DKCt5GGFjzktIv7+Rv4IHsYElviuoGtKZQ2rUd+w1YzJPU9i7NF
         CRaw==
X-Gm-Message-State: AOJu0YwgquKvUgQH9bhBe/LbyAVCShQvj7tHhmHz4FNcJna8mlmpGvoh
	AUQRArDieS5Fjp5jqixajP7F39ClYxt2GOj2ZSWF1IhYsc5hQSL7fN+xuP73Hp1x+Og=
X-Gm-Gg: ASbGncu6c4FprKHoghxx88WrRoolZRHBVISyRiZqnNTFEvvGLd9QcglYndyhmmPMErS
	0grC3KwnUwQp9HMK7UtU1yXCdreONNA7rD5PsORzBp092c2o/t2R6/9nsygEye9tHbBxYn3/a/q
	vr38rTGTVG2d0sg8lyq3v2YifTWVtLO/BHPVdff+E0nFkWJpE2pKGGUpRf/sC77KK9JJglLGpTm
	KlrZ6QHBDWV03xMFZcmqLqLLB91aJR3WQMY4U55IzH6uotovhAwhCJ38bquX1Wa3tChGMiOzAyl
	n70XDzikTiE8ZH1IB/C5bZllHTk1E+6L9tdKpbv6fisYaRvBPLNheDA2FFRb/1bom6r1XESc6JX
	GbbtMG8rWWrDffvpmmtq3Y80OXh3F0G6ebxBqNlMrY2lV2qaEI/5WcMgi9kh3TDqHy2l1tJKLe4
	K6yRkAzITuNn+eCq1RZa1uqQ1vmwR5RTP/DSTJki8Plm0rnB3uGRwP6v7zAR43PQvw6YbD3+kOR
	aQ=
X-Google-Smtp-Source: AGHT+IE2IGBaNGpJuEq2EsammWFc0UzCqLvs6tezJcwfKigxkDAXcHiNafiKLoGxaEYAZ312kBdhwA==
X-Received: by 2002:a05:6000:60f:b0:429:cacf:1094 with SMTP id ffacd0b85a97d-42ae5ac3189mr2963497f8f.32.1762533473004;
        Fri, 07 Nov 2025 08:37:53 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:aeb7:f903:75cb:8c09? ([2001:8b0:aba:5f3c:aeb7:f903:75cb:8c09])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42ac677abeasm6197706f8f.33.2025.11.07.08.37.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Nov 2025 08:37:52 -0800 (PST)
Message-ID: <713f65c4bbed680412d42e1d4e5b1718e5fa33ac.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] The poky repository master branch is no longer
 being updated.
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>, antonin.godard@bootlin.com
Cc: poky@lists.yoctoproject.org
Date: Fri, 07 Nov 2025 16:37:51 +0000
In-Reply-To: <CANNYZj_ssKfHN7_2Zy2A4dJLrkTfSTjWSTBjJLtPYcD_DZxsRw@mail.gmail.com>
References: <20251107133459.1667071-1-richard.purdie@linuxfoundation.org>
	 <DE2KVT4Y3PZ6.322SIT5UH6JJ7@bootlin.com>
	 <CANNYZj_ssKfHN7_2Zy2A4dJLrkTfSTjWSTBjJLtPYcD_DZxsRw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.0-1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 07 Nov 2025 16:38:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13786

On Fri, 2025-11-07 at 17:32 +0100, Alexander Kanavin wrote:
> Can these be added directly to
> https://git.yoctoproject.org/poky/tree/README
> ?

Done.

Cheers,

Richard


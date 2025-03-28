Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FC31C36010
	for <webhook@archiver.kernel.org>; Fri, 28 Mar 2025 09:22:45 +0000 (UTC)
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
 by mx.groups.io with SMTP id smtpd.web11.7230.1743153756129429109
 for <poky@lists.yoctoproject.org>;
 Fri, 28 Mar 2025 02:22:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=WrmGvd3Y;
 spf=pass (domain: gmail.com, ip: 209.85.160.175, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qt1-f175.google.com with SMTP id d75a77b69052e-4775ccf3e56so31378611cf.0
        for <poky@lists.yoctoproject.org>; Fri, 28 Mar 2025 02:22:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743153755; x=1743758555; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=DK+0XvQY6KHoS0MB3t0I9q96zWDXeDZmHDJlsUdw56w=;
        b=WrmGvd3Yx8E1yaNN/JtnWTUeRDQTWyGz5+jhtrHKpPcVkXAaTjL+AuHzMBDxVGYiur
         k9HzW3R/sDdtxVxkFGtmUr8IDtyPz8x1mOyHQH1I0B7YwKK7J3mZqrRVez68kiUp/wos
         /qE1IbpxbBhDNOUxf0VGhad8v+VkhUauPGGCUXJ1PI+d6HBtFCBjXmEP8h6dOmixRG4J
         DVfWA9RSOLa3k02YfQVkTGDNFvUuGuh1nnGRSJtEE1V2cu3R8dF62WJeAK25Vxl31QYg
         I/tAFvln0Ra8pTpa4Y19jIJTYpG1rZR7YZDAwAk21g5P9oH6DiV74lExB5DTH+8InK1F
         x5ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743153755; x=1743758555;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DK+0XvQY6KHoS0MB3t0I9q96zWDXeDZmHDJlsUdw56w=;
        b=GykxFH4UGsTGrtQQOu91eYncN1kTsPjOoKzArAEkzkkiO6HAefMJgoeJpGu+YAywFS
         SB3deXyB1fo1s7gZC3zV7GRDujmSQ5FShs/seZCq7/uh8WA37HX85n2xSlqEXoLt6BkH
         wNT1S0m96gJwlxVVBUUIjQkAXf8b9ExbHsL4Y5mmkxOle431ahKN386iY5kVUn1oNgZG
         6p2F76hArPPIWgH0+ZpoEQENMiBIm3e9oVjX5K4p00IFugTBJoGL65zKqtgJOA3266D6
         GqUzWQH1vZKphuz/IlP4sKJlvyTgr7Crbf4tSzY3lGcl5iZteTv/X83cdIFuEleWyTU7
         NKiw==
X-Gm-Message-State: AOJu0YzbDebqMYfM55C5398Nc/Jz+TnsyW9K5vvZAgHdKVOZMFcTOlUh
	tCSDtYjWRBDdnZ69rMJYT35LrWRcDAFRYj6Qihhha9rKftwgipHJ+3vvQ4pyJcBsLX54/e+ox6l
	RwvDLJaHRENHluPxOdcgE2dzsswM=
X-Gm-Gg: ASbGncvuX/fOuA6SX+0g0ECizBNCiQlOn8LIB562T8gv/TNGf+Pd1DxAiKxLjQ5AZdN
	IyJP1lELByAepncCeHQMqHBGQxQ020iY1bk9nMnVfYmaQW3satiYixO9xcbqdw/OXsojTmFo4XL
	ezsul9fl5WE4AiQXhydV1mkxVr7nJ4uDQfHtZBJvbSazD1spE8I1B1UIuuqgju
X-Google-Smtp-Source: AGHT+IEIMe1jUC6I0nIhUVG7Wxt/+bz2VXsAlTtmi6XknkLff6W/H4LFoHYFS6ukAQQcqgKNlxQc60/1rbSSnJwL8Kk=
X-Received: by 2002:a05:6214:2489:b0:6e8:f387:e0d2 with SMTP id
 6a1803df08f44-6eecc32d83bmr25816046d6.11.1743153755029; Fri, 28 Mar 2025
 02:22:35 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj9aae71tgh4rRduu_Omx2+ZXidJLrRtSdu6ztmeJkbZpg@mail.gmail.com>
 <28798.1743149711563327312@lists.yoctoproject.org>
In-Reply-To: <28798.1743149711563327312@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 28 Mar 2025 10:22:23 +0100
X-Gm-Features: AQ5f1Jq3eDgSRaFdaouoZaK7hn285rniSP8PZ8TPoXLNNl1hnHmHuIRcovn5sJs
Message-ID: <CANNYZj8=wWszFdsmqzP=pg7s1sT1hgsTR2aEf50n7CWcwvg08A@mail.gmail.com>
Subject: Re: [poky] glibc run-built-tests not working as expected when set to 'no'
To: semc.2042@gmail.com
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 28 Mar 2025 09:22:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13580

On Fri, 28 Mar 2025 at 09:15, rajmohan r via lists.yoctoproject.org
<semc.2042=gmail.com@lists.yoctoproject.org> wrote:
> Attached the patch file (0001-glibc-y2038-tests-add-tests-special-in-run-built-tes.patch),
> which shall generate only binaries and will not run the binaries.
> Please review and let me know if you any info to share.

Please send the patch with git send-email to openembedded-core mailing
list. Poky list is the wrong place for it, and patch attachments are
generally not reviewed, as it is difficult to comment on specific
content of the patch.

Alex


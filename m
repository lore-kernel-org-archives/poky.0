Return-Path: <star@gmx.li>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7F24EB64DD
	for <webhook@archiver.kernel.org>; Fri, 23 Jun 2023 08:28:43 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
 by mx.groups.io with SMTP id smtpd.web11.37833.1687508919877153034
 for <poky@lists.yoctoproject.org>;
 Fri, 23 Jun 2023 01:28:40 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=star@gmx.li header.s=s31663417 header.b=OMNvWzQ+;
 spf=pass (domain: gmx.li, ip: 212.227.17.21, mailfrom: star@gmx.li)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.li;
 s=s31663417; t=1687508918; x=1688113718; i=star@gmx.li;
 bh=W+/ZqVDdaynY/CtxkFAueNGIMGPNEgxvZFqZanBOKhA=;
 h=X-UI-Sender-Class:Date:To:From:Subject;
 b=OMNvWzQ+Iq5Dzz9qtsbzuxn2JJ/0SVa8ALB+xReE1F3FLNqBkN8N4Pw6FhAPYs9pC9/rrFT
 noMNGVzFp5Vqj9n/FA1GfCpEuoPHLl0LLwq9Wwo3NoBPY7Q/RKOgpQhMM28JT5lSj1/es+dGP
 k3E9SmNuKEPvToNLCz8EZl1h9IlwFwBSuIRRgH/ZKsArCvrBMhoAL3EB25OXQMSfDJZIURyAV
 tZdva+YDNh3eZhAdqzk5XGgfKxxw2E/0L108q3Wo6sgkmVLmVKMUrEvpR1nZ/TiaHZ+bpjVNh
 1LrZAyDYrbnUtpJZFJEf5WDJ0cwYD0RBd8CCBogwqmLcIdrxHbyw==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.3.21] ([84.185.249.207]) by mail.gmx.net (mrgmx104
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1M2wGi-1qDicT39nY-003PDP for
 <poky@lists.yoctoproject.org>; Fri, 23 Jun 2023 10:28:37 +0200
Message-ID: <7613284c-e7b0-61c4-d93f-41a5f904d9d0@gmx.li>
Date: Fri, 23 Jun 2023 10:28:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
To: poky@lists.yoctoproject.org
Content-Language: en-US
From: Arno Steffens <star@gmx.li>
Subject: Yocto and kernel - dependencies
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:yPmm0SqiuvlJZVjoTWeDSDtRGWRZ8yrNVjb5ZLs4VPr/shqzHq9
 Ty7K/3KnL82kQ+kuj+JLKoidYIkcSREz3ESofaOwI+HnmKZK/VoLIdlmOpIyUUt083HABYS
 CHFg1HgcOXKHdQDxsmJznBPFhqgz2Wn71zOty1zbK7zAgY9vgNcW7KSzkGqwRCzE0orHrAK
 hqYVvbSHhiNoWk8QX16xA==
UI-OutboundReport: notjunk:1;M01:P0:RatG0rbHXCw=;ALH9tPQ8lYgPxXHfuLn3XX7FKd3
 sMeFlhRp/wfVzyzhqFlNzJjyBUiEh4HP23J4z/MwOYTmT+WSdELQTFgytAONIrwqPSTf+cshL
 hyWkK1VLDy7486Tz1dW0AxqaigF+5ivNTsUoWJPAJiy1PnQG0hWydWcHubJ2oU/3Fc5FqpGNR
 r4/iNQNWAu0tsUKuA7Xo6MXIKeKRWrfCTO/MNl2BBwjc73umTAnsEs0elNeGVAWQ6CReO0pjI
 VNops1ITBwa36lmGzubqabChdUWQLkZcaekk/8oBrtA7GLd2JGKuTABFRGg5HaRc8I8sJsCET
 FQqJk+ee5p8Fd2/p6FrVZoKqjJfFCpQFycMxQiDMjWPi/Vc0fsiQak0pAN7FjMahRH5JSlKVC
 0lsKPPGUR7zFphNLk4lBgJyt9in8zP6tGSIjEk/DxmyjSxIRW22oyfhQ99MpF6rdOt58SlRAb
 Y4+P1a6oqRBC5Gw1R0xSs1sSDklyZUTwA9hq2sKlSFt3WoCa3a1jbHoQY5jtPhj4xFi1mjO7E
 0vCvgdOSXhUFkdLQNZEqgZOk/1EBaM73iLMibKORBWrfpUo4NeOvCmIJRTm20t6eJ33To9kQE
 MzG8tVmnWVWa+PpGcFPtiSYhaJTFJtuZzf3uiswCWGBKIXEjF1/8mh3I8X5GWRUQ/dL0qIR7X
 s/bRYxe+s/nAUscGY0Jv8J8+OoGF2/3NEwVo5RQrAZdu56Hv3apOrLk8dECyxS84PzfXrcm8S
 ewOvWDMoDBppKVNTuZhxNCcS4Qlyr96Sgldb36vww75ZiwfINfMY1Rph+RH6gmdlunaRBXked
 FTob5wyCPXOu9chacgofPc2aXbZaEHyzSAC+bNTwc9f2d3iRNYWK6PQ3h1bbViLY+yIG4H1rV
 t3lzi4Lht+ZrczCEEG9qjGhHk8kZ6iGhSXT+i6kfmLMHQV9Cwb9MLB5+0ligW4NWLPbyp1gxA
 L2rS9A==
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 23 Jun 2023 08:28:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13089

I am a bit clueless about the relation between yocto build of rootfs and
kernel.
Usually I build my kernel completely outside of Yocto, just using the
SDK created by Yocto.
But now I am afraid I doing something wrong regarding kernel headers
need in rootfs - or at least in SDK.

My machine-config seems not to have any link to kernel or
kernel-version. I found that linux-libc-headers (is this what I need ?)
is of 5.16, while I am actually compile a 5.15 (again completely out of
Yocto).

So what is recommended? What change is needed to use headers out of my
linux git repo?

Best regards, Arno



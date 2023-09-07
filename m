Return-Path: <star@gmx.li>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8450FEC8732
	for <webhook@archiver.kernel.org>; Thu,  7 Sep 2023 14:16:11 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 by mx.groups.io with SMTP id smtpd.web10.13952.1694096162870705535
 for <poky@lists.yoctoproject.org>;
 Thu, 07 Sep 2023 07:16:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=star@gmx.li header.s=s31663417 header.b=O6QsSEed;
 spf=pass (domain: gmx.li, ip: 212.227.17.22, mailfrom: star@gmx.li)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.li;
 s=s31663417; t=1694096161; x=1694700961; i=star@gmx.li;
 bh=cTG5U4OpP5mS8luFbNwKkjpnbIXhs1JaWqbjdKS2IUo=;
 h=X-UI-Sender-Class:Date:To:From:Subject;
 b=O6QsSEedVaeQG0T3lgN13hEVKqtBD9ajNJS6RwSeEc9fsXEQAU5F2hkfW052WbYt7bmPptj
 mD/EZ+oQsoqCnr674SnU4BclVSTeaDu4O5ESzakz2cW84R86akwAY3ZwZPXlXFeQjkHO4gJDu
 c3MmXMe7Vfh2UH4vVmb1OuAVRq/DsOaNZh5qbA94Mpr9v6xKuG9dl4PIbt7TottrSZi9iRYKR
 /Gb4MDerNvlg1zSLaIUGMTMlWSj1w+kM4HoqK0IjuJRT9gW9819nxUqjqRpq5qnPlK3uuh0Ri
 aVjI5KTHUblJ4dgIRB6ryOuGcn8eYqMXNuphRcpGdrlkqF8eV1Ag==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.3.21] ([84.185.245.231]) by mail.gmx.net (mrgmx105
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MatRT-1q2yyY0G5L-00cU9d for
 <poky@lists.yoctoproject.org>; Thu, 07 Sep 2023 16:16:01 +0200
Message-ID: <e4d1cb39-2711-c664-7161-5a6d25482c87@gmx.li>
Date: Thu, 7 Sep 2023 16:16:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
To: poky@lists.yoctoproject.org
Content-Language: en-US
From: star <star@gmx.li>
Subject: modify 3rd party machine configuration
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:BnCFmT+LthlxTr6lAXUsTKLijy1gTObTrX2e0Uvyj7UcZ1s2WLh
 uRcyez74E25u4NMi6N33b1fmhTudiTBA2zGQtPVEm2ekoHYCkR/bseu+rR4TZd7gOUMSWBP
 3pHdRyJKm9Elt06pnhirqhJ0+/nxGbY4unLSeUm7GJP4y0ZF8AuCqLcEh293xmH+NUtQIjo
 pALyxkN+bCbsRDOgezYyQ==
UI-OutboundReport: notjunk:1;M01:P0:LrkJ+JNlLt8=;9n9OThRGQYoJiiztXaswF+7PTZb
 ri77GKF+SyHZzqFsFaL8Qu3G6bbXRpY7K5Ff3dYxvi7r5E4gLbw/EwebDoC7wODnRMLLjP4gR
 dwlOrkolY0RFRdwyKqw++EE5PtV9dw9rTVDMuorcfePqj2uPLpr67C6WHIz+cQ8nekIqOK3kx
 5vidQOoTztdQyfJV/jAWtubmatSOhPRR+AFy1Z8YVnJ0W7xH0gg6vVaVLSQ+JG/mzSiI/wrNW
 MAvGZEz82vyQSrj5/W0htGNU4Txu1OGYzrOEmJLPHCILtocZYvb8FoJ7cBjqnOIk4SQuMVzZO
 bVx8kcZIlcmIBn6AcVDC6yaw+hqgk4oKYiLftF77cHnLf2QqMdYx3FJp68MOv+0ruaFCxfWwl
 S5nvH7elWGg6ZHxE+Zglkbd2deMcA7p/bJNZCNgsUooEJv4QnZ1fcAnQVZt+fx8OrDX56nBE7
 pDfROhgt+tNKXXVbHiBfhoRYGHa5/PM32VejVf5V6qb9ySet8XDTRa99S5cyvdUW6oo/hdcrJ
 2RgC5asfGwLExRjho8B9G7XbTjxJVW0cfo+gObFGeOUbfQ2h6c2zCy1FpTf62K/+tbfrOB5ZE
 eMZ8yUz56Fd9io3wTFaNMMJI9qskRWed/4RPt2180SmN7O1GfSxKHxbdq8HIv6nZyzXbrSBx9
 I1d0gGATHm1RkJMtNnQqxPxvgBwhmyV9KyMQqU1DG9H8vl4wMFUKfURxCeduivccWcnYDzMln
 cZMSyV9NG6IcBcF15L1aO12m19D67xJ7bnuIVeK4QqUotmwlzS8es/5KiWnaezSBdLMGzmpQX
 JDJKVjwqSzG1CF/soJLQP25M+LAxSfgQXgJs6fJNk+lDlNTROAhFFJW8m6sBzVR9kmO9xx+29
 2IrrEMismcxn586JMpH3XJNgnwLpzF3x9Z31gVawz2O2ov7Q9upfw42nDZz7Gv42BOIIGX9yv
 lJDmurROrCBM0RDmUnyrE4AThCk=
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 07 Sep 2023 14:16:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13157

In a vendor layer there is a conf/machine/test-machine.conf that
includes some inc files. This inc files have some settings as
MACHINE_FEATURES =3D "a b c"
IMAGE_CLASSES:append:generic-bsp =3D " image_populate_tool"
PREFERRED_VERSION_opencv =3D "2.34"

What I need is to change (add, remove, modify) some of the settings/lines.

How can I do that in MY layer, so not touching the vendor layer.

I thought I am adding a file
my_layer/conf/machine/test-machine.conf (so same name) and put some line
into it like:
MACHINE_FEATURES:remove =3D "b"
IMAGE_CLASSES:remove:generic-bsp =3D " image_populate_tool"
PREFFERRED_VERSION_opencv =3D ""

But that doesn't work and I can't figure out what I am doing wrong.
In bblayer.conf my layer is mentioned later than vendor layer.

How to solve that?

Also I need to supress some files in vendor layer. Is it correct to use
in my_layer/conf/layer.conf lines like:
BBMASK .=3D " ${BSPDIR}/src/vendor_layer/recipe_test/*" to remove that
from being used and parsed ?

The problem to debug it, until the parsing fails, bitbake -e doesn't
give you proper information about whats going on.

Thanks for any help in advance!
Steve


Return-Path: <star@gmx.li>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E70DC4332F
	for <webhook@archiver.kernel.org>; Thu,  9 Nov 2023 07:16:53 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 by mx.groups.io with SMTP id smtpd.web10.116266.1699514211124372075
 for <poky@lists.yoctoproject.org>;
 Wed, 08 Nov 2023 23:16:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=star@gmx.li header.s=s31663417 header.b=JbRQWhsk;
 spf=pass (domain: gmx.li, ip: 212.227.17.22, mailfrom: star@gmx.li)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.li; s=s31663417;
	t=1699514209; x=1700119009; i=star@gmx.li;
	bh=CEKbGRrbY5dYsw9fE8rhFrNn4RhPesAkHdMsvknEbjI=;
	h=X-UI-Sender-Class:Date:To:From:Subject;
	b=JbRQWhskjmBA9rM37ES6kyvLq5+iVfKHURwu7mCpnt6b6MyNetDFcM9lEa4wK85N
	 GYMkCydYdxp4SW/SOfNxH6rnVe+DwB+1NoDnXgs6nX9UnK3UAd+A5skZx3XhLX/rS
	 m2q+1SG1MeWBKr4zZUJ0vZM15aysXDLsLujxNQBy5xV0kMX02Zits8xTvmT6TFmxQ
	 hOE63bAZrTl7zyzKMJVIYVsCeXbTaGYO+2i0vjf6mF5weSuqjgQhDr6pQmX2J551G
	 P8VwT3wtvmxQxJ3xTfGdg4qiXf3FVkauqyVH0l1OecPbEmnKyK/tb1TWw8Q6xbWxN
	 zhTsPvsH9OrZjfO25w==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.3.21] ([217.225.85.4]) by mail.gmx.net (mrgmx104
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MysRu-1rNTz11MIc-00vxeT for
 <poky@lists.yoctoproject.org>; Thu, 09 Nov 2023 08:16:49 +0100
Message-ID: <54265c1a-f32a-4285-94c2-58fad656624e@gmx.li>
Date: Thu, 9 Nov 2023 08:16:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: poky@lists.yoctoproject.org
Content-Language: en-US
From: Arno Steffens <star@gmx.li>
Subject: let the manifest/used licenses become part of image
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:uuh6Lq4LzBY8geQN0sTYpMs8gc0tt3JLd0f8iN2gILw4NHryi0w
 XnVaB/r5lWCRN3Ze8eBfalWk23xK35kIw1mPbiEK0ErpBtjJ++QlMQP7GK2l18pgvuVcJ0i
 W5jm+4UCnRcxz8t+0UuB7+s7Rk6uU8eNtEbqW4zCncj/sApI2S7gRMdEE243wQ4SKg9vM20
 q7JvZcuk+07aXFERuZG/w==
UI-OutboundReport: notjunk:1;M01:P0:S+leuOrHDp0=;6WCvBbWMGwcOw5XKWe/eRoPdEAA
 RGgIfP5nakCmlgZArWEUp7oK/BXDTEx+nSoNVRRK5TcMROenE6ZKTB+BxXbQ/P8Hg+SfU7Cv6
 W7doxNzEEVy8swb2XK6TL5S56CoURi0uZ+S/VSaZc2l50zFF6wu5HRlz2EGN3Ul1a5lsWRW/L
 DSrW9HlaFdXMAYmlh2p/IOLA81krdzNE7531inMlFDaMGJPTokSyHXJ9QgPVRX4MLYje2DdY1
 3Pg0Zep5POak3P4oIKPMgrsA1/lCBt8b6F2yRtU5s+B0Nd1BhvpScOWNzbhLdUWuIBzME+/YG
 ayyewtTTT5UtyV6M6fn6fuwVgdYnWWBd3u/GgrfZjJz6pogIXRWmHJatAozwIctedBYswLYtI
 y9t4fQir+HkIZaBhtT2yQdTjaPUQNWhNFuVOp9QhRdVbWPTNCYWJcT+Xn2fNvo+PuU0k0DA9N
 JyNzHP1xY0Jwa/GvklakuDTsQaJZC48aXyua3ItvTEGbmm+XPTteEuz/5XVDyQlAVo3oIIicq
 ylaTvpVToVln6B6hhaPm6dvtGf8oAYQxYqQYx9nxpYZ3azK4U1zTbjYe1OF1CyMcNvSwOLnIp
 MlnNQGSU77SkbHnmgxK5g5hFq54UzAe0JC3De226KBM1u3Yfu47iNt/wbIGQZzaGR2bEcTWID
 DIWEbmvQM26DDAUJYrk2Mkf6L90gBWtVDE27s/9gnWZ/u2s1jGbkyj7xeHtuk+m6dsdKU6mYu
 2RczXmKjFbjwELCaD7dNc3jd5RQ6C10HABNEQq3rmKwOD5r0uN8QruCqwRRr/g6NnSooOkbTq
 VXcWIA+HayS4/zxyvczP6AIaUxY+uJ+f+Np5XWKToCP228minbtIXSmJIUQcu1obPxPqwp9Gc
 bdb+uBq2f9sZlKv2G/yHpikiCcPcRckw+/sNKD8qz98KR8pWaIq4u+71i3nS+d0L3/CLYVHIZ
 m70jlQ==
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 09 Nov 2023 07:16:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13200

Hi,
think it makes sense to provide in the image itself the manifest and
what licenses are used.

I want to copy the *.manifest to some place in filesystem, but that
doesn't work. Even if done in IMAGE_POSTPROCESS_COMMAND, the manifest
file seems to be generated at a later stage.
Although here is stated something different:
https://docs.yoctoproject.org/overview-manual/concepts.html#image-generati=
on

Any hint how to work around that? Or am I completly wrong?
Best regards,
Arno

Another thing. The tmp/deploy/license folder keeps all ever used
packages. How to get only thoses licenses that used (as in manifest)?



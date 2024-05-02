Return-Path: <star@gmx.li>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3FB11C4345F
	for <webhook@archiver.kernel.org>; Thu,  2 May 2024 12:00:36 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
 by mx.groups.io with SMTP id smtpd.web11.11593.1714651226447580040
 for <poky@lists.yoctoproject.org>;
 Thu, 02 May 2024 05:00:27 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: signature did not verify: crypto/rsa: verification error" header.i=star@gmx.li header.s=s31663417 header.b=PSRgKbXd;
 spf=pass (domain: gmx.li, ip: 212.227.17.21, mailfrom: star@gmx.li)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.li;
	s=s31663417; t=1714651224; x=1715256024; i=star@gmx.li;
	bh=u2PoZsg6VxgjEwSEfWD7EH3AePIIaeIHGuxkElvTWy8=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:From:To:
	 References:In-Reply-To:Content-Type:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=PSRgKbXdrMdu0ocxRnhkh8+uptNBRGw/D5W6CkeZWIdpL6iG1WKhgkrcwANXr09L
	 SH2jr8VoVe6bvppPLHK4NnQjksYxHdepor5J9yYDkqODCsd2YLTztuaqKJx/n8wrP
	 5WPgzVu0g10wWSATHyo0SYKx320ss7Pxjnd8MfNlizBp0nlM1pP5wCDNIr76PD7xs
	 HfewzABLT70zjmmlESTrf4enlzMLbNOTDE+1GRdqVKA30b0mZCPJaAhLJ+ESww9/g
	 7bGH3ZPCayLrxjiFeNc0TKDPwyT2hyZWv3aA4itp9Y1PQMeSQ5RZogsnhYIp/ruhM
	 NC169UH7LoQc+jcoEw==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.3.21] ([217.225.83.13]) by mail.gmx.net (mrgmx105
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MrQEx-1sOhFX2q87-00oThc for
 <poky@lists.yoctoproject.org>; Thu, 02 May 2024 14:00:24 +0200
Message-ID: <447234ef-efc0-4b35-b71c-b4988b34859f@gmx.li>
Date: Thu, 2 May 2024 14:00:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: avahi configuration (without d-bus/X11)
From: Arno Steffens <star@gmx.li>
To: poky@lists.yoctoproject.org
References: <17995B12D8E7BA2D.25909@lists.yoctoproject.org>
 <55b9a7c9-3ac3-40f2-a3cb-44328a067499@gmx.li>
Content-Language: en-US
In-Reply-To: <55b9a7c9-3ac3-40f2-a3cb-44328a067499@gmx.li>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:wiOTujsx2/QFbaJGa16bARcpSksAc15Ub0tSqSZQSeuvAo39k+e
 mvFiKLV9pftakEuiG7iD9HgRet2E2TIIjE4BnMQg5F0J3IMpSwvXbo6l6EJwbi4VqA/wi2K
 ZIRh/TPKgvzQ54IcK3yno68HsLXvFXgjvsZXzvuSTtdOgxtH+pmhslAUc3fgD67MOEPZEv1
 GoEaQhp9hjp7rnFqkHldg==
UI-OutboundReport: notjunk:1;M01:P0:c3yEvMuw7fg=;ixwTdkBYa+ETf+ArBlTQq2JbB1K
 tLy3KwrbvbzeI5XlftFjFmEp7t/TgQnHyJnKlGFq+E0ysXsWlHgpnwKBxisZ5oiTBHBO8Ugqg
 RsdXsZBkhGdSs6QS3jkW5loJ/IXw/kaKf1f1FZub9Nbp/Zyx+k04dBOJepOM+gu61K1fzEJcN
 BNkoWcrXVsnhW7XtL4mDXJ07KDXGHcqOyKORZeatKkzfEY6LxJiaaOWS9UtoKEzO7YdSsZI1D
 EaO0YGNGhzQLEOCHJWL/Jidxh6MYzFczZrd3VCqHd9OSC9nKofV7ERKfW4ThB5ojyppPvicKF
 8dM0l+9uSy/1APgpAZ0ETHq/W1rzd8qaqvcWc2DJ54XNzKHVIvjKu1QylvovQEFlFOuVBxV5H
 ElwfpRARHR6LZb+HWYz+y37ztJ0RokAiCJfi+mUdQQ1Apw0zH7hepmfRu5tYxrpt5q1wJFHcu
 uM0ScqsMdMkle8ZL2qHTJJE/yQQMBpkslBP4ZnMFNTQrkLTthKvowChRoPDxYYtwWv70RQs3Z
 Z6S53Pq0gW9mpVwoJLxgoCcKZ8qD3dVl1+/8JbnLDhOIlZcxyfDk9DwcZ/eJWINNOv6sT5BFI
 Ye3WpU9Kn85FSkOP4ogqiRiwrMWMGe2+L2japkF6DatLKvNbgPGVveVAAZfls5uQqtb+lCU/h
 rquSEf0C5SZmwNABxYllci2wsGPvcvMf84XfWCIs56Mqv4Pl1z3U1FCFVvdVN9jkCAyy6dRdn
 bfii1fZocUOo3iSML5UUcX0RsW6n1LRBEKF14rYmyTODZFz9/6z3pAb+UkJKoO7Tu+bWf3ef0
 0ITyI3dr4ay2pcTaAHdVkD2vH172/zsNOD7XjWX0P7K4Y=
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 02 May 2024 12:00:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13335

Hello,
I need the avahi to announce my embedded device to network and give it
an IP if DCHP is not working.
Over the normal "avahi-daemon.conf" I want to disable d-bus and ipv6.
That is working by do_install:append changing that file.

But, adding to image the package "avahi-daemon" (avahi-autoipd is not a
problem) bloats my rootfs with dbus-daemon and libs and  libX11 libs. I
don't have an screen attached.

So question: How to avoid that?

In my avahi_%.bbappend I added:
EXTRA_OECONF +=3D " \
     --disable-dbus \
     --disable-gtk \
     --disable-gtk3 \
     --disable-libevent \
     --disable-qt5 \
"
But that doesn't seem to help.

I am using a sysV system with poky distro (Yocto 4.0)

Best regards,
Arno


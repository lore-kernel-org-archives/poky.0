Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
 by mx.groups.io with SMTP id smtpd.web08.8851.1635324141836765560
 for <poky@lists.yoctoproject.org>;
 Wed, 27 Oct 2021 01:42:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmx.net header.s=badeba3b8450 header.b=boiCcy4Z;
 spf=pass (domain: gmx.li, ip: 212.227.17.20, mailfrom: star@gmx.li)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1635324139;
	bh=iHkUNzN+U7RZGoVZHUvlqa6/05ruUfHf4hxAtwU2bnY=;
	h=X-UI-Sender-Class:Subject:To:References:From:Date:In-Reply-To;
	b=boiCcy4Z0kjaNNTK5UxhCrZFXFCeRX9m0DKrstcJ0jzwedr299qQOZM0tcMP/aeZ2
	 dlyEWHItHzIj2hF4LmASiRQ3KM/DgxwOWybBPJNU5ynJVE32dBOaOX050erKcuwmok
	 vxXBKeW16PlYD7UvtvqMaRrbrtYHv1wSEOSpwjWg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.3.20] ([46.85.161.156]) by mail.gmx.net (mrgmx105
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MO9z7-1mHEwM1jFB-00OYyY for
 <poky@lists.yoctoproject.org>; Wed, 27 Oct 2021 10:42:19 +0200
Subject: Warning: empty_var_volatile doesn't exist
To: poky@lists.yoctoproject.org
References: <CAP2OjchVtRJfFwirrNjJ80VHLEZvMkascBbDvVkbsOfBB5BCjw@mail.gmail.com>
 <CAMKF1soxAHRFgzqwoTJ+xXbcBKBWqR2MwoDciJvw-6Hijw7Gmw@mail.gmail.com>
 <CANPvuR=FRqssxM25SAXE7pQw9=1cPOk9yya1sW+JOo-vAJ=xJA@mail.gmail.com>
From: "Steve" <star@gmx.li>
Message-ID: <cccb58eb-bdc6-8e74-f0f1-b1f4d17a3344@gmx.li>
Date: Wed, 27 Oct 2021 10:42:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CANPvuR=FRqssxM25SAXE7pQw9=1cPOk9yya1sW+JOo-vAJ=xJA@mail.gmail.com>
X-Provags-ID: V03:K1:Uo+E5A3JuRcy8Sdpm4jhtpTrVJoiBPzIwnttE7r0PIdvYaALR1M
 c8MtJ6DGv+1xY1rIo1CaNlxJ1FJv1hG7l/m/ghOINE00P0TSCd8eHyj8AY2UdbBwWHgV9ol
 Fw51lxsOBUAr92uXbb6CqdCe/DBWeaCmfZQPdVRG811GVxV0MfrC3SoszgBIB7VuLY8pcJh
 dAHZhMko1QiWSWGmBWjcg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:zMDPIZ3aPAI=:Ewey6b8jDMNWv9hDYdlIt+
 fAbG5SlfdPdmQ5O8V83IHvGbXxo9GEwNAShgx/0HVtCTu7D+hN+d8GjHEtBdzKfIOjFH+p0Gj
 QZc9cymxTdhxbV2KI9dITFslQpgHPftRajlfsKCURgPMGZVJEd9iXrP2oGEUh467sjZMwENYX
 HZ9Rtj+JY0m1iP7+Og9iwkZX45Z5j0p2HriL4jadTcyjmwOPCmXH7t5MiobrlmqW2r7AdwlW6
 OSdeQk93uMB/pgNn5hTulP8EDJU8J7Ka0a4awjHTZyA543L3gmVWyyQ9aBw/9vklrrIycFRxg
 0qIbTxO2n6u88UTStof8uDKgC170jFF9bfN6tEZr8XjTIBvTS6czapl8mPG0l60/w/wEfYWcc
 E+e359YkQuOj9ttZKS2ZNAGCEO5BlYo/qgxWdh73GFzIYnOk8KhdLpZ0CVrkdydCHCoIPAVcT
 JGDLOfnL74mSK4nQXrdA4+CkyVQpBf024Z8K/L93jz39qQ5jHOMvGikUZ8fbqmKqs0TWzGXSh
 ylre5BZFyeZ2dZPvw1Qk2rvDxn3nrgFlsehJY1Z+kyqqa9RZB9qSdcv5+6f3gT2Ts/90VX7SD
 fdbzC1IuptbgyUPYVQ3j7qjg1IFyOMRW6gwaHdwkPQz7DlimCHOou3njwcQhzDySqh9fqbjZQ
 SCt2iBnqCs6XDgB3EASuUpJtD0LNS9BKTgKiP376AR+SalKa81vQHgqVhpZEGMPWJRV3cE/nR
 DRCbOcWNpIdb/vrF2P9a+UdFWPWZ81XYsWWANgoBOy7H1Gh0th7SUiA/2tWfmFljQGTRGBH7F
 tOjbaKpATBBhStlIsHH2t3BPvAHe/rq6BRwJgkRon9q0ED6QLM3mQWoSnbyvOT/Eu0XNXwneg
 njJj25LreMin1FWbNp4vgPf1vEr314z03O23z1n655jAHNvwFPg9DFc3bH/EpKop44fXe/aky
 1MNT/ZjO2wDMdna2M4UVMtCgEJerXGaFNoWDxSu3lRkPHTuw+uy6PePkUKJG94/1vlBDUOufq
 QE6+3DNehy4fX00vfKcNJpvjn73JrlPyS43hMJC4WK/P7jiqDwuvVj0o+RFhHrE+YQ==
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hello,

I would like to remove /etc/timestamp from my rootfs.
I found it is set by "rootfs_update_timestamp" as part of
ROOTFS_POSTPROCESS_COMMAND.

I did in my image recipe the following:
ROOTFS_POSTPROCESS_COMMAND_remove =3D "rootfs_update_timestamp ; "

That seems to work, no /etc/timestamp in image.
But I get the warning from do_rootfs:
"Function write_image_test_data  empty_var_volatile doesn't exist"

Did I do something wrong? I am not feeling well to ignore warnings,
especially as I am a beginner here.

Maybe allow me a second question:
I need a part of utils-linux, but won't include all the files (due to
space limitations).
I guess I need some utils-linux_%.bbappend - but what has to be in there?

Thanks, Arno (in Yocto 3.0 atm)



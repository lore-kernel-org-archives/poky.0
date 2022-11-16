Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 by mx.groups.io with SMTP id smtpd.web11.44.1668619060672558695
 for <poky@lists.yoctoproject.org>;
 Wed, 16 Nov 2022 09:17:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmx.li header.s=s31663417 header.b=QB9dG1tC;
 spf=pass (domain: gmx.li, ip: 212.227.17.22, mailfrom: star@gmx.li)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.li; s=s31663417;
	t=1668619059; bh=N+l+89ifTzCZ7jOyigMrKHiFRRPjf14ciVfSO8axcjk=;
	h=X-UI-Sender-Class:Date:Subject:To:References:From:In-Reply-To;
	b=QB9dG1tCNqrYonWv7F48NUMHCujhDeRqAtrX2GldHIIE5XbvJWqhGXZm9skU71OmQ
	 4JqNJQsos1OoRD3VwfigtuklpMHk7HW27IgQj3tQuLZZbrlc0REbOCunyaS0IO2rdp
	 rqd5QOkj1ufdmdprv8sqyUd+i4EQ4wnhsAPkRX4/O/NAWUaYkL0h1FEjaAECIvcxSk
	 Khr/L39WZ+WUmuPkQcRZ+wh1D+80y9S/wMq+RwjuWhw+rL/Jyij+ee9fmHXq4gxHKq
	 n9Nv5M+LcQafXaAvlXwaPTkDG6PieIw7xoeJymTYRAlwJgZ4yBZIX53N8EZ/3XKTOt
	 /ZMec+GNAJmhw==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.3.20] ([84.185.242.13]) by mail.gmx.net (mrgmx104
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MIMbU-1oh4oo3n6K-00EKSK for
 <poky@lists.yoctoproject.org>; Wed, 16 Nov 2022 18:17:38 +0100
Message-ID: <ee457960-ed0b-43df-c570-ca1946f3dd51@gmx.li>
Date: Wed, 16 Nov 2022 18:17:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [poky] Replace a (not working) download by adding a local file as mirror?
To: poky@lists.yoctoproject.org
References: <CAOuPNLh1+LhxH8yuQprUntwjibAP_iuwF7tXnHjfhAZhLCCG-A@mail.gmail.com>
 <CAOuPNLgEs7Obni8kOqgznv_mLW8JQ4cF0CUS8jaV6AXEhw6aOg@mail.gmail.com>
 <CANPvuR=RT3YBSBmRHNtoeCMST2DJ3Wqq7fzh6jj2C1oxUxR0EA@mail.gmail.com>
 <61e5b4c7-9f15-1ea2-49d6-8b484bc9a461@gmx.li>
 <4f229954ab406f98ef0589105779539ba562295f.camel@linuxfoundation.org>
From: "Steve" <star@gmx.li>
In-Reply-To: <4f229954ab406f98ef0589105779539ba562295f.camel@linuxfoundation.org>
X-Provags-ID: V03:K1:tybb2F9mjtKbwTeXIBcyp9Oe2gOhAX7yXZx7ElSnD3qW99uZ6l4
 NxUbwSLOIg7vex9suEXFsm8bwRr3sWLrRDAEpV3E7dbLps7sYMwOLFoL2mbkECVxnQi8IfN
 AUtyJ7tIc4kc275D5A6pYYz2izTe5SKZmlhrsU6cP77zUC8f5sy+7+ShbJe9gLlVTuLD9/t
 aflnl/E1uL84wNUMomLJg==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:8deaKQXPeWs=;D4dpaPkEGnD/3xX8ZvmM0jk4KQX
 jcociMDwclCYhmRSd/w7jP0AmlHdpkoTlv9SEplpP3m8cYWjG5YkUtgW+vZhbZclkeIQ99iM7
 8JVRajTSijPeTw7kXEfsqAxqgS0uWrsOTuAV9hSitEtNmBEU4qI5/1h5FimwIehjQIMxkp04Y
 hi/LBtjbBq7mI3qYVjeI6jYvz6W6kCE+wVpMz7kk5yX8+9eYSnzlv3WWTtM0+imxh3XYo7wVB
 wAHT64KmL5uOwFzUu1nXRd7JjX2QwFHB/7wLWn8bw+hED6DnKXzWujGr802EpufdaoCnGYtXD
 +Q6BHaLUGfTt8UFsFhC4jx2dVwwhVKHeI9H+U6ZCsR+0LlFvF7QLd5wGEfcbTgR+nUOGfjni8
 QZqkoERxn83NT4A5L72M2rUFFtPR4NTAeBfZce+dVT+cXba/8epW5q5BGsRlLqMWTLObPIOmr
 D/d9DMLMVfe+C010Bdzd13Xm0lGLmRuPexnl0s3xaCGq5sBXQn0umQ0MEfmHnjd7WpCuoK3k4
 +ohPDu+TxWHFOF+dPT6ihh/ZykIMBOuSOlX2FlM3sqXipD5qefJ2GpowrLLlXfRna4yuBsmUR
 uoHNyFY0CrAB7VfVnotEDMuBDXMtW4A0zY+aOB7GbhyYzHUiOV2GapHQIBOoCmUsqHf7hbCrF
 H97OiqBFmdYxd1rA5Kr9W4vC4qKeP/oOPAxnCTJ5yhbvtRIcHIlmnDauNJwbubt67XEen0inf
 M/BmLNkW4aAoiU5BY3/EiJet4uy4wAvf0Q+Z49tbNw56pCYuG6070apv5AeA7r76ZceidK6Ux
 NHrzP70mG5fY9/lWI2nxpZLkP1gOiiD6sadVgXH+oZljRyP0hlH5P+Sc1lU+4lo+QbpErQbHY
 sH9Xc+RB+kRkMytAyxn4ZeC/WM5kbxCbBLUFC6/q2TiT5Ii7D8xC0OKK0h9Rja6I0zg0qY0bt
 EyHr3A==
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Am 16.11.22 um 18:08 schrieb Richard Purdie:
> On Wed, 2022-11-16 at 17:39 +0100, Steve wrote:
>> Hi, maybe someone can help, although my problem occurs outside poky but
>> in Yocto general. But I think solution might be same.
>> I do have a problem with a download (see below the exact failure). I am
>> messing around with that for quite a while and couldn't find a solution=
.
>> I am wondering if I can put this file in a recipe as a local file:
>>
>> FILESEXTRAPATH:prepend :=3D "${THISDIR}/files/:"
>>
>> after download that file externally in browser (that works)
>> Not sure will that work or do I have to add a real local mirror?
>>
>>
>> That happens while building tensorflow:
>> I don't find a solution to fix. No problem to download that file:
>> https://mirror.bazel.build/openjdk/azul-zulu11.50.19-ca-jdk11.0.12/zulu=
11.50.19-ca-jdk11.0.12-linux_x64.tar.gz
>> in my browser.
>> I found some hints to the certification error but nothing helped.
>> I am running a VM Ubuntu 20.04.
>>
>
> Normally you'd place the file into DL_DIR and it should then work from
> there?
>
> Cheers,
>
> Richard

Sounds both logically and easy. But if I remember right that doesn't
work (some time back I tried that)
Maybe fetcher remembers whether is has to download it or not.
I am not in how exactly that works, but isn't is stored in sstate?

Bad luck - can't test it right now as another build is running. The DL
folder is structured with subfolders git2, svn, uninitiative - but many
*tar.gz (or other archive-) files are just there, together with a
463byte binary file *.tar.gz.done.

Best regards, Steve

Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 by mx.groups.io with SMTP id smtpd.web10.5797.1668752871546948363
 for <poky@lists.yoctoproject.org>;
 Thu, 17 Nov 2022 22:27:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmx.li header.s=s31663417 header.b=rULMpf2E;
 spf=pass (domain: gmx.li, ip: 212.227.15.19, mailfrom: star@gmx.li)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.li; s=s31663417;
	t=1668752869; bh=uDqsJhZw7QSEEg+4EKKYMyrS3XP45vReuJQnzovoJIU=;
	h=X-UI-Sender-Class:Date:Subject:To:References:From:In-Reply-To;
	b=rULMpf2EErt10OXl43vCf05+aqiPzmeN2rZIUokbJIP59wzfsT+bInAEm27kXlUmg
	 6gV6DTxJHy3CUaDU3+EEIE7x0JHTKdCbYHijl2iSuOe4ovw4rRDp5mMgkUi2A+hhRi
	 jHpWLyzdisJ0SkasazevZRXOW0NDCfez2eDUmqUBlK1RaRvRhsSaj2IXwgHE0DbYjY
	 RoUm6RjVK4g/GO7Lf5MncvB/yA/rgef0bbFKLD1FOUI6qM0gNvdjBScd1uBf5PjKfq
	 BcK5ce7WCCz1utx0kJKAxPlbpKOuT+/4tn/0Es7hkhQRKIVeCb4HzXFlaJMNf2nRuZ
	 6AhMsf+h/qCfQ==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.3.20] ([84.185.242.13]) by mail.gmx.net (mrgmx004
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1Mel7v-1pTs1Y1WT7-00aped for
 <poky@lists.yoctoproject.org>; Fri, 18 Nov 2022 07:27:49 +0100
Message-ID: <8ef5d68d-0383-4291-f235-089267a66358@gmx.li>
Date: Fri, 18 Nov 2022 07:27:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: [poky] gcc 11.3 bug (gcc bugzilla 101723) on armv7
To: poky@lists.yoctoproject.org
References: <CAOuPNLh1+LhxH8yuQprUntwjibAP_iuwF7tXnHjfhAZhLCCG-A@mail.gmail.com>
 <CAOuPNLgEs7Obni8kOqgznv_mLW8JQ4cF0CUS8jaV6AXEhw6aOg@mail.gmail.com>
 <CANPvuR=RT3YBSBmRHNtoeCMST2DJ3Wqq7fzh6jj2C1oxUxR0EA@mail.gmail.com>
 <61e5b4c7-9f15-1ea2-49d6-8b484bc9a461@gmx.li>
 <4f229954ab406f98ef0589105779539ba562295f.camel@linuxfoundation.org>
 <17282032224EB050.28573@lists.yoctoproject.org>
From: "Steve" <star@gmx.li>
In-Reply-To: <17282032224EB050.28573@lists.yoctoproject.org>
X-Provags-ID: V03:K1:cI4KhvvshoMoEn08Z/PgZ1Pjqno1ZJWm68NyqE4YxLS0HWXB58U
 eWAyqUgswYIMJFpzmPhXZjg6ax8Z4olyJgE/6zD1p6gGTncT7ng6Q1/k1Bb4hMdG2LaHFku
 0gtf8VyFFtritlk5I+UAUQVydvOxAKowEaSeKp4upbRf0qm5TChN/k1DVCXcBUETzineZaS
 E4QfX5kMAjcKqwSmMO56A==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:2ZjPAZkltyQ=;bM9XCS17gO5oCRypkFPajNxQ3Y3
 7ulPx2RbnHn5tOM3sx5EldQWScnic38pATGhPtu5F8e+kyRczvIBgrrfi6XsQgHA/ZJBQLE12
 UNbjQoNSW5VmqKQEQb9eUd5gdcs91o9bDFxPWo6oml34jJLsamybSbIFZLb7LTGv30kzzBNY1
 iiTSleQ/YfDCQHFlYao2xTcV4MjNIxHWvYW6ZAZDJlS1x3u4w1dQdfI2wEkEBZxnDarmGPnXw
 +tn8Kv8zbHJJI3LINzdijxeJ8GO1ks6EgIPJ49whklFVOiWf34NT357h3hqZnD0DQfBMloKj1
 INBS/gLwc8oESev1EKyiqDWIV/kBDFsfn6MRz/ADU3YWqGOE/r+I0pUtvjs+iR8VdPJ8HuJdo
 gNYAiwh/XdVE6Vt4g3wxXdp2TP0AYs3dR+876kqZuDgkpQLHZj+YjgzqtakHKkOzZyNy+xCdm
 aRJr+CXbbliGWiKmleGUme3KXUWQVIHwkfXSLnBso5L2s9c/gbl+2MDBNmuw/+BPUB5i7MpPu
 YpCqHgAMeMQfnmmgyaqt4oP8lb0mJgQqFBaJy4j0/5epa5ujPqvAEm0vk4yp/BqlLShyZa6T8
 Jrt+Z6ey1woR6mq3gkwm8FdofzMbt4jaTiya8dx886fNwUW71OAwuqskVsRrxrIW8J0N1Bgoi
 L9HxBQ0/cPyX9cx4EhyHiVTJzZAdgFfA0oqcZkScYXAiz+Pn20rfmn+UO+hDqVT0HULGQ+dol
 QX70K+6mlHdQZVluEf8N4dJyE7DbMblenbuQdRT9DNB3zXazhNPhyC4rbZjy1lxQN+zRBrnsL
 KcM9Bzt6uxwgkA8kIQ4NSCO9dNKpOhVVIylgZkR3a1IhG9rkAP7QURN2NfXGNUhkT7ITaicEf
 YYP/5Rl2n0ENJoW/q5Omhd1Hr6wwItVcgZEokGf60dBOAMbR/NNuCvaGU/sdZBa7gZ7CCKqaS
 0xUcLg==
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi,

I found that GCC 11.3 that is part of latest kirkstone 4.0.5 has a
problem building tensorflow-lite. (git.yoctoproject.org/meta-tensorflow)

Problem is similar as described here:
https://github.com/google/XNNPACK/issues/2003

There are options set to compile ( -march=3Darmv8.2-a+dotprod
-mfpu=3Dneon-fp-armv8) that doesn't match to the processor (armv7)

Following this issue
and points to  patch in
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=3D101723

Which is related to gcc 9. But couldn't it be that it is not fixed in
11.3 too?

How is able to fix it or probably better ask: what can I do to get it
working? Honestly, I don't understand much of it.

Best regards, Steve


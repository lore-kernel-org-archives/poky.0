Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 by mx.groups.io with SMTP id smtpd.web12.5628.1643366553248014894
 for <poky@lists.yoctoproject.org>;
 Fri, 28 Jan 2022 02:42:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmx.net header.s=badeba3b8450 header.b=f7ayp8fI;
 spf=pass (domain: gmx.de, ip: 212.227.15.15, mailfrom: rtie@gmx.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1643366551;
	bh=ayF+VR3mVK6pGdg7XX04kruWJ4F2DBQDBnD1hVVBICg=;
	h=X-UI-Sender-Class:Date:To:From:Subject;
	b=f7ayp8fIZX1TTPacrFzt0tD5HdXBNtY0k1zkwvZZ8UUiRJ0CixUJNzU3JlUTR9BGu
	 Sb6MYpbKUOPhmRT7ldiYTyFNE/at/7ab2S08px5C8zRVDdESanqRFw3RUTZFi7HxpZ
	 jez46Eu208N9MpUw+J8Z1825N1bIkkYGSqE9+v8U=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.69.2] ([46.83.190.224]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MacSe-1mfhmv0ouo-00c7Tw for
 <poky@lists.yoctoproject.org>; Fri, 28 Jan 2022 11:42:31 +0100
Message-ID: <3d282d2e-113e-fed8-17d0-5873f6f2e281@gmx.de>
Date: Fri, 28 Jan 2022 11:42:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
To: poky@lists.yoctoproject.org
From: "Robert Tiemann" <rtie@gmx.de>
Subject: Building a package of one version for target, and another version for native
X-Provags-ID: V03:K1:+VbBC01Glwm74vlvqW9vV0TxMpAN1PUzdzXVx7s6QK2+U9W7v+8
 hxhgOi4dgaSPcX3X1ibyKazjerhwwIRBuQfO17vZJcw2QMcNlGxtNpGh+q04BIbU8P7Yddq
 8KouSpx0WnWSyY4QQInHsxwoYuXBJLPPau+fX7VVweSxGM6ZA+J032ypKO8Z+wyIp2vYsjw
 eEg54T4XZ7iyd7o56KJPA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:SOG/4SNCnjw=:TliAxBfDCQy93dR3EB4L0y
 eOZuNP8vywtjDbQZC/iYDUGOlmy8rjIOemE83fw2xrZeWASgW4HUoKCf2g+m4sKm0B525g8+z
 N4Xf9pcrdHIQTUAwJ8++b+4QOj0nWQyCrsf27+FkA5Txjm3Lb5dlz5bU+MJx9nnn1p9L24QDR
 0Dhx+4LycG+0vJtgGzJnfMfHH99mf2n2/eBdkNrsV/cmjVAKssyTnIHqXC0MbO5BUdI1/kjaR
 3eCTIQYdlaoQMmdSasxB3fKhhRTrMvqUhUqXxbFiC6bjI086AMRIsdUG9HpLcF7ayraoCa7Wx
 Az3uCh+Ku583ZRc6ihaEXtmSClWd0+B3AgMhAEgOozCGpr2Msy8AzblIZr1SeeMmNQspy0P64
 mhF1iIq69xRDR/lG+eQR2R6b0ZAKDKYtwlUBfXbmChjLW9OvvNep5k0gAT7+kOiu6bTMOG4Ey
 oEmuWAra+dsazTK0CB1rNJ0344qao6/aqJ2qgu5z9cr51w1dToJik6d+K9bOok2rJFqQVgE6N
 Hb7bP0g429C+Tfu6CX7F/jVzsfmZlkZLjYgStJMXVsRBwaBLWwuN3xWheHX0nGFzb4+E+6/On
 yq8+WEgquYiIxj7fw1woyD/bu1j2sRKMuu7wgwj4z3bcJXbOTg5LDTl86mftTJmv4rkCnFysc
 o7xdl/YfK9yktQ25xUYT6l7FhMV8Uzv35Jc264dxXiqINqb0PCRJQfCdLuGQSdJaLrLP1XweR
 Zum9Olxwt5LvSEvrWgynt8u4lY8ZoH8TC6h7/eZi4hlIjB816EVDfJc64ijClAM0xHsWxdEF9
 N+h4BfdP0wi6zwnmU0MCBHtfgOt68DhMigjYJc7+7y8Zwg7wD6fYb2yoqpczyj2CGpp0RrtIn
 s0VtcLHuPJR+GrrZ8mprcanOYFEpk153z8+SNH9/89p5+S5YIBI6GNYPShlFP0/D5KK/GlJkX
 l6nfQvycbEWUQIBKk2RCQcBcFrYSW2rUYDbEpzNmGxkqOn49pSP0nryDP274eaCsJS0oMej+k
 qc0cbMd3Ek2GkJeH5Q9K87bHh6RI6raA2Qj0kqoEbdaWIF+pFTDNgz/2gpAfIqrLmw==
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi!

Is it possible to build packages so that the versions for native and
target builds are different (using dunfell here)?

My goal is to use gnutls and nettle in the version as shipped with
dunfell (3.6.12 and 3.5.1, respectively) for the native tool chain,
but a more recent version for the target. Simply upgrading the version
for both, native and target, works, but then all RPM packages get
rebuilt (not taken from sstate), and this is a problem for me.

So, I have added recipes for upgraded versions of gnutls and nettle to
my own layer, and in my layer's distro configuration I tried

PREFERRED_VERSION_gnutls-native = "3.6.12"
PREFERRED_VERSION_nettle-native = "3.5.1"

and

PREFERRED_VERSION_pn-gnutls-native = "3.6.12"
PREFERRED_VERSION_pn-nettle-native = "3.5.1"

and also

PREFERRED_VERSION_gnutls-native_forcevariable = "3.6.12"
PREFERRED_VERSION_nettle-native_forcevariable = "3.5.1"

and

PREFERRED_VERSION_pn-gnutls-native_forcevariable = "3.6.12"
PREFERRED_VERSION_pn-nettle-native_forcevariable = "3.5.1"

but all of these seem to get ignored. I always end up with the more
recent versions for the native builds.

What is it what I am missing here?

Cheers,
Robert

Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 by mx.groups.io with SMTP id smtpd.web10.20996.1636976393911050682
 for <poky@lists.yoctoproject.org>;
 Mon, 15 Nov 2021 03:39:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmx.net header.s=badeba3b8450 header.b=cW52XSfP;
 spf=pass (domain: gmx.li, ip: 212.227.15.15, mailfrom: star@gmx.li)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1636976392;
	bh=8oxvxqevcPBFPiZ0h7H8/qQOD6kYq5otTrxu0ack16g=;
	h=X-UI-Sender-Class:To:From:Subject:Date;
	b=cW52XSfPD81ngJXmblnnx+43CjFjHc8bM3yCV/y8piWg5E6hjkAFVsOqLG59mm9G2
	 cid4YajcTOH4kQW1ra9XFoPXks2mNg7udmgU3BHxgTc9ooT39nfcA3HgNn62zlSJms
	 h99g/oX6unhoAv10sVoZqIZj200lbNa8gOljAIro=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.3.20] ([84.185.240.74]) by mail.gmx.net (mrgmx004
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1MORAa-1n2U8H3muc-00PtaK for
 <poky@lists.yoctoproject.org>; Mon, 15 Nov 2021 12:39:51 +0100
To: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
From: "Steve" <star@gmx.li>
Subject: create separate tarball for /opt or /home partition
Message-ID: <126011b7-e495-b7cf-fd75-59934c0f0f28@gmx.li>
Date: Mon, 15 Nov 2021 12:39:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:Fl/iqn3rrJ/hbJgb790fE87z7A6LUbzbR1sat96yssYNzBQp27m
 8tKI9ONN8zhDR5/32+38rC3H6ml0s/g0xnDnuDxzPO+D+hJQBse4kiCxxksObcd1zrgZDh2
 P1W8KEO7EilJzX6DoUBHa1hBXbhzDY/FUuTwknU2a50v+qmKJe6/6FVRslidvCZZvlfUU9L
 dRslXitOFjdeJuzlcVakQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:QkaCnoFAXKE=:czDOp20HXccjofIivwVCVx
 ZNPFRNICjdQNBIsxPlu5k+lNauGzcKCJMUkgJRbGdVA1Ll7r8vbYePDRmnBZrQ84pJ3Qqa8O7
 DkSPtrQ4CPr7thvtFbWwGxp8vUytWZa8bD/5ywPDR4PTBgl3fsIfF1/VvTaSMa7u0Q2/DiFql
 w2LpeNw1DjQM6eGvIv/7SZYosEE3h2/Q6csVSDtQunwXbgrG2oJB9eeqIiLYa1XGifdeqaEZ3
 7C3DpWf8UWONJ9Fo+zx8THxkKfc4uC8JqsXQVJhtVyM7gwrMKiQcZumr/tfBiRerrMiHAjqHY
 cXF96Uq3FNBVY/l5WGFj/ZkGjhNRkUOHl3xzlcnJpqK/QCWoOpK3bFmtPT1WdjpBaqWcf83MF
 R3gFxWclZjdDwW4KdMtzZV1N9ebI95pR8pylnHWKi7EHARQW7WArjJ/4fRsEWxvrtY8RjvNxY
 VuBScIL8IZgOgkUukDwNVOG42nxh/q96SsLiyQyVk+LIv1NnSovfufDpyaSgpyWa76Iiobefr
 y4bg0cd8QggKrig7xNe1Pyo/3Sfy4oYlLaJksQpK8pba/4rPtEiCNoIAsZtEFB4I5ER6Cw0zp
 UCom7bVVqj744FWiIBMGJlI09AxAEhuqS4W3gifWAKYxsXGZDxC1SGPEesuy4QrhZNA5cJpoG
 gpTThGM+TbU8O0Z5i96Z+5VZwaQ4ewOC7MH+imPpoL1WRxI0mxvMCBHOPcrSmt7dQ+vwaVUbQ
 KAOuFFWUtiw1OPGMMF44gIqoJewJusjmgXymNFDRWNYGf2nRjAk56lT3UN+qx+ZQGwY3aU8Ua
 zXktADiM20sVirzuhgFPwoGD8eV+xIk+1bBZvMOzfqwDm0vuc41jKLDgCYDvIbTZ5poh8LdMq
 qcBqMiR4m0suFcyx1IR7L1CQcOEAOltBYovUAcDDL1IBWXESxvdpmcDSVs5ivc7dYmc7iRlHB
 99bQ+bGjMVha79RWRv0ZcLVcObDHIGlgUaFiSptNJRVY/vUmLp15MWmNvrZcF1ss1GdND3dA6
 5THY7UGq4i/AgPk+lmJf5aRNabEeLxiI3WdRRwQrghH5X2yUDVVNR2lb+cqc/XzBWQ==
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Can I control Poky/Yocto in a way to create not just a single rootfs but
lets say 3 tarballs, one for / /opt and /home? And if so - how?
I know wks can be scripted, but that's not creating the splitted tar.bz2
(as example), so that seem not the solution.
Thanks in advance for any helping hint.
Arno

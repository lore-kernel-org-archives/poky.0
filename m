Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
 by mx.groups.io with SMTP id smtpd.web10.25635.1661951995982958914
 for <poky@lists.yoctoproject.org>;
 Wed, 31 Aug 2022 06:19:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmx.net header.s=badeba3b8450 header.b=NKdp90dY;
 spf=pass (domain: gmx.li, ip: 212.227.15.18, mailfrom: star@gmx.li)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1661951994;
	bh=xk5pE92XFyOsllg1A+cFw9iLkFu/qND6uYcTcsOyz7I=;
	h=X-UI-Sender-Class:Date:To:From:Subject;
	b=NKdp90dYlTPop2g9VxzkQ3ZZ5tJXYVOUa2mznbLqzOa/4nwClreQsrSgesoiJHmbb
	 +nILgra9znyEjfrpeBnJCISgQhkgbuAH+rB9MMveZvHj3JtKTr5UVMlCWKeBdSgryp
	 fGi8XK3iIGCfxVj14cRCpaIfGxoz12ob1VkRgSpY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.3.20] ([84.185.255.62]) by mail.gmx.net (mrgmx004
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1N5GDv-1pRhLY3vTJ-011AO1 for
 <poky@lists.yoctoproject.org>; Wed, 31 Aug 2022 15:19:54 +0200
Message-ID: <08603763-e89e-f89c-aaf6-dcd6c168a002@gmx.li>
Date: Wed, 31 Aug 2022 15:19:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
To: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
From: "Steve" <star@gmx.li>
Subject: Patch a kernel module out of tree / pathes?
X-Provags-ID: V03:K1:x+fmXk+DCZN8rm/st62Ny0FgqQY4E/UuktDVTBwoeGkOZk7+hrg
 8aH39oaq1SmDMe07fDOhKGrIo582JHY+UFK0Da33mc467bz2ndMDinAdSq+rjrsFH3i5jei
 ozyXmBzBbvaJGVwdRDocIilxPXEQ7lnZy2bxDRp20jt+Fy94os38Yhaa53uT3dVAA+rWMxh
 nE/uhR114Vdfh/jbbeBmg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:CaJIldqtISs=:hb6ve5qfwYwhw0A1L9JpJT
 SD1Oq0y50qAbQR2TiabXnz2fy3NbEM1JP39F0+QZVmC+bzMRMoLjFUmmEZOm2YXwUW/gApGjL
 aoE37iiacVdcvC1P8Kuo8BWi65pcJ1oA1k8pOEMsjaD8t5LMQtklhzUURivFU66a49BjIWrO5
 7sNK4zGoxmCXA7pk7koWdPxBTKEhFjD0+DD1msuQCdsoNbX15p3VXv59hKDMeI6kwO1OmzNps
 zC3uxX4PFgVqJZP9Z4i67pB1pRISJnExkb31eNMgY7C6+DFttzMxwFLOhmLE846383wxoFjfZ
 +xHMS17XahmPlOFAI34eA4Z2IpxKGE28ENKJJxddc+cqBhfHm0GTEmbRlrmiXXF2UWz6/ECpg
 9NijAS9Uw9lCa6mW88SEv2Idruc5D7cWSlkS6Ln77FAcgyVeiaBI1whMR3gSbgcB9Bpmf6RCE
 V3u/ontu2wtFPYTgOUeaZiod3IrwoItbnOu5MSiKzdxbzlcg3uzcrXwRXzuHWIYxE70PvCSHL
 1/mrIvSp9h6bq+5khRuq9SDmUCK7+TRWhAo5a0nhrsLM59U4/GPmaQDlQe9nN86o/1O30V6xP
 mI40Cn5P3ceJiarqxqTgqlGXeQPWs4e1KLOB7Rxdo/hMktudajlTO/j01UHAEmgqwa5b73e/m
 TZJ2IkYxqu6blU1bCAuvyIUlEG2QxsB6s7Fm+aA9BVLPs+v7BohgraFmonBgaZhqAejL20dKY
 UgKmiuIWu6VUM0ytUyg56hVdbkjHyDbdfNTLwPFzhEj4evU7QxmUXzWm40u1iJ42+9orp3gPF
 GIq35349KwEz3T8ipnbqMP1MZlqOUdiNcYkpZAwBcfahbueeFucxHNjIxbsHH3484VFEg6a8O
 f18DhFeV2qQza/HOWehBDV77lZYQMcjU8eBQmuiktQv0s6TnCz1SGtJfL9qJ8pI7DcMZ5V6kv
 HaVNWxx6tnAgp4IJvU8cZznyWEcMmGPz/S+rjhXvC17IMDcmKmv0Mf+MDxvmLb8zpQWdPLT8n
 ZGZ6ePorial5buYhnaLEIdRNxB/R+IWIHy9Ld4wh8Nabze8ShGP45sXMOMaEHAkWg913sEGsr
 BMufn8T9Brh5KjVHdxcEwNHdl6f4zctCHldViFlXRE0hkoGV+1zbhVhZ1wovzZ/uJ/N7OqGYy
 +/9vM=
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi, strange problem here. A recipe of a vendor (so not mine) builds a
kernel module out of tree via Yocto
I need to patch that module, but I get error messages.

default "S" is:
S =3D "$WORKDIR/git/dir1/dir2"

The patch has to be applied to git

The patch is only applied if my bbappend file gets this line:
S =3D "$WORKDIR/git"

But in this case compilation goes wrong, which is clear as there is no
Makefile in the new "S".

But if I leave it as it is, the patch will not applied. It complains
about not find the file to patch.

So I modified my patchfile to be relative to the location of where the
patch file is copied or relative to "S". In the later case it means I
have to start with ../../ .
But non of the tests worked.

How can I at least find out what is the path while patching?

If you may I ask why to don't use the devtool? I did, but for some
strange reason it doesn't create a recipe in the layer I want.
BTW: Is it right to do "devtool update-recipe -a >absolute path of
layer< recipe ?
I would expect to give a relative name like "meta-mylayer"

Hope someone can give me a hint, spending already a day with that.

Thanks for your attention.


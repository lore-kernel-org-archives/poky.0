Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
 by mx.groups.io with SMTP id smtpd.web08.7529.1657210812053193678
 for <poky@lists.yoctoproject.org>;
 Thu, 07 Jul 2022 09:20:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmx.net header.s=badeba3b8450 header.b=jGJyu20H;
 spf=pass (domain: gmx.li, ip: 212.227.17.21, mailfrom: star@gmx.li)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1657210809;
	bh=ihjnOcxclFmMc/aOW/yhmNHYaXgB7cSZvDPOpNEDea8=;
	h=X-UI-Sender-Class:Date:Subject:To:Cc:References:From:In-Reply-To;
	b=jGJyu20HeC0UdlCI7Gj6Bz4ojian8tMGX6HB1dxsH6/QB+n1hcVslzQkwPRQKY1ii
	 WlQojAdyhLphvSWYx7q+BSpXsYkH1oPBCiCrfjRna45GbLGblU79vR20HbivIObIGM
	 GcIAKPxMwKnu9S4FeZ3r4Vn1kj1vXjaYVQeyTsvk=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.3.20] ([84.185.255.62]) by mail.gmx.net (mrgmx104
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MRCKC-1nvGlZ1HL2-00NAma; Thu, 07
 Jul 2022 18:20:09 +0200
Message-ID: <929b4011-9c51-91f8-603e-4ec580bf9a50@gmx.li>
Date: Thu, 7 Jul 2022 18:20:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [poky] net-snmp pcilib error
To: Khem Raj <raj.khem@gmail.com>
Cc: poky <poky@lists.yoctoproject.org>
References: <20220617071314.3362109-1-kayo@illumium.org>
 <57bbb930-8343-5aa2-e4a4-d7aa92997e2a@windriver.com>
 <efa3d9fe-4f53-5306-901d-2a25edb5ac09@gmx.li>
 <CAMKF1spPwEDiMqwzMK9cz2NGZ-xtZLSnG0A14P+YimppMQBdPA@mail.gmail.com>
From: "Steve" <star@gmx.li>
In-Reply-To: <CAMKF1spPwEDiMqwzMK9cz2NGZ-xtZLSnG0A14P+YimppMQBdPA@mail.gmail.com>
X-Provags-ID: V03:K1:Od3uAIU+w9D/YZQlnRnvL0IpqUxOioIBrA2NNkNDBk8cDSzhID0
 K3f1lDiO9EZ7DHXQFlV204ol5MBNZCYZHE9eTnXm3fj8jvhKY6F4KDvwWJmTcey1zjKVpXh
 kO0RrNu5/Cf9sM/jWM7FeRchMFVDYwAcqGF69ddGkPyGOwgQ8EovT8CR+DzDyt90i+GxffM
 sgFRh/nwmwG4OS7V90tpg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:LIkUD+O0H/I=:k9U897BMynx1OpqFtNTahx
 zzQWLEx6AfKUFUjWyyJlQmch951K+vqqEUgUrCcHrS0/quIZT4fV4kC+gQwXpKO7FwLEl/kXb
 XUPX9vzF/KNJboeW2CQVuxmhkWCNDeHg76ALFWmEV/k3QoWsZ49e9PDUbTQsvUYl8c2Jx+IAF
 VUROf6/3dZhvIogT/w+rbd2TxAxr/MHt5ZC600rYg0r3Iqjevb5ZY4j/lZUMoZ8wMPf1aI0w6
 Tf3ZAfHuOlMycwyd4EpXjq9qZ3puVVOFnhyELIQOexsJoXpwnCzOPfa11rGBXli2M5aPkz4ST
 tGgWZ31txnYHXqBugwrUIoFl2QVtxeJmpMBOpW9u59C9HF7JRZpd4Pz86rSFBcC8q3jYhIF4Z
 R9MzhFlsR1zW+CljAUo6QcAck5vP1wiITiIcqIMaJhyzbZVaKOYfJ/wsLaqo7BumpbgJ8QWNv
 9jE94ZYtDzVMic8WFLZro754TV0NlkRn3h54yUHXIDCmRnZhy8aPe2O4uNL2GttwFTH1GJuTA
 Fj1iNfq+Y/vGw6CPtKr/Zo7IluUGeVjX+GaXGWG80hWh5EbwbHzcjimwOF8yHCpXCfulRmFPs
 VlwG798io5/wFbrhd6+EigXdxM4rSEshY9tASQ3ufiFsvABTiTxab8PgbtFJdxgyPy+C8Ig6k
 ISl2gk5fnv+4rKT/o/PqLe7gvhRmRTO+/+JaG4WstED+y2JQUZm1tbuLQvqdm8GTLvoOfkajU
 GmdP8wB7+lGRLXU8BvWfJjKjj4QcIQmCPeHKMRO8oiqhf1R+i9Zn89UUvcECGGwvOLLeg9qlc
 8PUL5GeQVCTlVicVt4vu0QaBxioxN6CcXMIqA9ciLPrpVo8HmAULFKQe1AF6iF5f6WOq5/m+T
 /VJXoA4WfdgmFFJvllK9bSuBIkMr92gCPRVkI/VBOC6p53ivnCkaoNI8gYWfwcm7F2Nm4nl7V
 ZLd5dCkd7UX/APrChN2RmeDn+9uYgrWCKvDD0BWUzST2SJMufdKkdIGThr0L1THrjC5l7Unll
 BeyTOz8EGeGPiv2DvG55Qp3eldepwohjjOUkJElptPpYYwTbHc6OSqmC34XcOjsZXomRwZ90l
 R9LSGXLNLCWxeSEmwrn6XTp4HZ5XWj5rmbW
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Am 07.07.22 um 16:38 schrieb Khem Raj:
> On Thu, Jul 7, 2022 at 6:41 AM Steve <star@gmx.li> wrote:
>>
>> I get error (pcilib: Cannot open /proc/bus/pci) when starting.
>> I found a few matches but seems that this should be resolved if no PCI
>> is available. Maybe I did something wrong and have to configure the
>> recipe (kirkstone snmp 5.9.1) somehow - but I don't know how. I found n=
o
>> indication to pci.
>>
>> I found some define HAVE_PCI_LOOKUP_NAME - but how to unset this to get
>> rid of this nasty message?
>> Or other way asked - how to configure it so that it doesn't think it ha=
s
>> PCI? I am sure, I will not use it.
>
> Is this happening when using net-snmp ?
>
> found something on stack overflow might be helpful
> https://stackoverflow.com/questions/9470494/snmpd-cannot-open-proc-bus-p=
ci?answertab=3Dtrending#tab-top

I found that too. That's how I find that define.
My problem is, I have no clue how to create a bbappend to patch that.
I mean, my ability of changing recipes are rather limited.
Did you read the solution - change code after configure and rebuild?
Don't know how to do so in my build.
Also the recipe depends on pcilib if I remember right...

Return-Path: <B29882@freescale.com>
Received: from AM1EHSOBE002.bigfish.com (am1ehsobe002.messaging.microsoft.com
	[213.199.154.205])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15959E0030C
	for <poky@yoctoproject.org>; Thu, 12 Jan 2012 09:23:23 -0800 (PST)
Received: from mail66-am1-R.bigfish.com (10.3.201.245) by
	AM1EHSOBE002.bigfish.com (10.3.204.22) with Microsoft SMTP Server id
	14.1.225.23; Thu, 12 Jan 2012 17:23:22 +0000
Received: from mail66-am1 (localhost [127.0.0.1])	by mail66-am1-R.bigfish.com
	(Postfix) with ESMTP id 12B195000EE;
	Thu, 12 Jan 2012 17:23:22 +0000 (UTC)
X-SpamScore: -7
X-BigFish: VS-7(zz9371I1432N98dKzz1202hzz8275bhz2dhc1ahc1bh2a8h668h839h8e2h8e3hbe9k)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail66-am1 (localhost.localdomain [127.0.0.1]) by mail66-am1
	(MessageSwitch) id 1326389001982960_20685;
	Thu, 12 Jan 2012 17:23:21 +0000 (UTC)
Received: from AM1EHSMHS009.bigfish.com (unknown [10.3.201.246])	by
	mail66-am1.bigfish.com (Postfix) with ESMTP id E97304E0046;
	Thu, 12 Jan 2012 17:23:21 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by AM1EHSMHS009.bigfish.com
	(10.3.207.109) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Thu, 12 Jan 2012 17:23:20 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.86]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.01.0355.003; Thu, 12 Jan 2012 11:23:19 -0600
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Gary Thomas <gary@mlbassoc.com>
Thread-Topic: [poky] sstate info
Thread-Index: AQHM0Uq8oQGAPfjfAUCEy4RiWbY3epYJWxqAgAAEiwA=
Date: Thu, 12 Jan 2012 17:23:18 +0000
Message-ID: <CAEsOVNfC5t6p3enJdauZDSiPZxDA3MkHCwPMgqkOD8s9qyz3Zg@mail.gmail.com>
References: <4F0EAE81.8030800@mlbassoc.com>
	<20120112131352.GC3452@jama.jama.net> <4F0EE095.1090709@mlbassoc.com>
	<20120112133749.GD3452@jama.jama.net> <4F0EFD47.1070708@mlbassoc.com>
	<CAEsOVNcLNJ2iD2YANL6z2ris6kjbQ1kbky2onu8hZrNTim=P+Q@mail.gmail.com>
	<4F0F1321.8080706@mlbassoc.com>
In-Reply-To: <4F0F1321.8080706@mlbassoc.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	Poky Project <poky@yoctoproject.org>
Subject: Re: sstate info
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: McClintock Matthew-B29882 <B29882@freescale.com>
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 12 Jan 2012 17:23:24 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <986DD84B695EB74F83A25B4DE7B214AD@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 12, 2012 at 11:06 AM, Gary Thomas <gary@mlbassoc.com> wrote:
>> DATE is not important, that is why we are explicitly telling the
>> signature to ignore this variable.
>
>
> It seems that DATE needs to be ignored other places as well. =A0Digging
> further, I find:
>
> $ bitbake-diffsigs
> p60_poky/tmp/stamps/i686-linux/quilt-native-0.50-r0.do_patch.sigdata.2169=
68eaca38198b88a7520be02e3fca
> p60_test_pass1/tmp/stamps/i686-linux/quilt-native-0.50-r0.do_patch.sigdat=
a.0ce7898e700de80ff8afcb0850ec4ed0
> basehash changed from 4863b21531f8236184a7c3b16da3ea13 to
> 7ee430d1251148b2509ef2aefb6e5443

You might just try adding to BB_HASHBASE_WHITELIST in bitbake.conf
which should ignore DATE in all recipes. I thought this was there, you
can check the history to see...

-M=



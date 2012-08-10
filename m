Return-Path: <B29882@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe005.messaging.microsoft.com [216.32.181.185])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02B0CE003C8
	for <poky@yoctoproject.org>; Fri, 10 Aug 2012 13:24:44 -0700 (PDT)
Received: from mail207-ch1-R.bigfish.com (10.43.68.228) by
	CH1EHSOBE016.bigfish.com (10.43.70.66) with Microsoft SMTP Server id
	14.1.225.23; Fri, 10 Aug 2012 20:24:42 +0000
Received: from mail207-ch1 (localhost [127.0.0.1])	by
	mail207-ch1-R.bigfish.com (Postfix) with ESMTP id E104E2C03B2;
	Fri, 10 Aug 2012 20:24:42 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -2
X-BigFish: VS-2(zz98dI9371I1432Izz1202hzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hf0ah107ah10d2hbe9i)
Received: from mail207-ch1 (localhost.localdomain [127.0.0.1]) by mail207-ch1
	(MessageSwitch) id 134463028260554_30057;
	Fri, 10 Aug 2012 20:24:42 +0000 (UTC)
Received: from CH1EHSMHS010.bigfish.com (snatpool3.int.messaging.microsoft.com
	[10.43.68.226])	by mail207-ch1.bigfish.com (Postfix) with ESMTP id
	0C47C160060;	Fri, 10 Aug 2012 20:24:42 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS010.bigfish.com
	(10.43.70.10) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Fri, 10 Aug 2012 20:24:41 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.41]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.02.0298.005; Fri, 10 Aug 2012 15:24:40 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [poky] [denzil][PATCH 1/1] cooker: fix UnboundLocalError when
	exception occurs during parsing
Thread-Index: AQHNdzYrdnTzbkmtWUezl5EcUFuOWg==
Date: Fri, 10 Aug 2012 20:24:40 +0000
Message-ID: <CAEsOVNenn91ZPP6R5_Gwty3GF+dNpcRoK7WnJzPXUuhodsaBUg@mail.gmail.com>
References: <cover.1344615154.git.paul.eggleton@linux.intel.com>
	<f337cfe301cd00c296fe771c4f29eb133ff21fb3.1344615154.git.paul.eggleton@linux.intel.com>
In-Reply-To: <f337cfe301cd00c296fe771c4f29eb133ff21fb3.1344615154.git.paul.eggleton@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [denzil][PATCH 1/1] cooker: fix UnboundLocalError when exception occurs during parsing
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
X-List-Received-Date: Fri, 10 Aug 2012 20:24:44 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <DF32A671465AB746987CF3A647AEDA5A@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

I can confirm some users have seen this, I will try to get them to test it =
out.

-M

On Fri, Aug 10, 2012 at 11:13 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> Fix a recent regression where we see the following additional error
> after an error occurs during parsing:
>
> ERROR: Command execution failed: Traceback (most recent call last):
>   File "/home/paul/poky/poky/bitbake/lib/bb/command.py", line 84, in runA=
syncCommand
>     self.cooker.updateCache()
>   File "/home/paul/poky/poky/bitbake/lib/bb/cooker.py", line 1202, in upd=
ateCache
>     if not self.parser.parse_next():
>   File "/home/paul/poky/poky/bitbake/lib/bb/cooker.py", line 1672, in par=
se_next
>     self.virtuals +=3D len(result)
> UnboundLocalError: local variable 'result' referenced before assignment
>
> (Bitbake rev: 1ae0181ba49ccfcb2d889de5dd1d8912b9e49157)
>
> Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> ---
>  bitbake/lib/bb/cooker.py |    2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/bitbake/lib/bb/cooker.py b/bitbake/lib/bb/cooker.py
> index 4a4dc38..4016f3b 100644
> --- a/bitbake/lib/bb/cooker.py
> +++ b/bitbake/lib/bb/cooker.py
> @@ -1644,6 +1644,8 @@ class CookerParser(object):
>                      yield result
>
>      def parse_next(self):
> +        result =3D []
> +        parsed =3D None
>          try:
>              parsed, result =3D self.results.next()
>          except StopIteration:
> --
> 1.7.9.5
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky=



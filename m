Return-Path: <cristian.iorga@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DBCCE006AD
	for <poky@yoctoproject.org>; Wed,  9 Jan 2013 23:33:59 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 09 Jan 2013 23:33:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,443,1355126400"; d="scan'208";a="272139642"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by fmsmga001.fm.intel.com with ESMTP; 09 Jan 2013 23:33:58 -0800
Received: from irsmsx152.ger.corp.intel.com (163.33.192.66) by
	IRSMSX102.ger.corp.intel.com (163.33.3.155) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Thu, 10 Jan 2013 07:33:57 +0000
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.95]) by
	IRSMSX152.ger.corp.intel.com ([169.254.6.213]) with mapi id
	14.01.0355.002; Thu, 10 Jan 2013 07:33:56 +0000
From: "Iorga, Cristian" <cristian.iorga@intel.com>
To: Felipe Ferreri Tonello <eu@felipetonello.com>
Thread-Topic: [poky] [PATCH] connman: fixed init script, so it can run with nfs
Thread-Index: AQHN7hHj3OlUR3L/Jk2o6u78my7w0ZhAxjoggACIJQCAANr3EA==
Date: Thu, 10 Jan 2013 07:33:56 +0000
Message-ID: <969F26A8BAB325438E7EB80D3C3134FB161DC48B@IRSMSX102.ger.corp.intel.com>
References: <1357691823-8155-1-git-send-email-eu@felipetonello.com>
	<969F26A8BAB325438E7EB80D3C3134FB161DBDFD@IRSMSX102.ger.corp.intel.com>
	<50EDB3AC.9050804@felipetonello.com>
In-Reply-To: <50EDB3AC.9050804@felipetonello.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Cc: "Felipe F. Tonello" <ftonello@cercacor.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] connman: fixed init script, so it can run with nfs
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 10 Jan 2013 07:33:59 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Felipe,

My first name is Cristian.

I have reviewed your patch and it does look OK in regard to functionality.

Regards,
Cristian

-----Original Message-----
From: Felipe Ferreri Tonello [mailto:eu@felipetonello.com]=20
Sent: Wednesday, January 09, 2013 8:15 PM
To: Iorga, Cristian
Cc: poky@yoctoproject.org; Felipe F. Tonello
Subject: Re: [poky] [PATCH] connman: fixed init script, so it can run with =
nfs


Hi Iorga,

On 01/09/2013 02:12 AM, Iorga, Cristian wrote:
 > Hello Felipe,
 >
 > I have some questions regarding this patch:
 >
 > 1. On which hardware/machine have you tested this patch? (real hardware,=
 qemu machine, etc) Real hardware.

 > 2. In what way is connman affecting nfs? In other words, what is the roo=
t cause?
When connman tried to take ownership of eth, it crashes the nfs, that is ho=
sting rootfs for instance, connection.

 > 3. Which version of connman are you using?
I'm using 1.9 but I tested this patch on 1.6 as well.

 >
 > I am asking these questions because I am working on something somehow re=
lated, and I think a more general fix might be needed.

I agree, this is not a generic patch. But it works on most of the times.=20
Also I think it's better then just disabling ConnMan with nfs.

Felipe


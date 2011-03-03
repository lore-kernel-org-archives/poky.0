Return-Path: <dexuan.cui@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 297E74C80479
	for <poky@yoctoproject.org>; Thu,  3 Mar 2011 00:10:36 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 02 Mar 2011 22:10:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,257,1297065600"; d="scan'208";a="715526440"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga001.jf.intel.com with ESMTP; 02 Mar 2011 22:10:28 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 3 Mar 2011 14:09:16 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi; Thu, 3 Mar 2011
	14:09:15 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: 'kubera samrat' <kubera.samrat@gmail.com>
Date: Thu, 3 Mar 2011 14:09:14 +0800
Thread-Topic: [poky] Reg:problem while Adding libgcc_s
Thread-Index: AcvZZOetaTrwyzSSRlOGPwdb0ZlX8gAA7Wjg
Message-ID: <1865303E0DED764181A9D882DEF65FB6866D365FBB@shsmsx502.ccr.corp.intel.com>
References: <AANLkTi=XgciNC_9dy3zocW8GzBj6sbg5RjfbJe-OuhJM@mail.gmail.com>
	<1865303E0DED764181A9D882DEF65FB6866D365FBA@shsmsx502.ccr.corp.intel.com>
	<AANLkTi=YH3OH89E8viucBekQcSxvM0ZAyNcCnfFottwB@mail.gmail.com>
In-Reply-To: <AANLkTi=YH3OH89E8viucBekQcSxvM0ZAyNcCnfFottwB@mail.gmail.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Reg:problem while Adding libgcc_s
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 03 Mar 2011 06:10:36 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

kubera samrat wrote:
> Hi Dexuan,
>                   I have pulled in gcc into poky(using
> meta/recipes-devtools/gcc/libgcc_4.5.1.bb). But I couldn't find
> libgcc_s.so in target image. Do I have to change any configure options
> to get gcc_s ?
> or else suggest me approproate solution
Hi Kubera,
I build poky with "bitbake poky-image-sato-sdk" and in the target image, I =
can find=20
/lib/libgcc_s.so.1
/lib/libgcc_s.so.
/usr/bin/gcc.

I'm still not clear how you "pulled in" something.

Thanks,
-- Dexuan=


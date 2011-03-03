Return-Path: <dexuan.cui@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2182A4C803BA
	for <poky@yoctoproject.org>; Wed,  2 Mar 2011 23:24:02 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 02 Mar 2011 21:24:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,257,1297065600"; d="scan'208";a="608517120"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga002.jf.intel.com with ESMTP; 02 Mar 2011 21:24:00 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 3 Mar 2011 13:23:58 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 3 Mar 2011 13:23:58 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Thu, 3 Mar 2011
	13:23:56 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: 'kubera samrat' <kubera.samrat@gmail.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Thu, 3 Mar 2011 13:23:56 +0800
Thread-Topic: [poky] Reg:problem while Adding libgcc_s
Thread-Index: AcvZWt94XORbwkv0TPOMnh1Xo3r1ZAACBUKA
Message-ID: <1865303E0DED764181A9D882DEF65FB6866D365FBA@shsmsx502.ccr.corp.intel.com>
References: <AANLkTi=XgciNC_9dy3zocW8GzBj6sbg5RjfbJe-OuhJM@mail.gmail.com>
In-Reply-To: <AANLkTi=XgciNC_9dy3zocW8GzBj6sbg5RjfbJe-OuhJM@mail.gmail.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
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
X-List-Received-Date: Thu, 03 Mar 2011 05:24:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

kubera samrat wrote:
> hi,
>          I am using Ubuntu (10.04) on 64 bit machine. I have pulled in
> gcc but I am unable to find libgcc_s. Can any one help me in
> integrating this to poky.
> Your help will be greatly appreciated.
What do you mean by "pulling in gcc but unable to find libgcc_s"?
We have a recipe meta/recipes-devtools/gcc/libgcc_4.5.1.bb to install libgc=
c_s.so into target image.

Thanks,
-- Dexuan=


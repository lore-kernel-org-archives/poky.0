Return-Path: <dexuan.cui@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9F3BC4C8085F;
	Tue, 11 Jan 2011 00:11:05 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 10 Jan 2011 22:11:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,305,1291622400"; d="scan'208";a="372742691"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by azsmga001.ch.intel.com with ESMTP; 10 Jan 2011 22:10:59 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 11 Jan 2011 14:10:56 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Tue, 11 Jan 2011 14:10:49 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: 'Bruce Ashfield' <bruce.ashfield@gmail.com>
Date: Tue, 11 Jan 2011 14:10:49 +0800
Thread-Topic: [poky] [PATCH 4/5] kern-tools: create generic variables for
	platform/board/kernel
Thread-Index: AcuxS6rrKpks3GobQXaLrYrvHWwuIwACbGug
Message-ID: <1865303E0DED764181A9D882DEF65FB685AFA1B31B@shsmsx502.ccr.corp.intel.com>
References: <cover.1294680187.git.bruce.ashfield@windriver.com>
	<38d72bcb177222eba77eb3d7c483d55cbfb7f2e8.1294680187.git.bruce.ashfield@windriver.com>
	<1865303E0DED764181A9D882DEF65FB685AFA1B319@shsmsx502.ccr.corp.intel.com>
	<AANLkTikSSGjwH61YgsAQQ3qAQzgaq+RBzdC2r_=A5K9S@mail.gmail.com>
In-Reply-To: <AANLkTikSSGjwH61YgsAQQ3qAQzgaq+RBzdC2r_=A5K9S@mail.gmail.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>, "Wold,
	Saul" <saul.wold@intel.com>
Subject: Re: [PATCH 4/5] kern-tools: create generic variables for platform/board/kernel
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
X-List-Received-Date: Tue, 11 Jan 2011 06:11:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Bruce Ashfield wrote:
> 2011/1/10 Cui, Dexuan <dexuan.cui@intel.com>:
>> hmmm, looks this commit was not tested?
>=20
> It was definitely tested. Built for every board. Feel free to revert
> as required.
Hi Bruce,
I'm building poky-image-minimal on today's latest poky master 4b055ed and g=
ot the following failure.

>> With poky.git's latest 4b055ed, "bitbake  kern-tools-native -c
>> fetch" fails because in
>> http://git.pokylinux.org/cgit/cgit.cgi/wr-kernel-tools/, the latest
>> commit is still a494ddaf1c9151af8af8050e8427c9958440ec4c.  =20
The commit "kern-tools: create generic variables for platform/board/kernel"=
 upgraded SRCREV_pn-kern-tools-native to f553af04, but the wr-kernel-tools =
tree doesn't have such a commit number, so I got the build failure. Can you=
 please check that? Maybe you forgot to push your internal commits into the=
 public tree? :-)

Thanks,
-- Dexuan


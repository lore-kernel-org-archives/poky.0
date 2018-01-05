Return-Path: <timothy.t.orling@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90DFCE00D55; Fri,  5 Jan 2018 11:46:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41740E008FB
	for <poky@yoctoproject.org>; Fri,  5 Jan 2018 11:46:16 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	05 Jan 2018 11:46:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,319,1511856000"; 
   d="scan'208";a="8198969"
Received: from lattal-mobl6.amr.corp.intel.com ([10.254.35.187])
	by orsmga007.jf.intel.com with ESMTP; 05 Jan 2018 11:46:16 -0800
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
From: Tim Orling <timothy.t.orling@linux.intel.com>
In-Reply-To: <16ef64cb-cebd-72d1-581e-46f1bde79d87@linux.intel.com>
Date: Fri, 5 Jan 2018 11:46:15 -0800
Message-Id: <E02F2813-CA7C-4399-974A-4D245541DCD3@linux.intel.com>
References: <0B2EBCD48D33654381E736352034C70C01B37B75@dor-sms-xch01.digi.com>
	<0d223fc9-7b17-4be9-9a60-8cb23375a877@linux.intel.com>
	<0B2EBCD48D33654381E736352034C70C01B3FF67@dor-sms-xch01.digi.com>
	<8bb5a376-ec5b-36ed-5b7a-12d7102879ef@linux.intel.com>
	<0B2EBCD48D33654381E736352034C70C01B40158@dor-sms-xch01.digi.com>
	<e33e41cc-fe8d-36e7-4204-0e690b9aa16c@linux.intel.com>
	<0B2EBCD48D33654381E736352034C70C01B40FAF@dor-sms-xch01.digi.com>
	<16ef64cb-cebd-72d1-581e-46f1bde79d87@linux.intel.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
X-Mailer: Apple Mail (2.3273)
Cc: "Diaz de Grenu, Jose" <Jose.DiazdeGrenu@digi.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Trying to use python3-pygobject-native to compile NetworkManager
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
X-List-Received-Date: Fri, 05 Jan 2018 19:46:19 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


> On Jan 3, 2018, at 1:53 AM, Alexander Kanavin =
<alexander.kanavin@linux.intel.com> wrote:
>=20
> On 01/02/2018 07:36 PM, Diaz de Grenu, Jose wrote:
>> I don't really know if the problem is then the configure.ac from =
NetworkManager, or the pygobject recipe in the poky layer...
>> I was able to build NetworkManager by adding:
>> EXTRA_OECONF_append =3D " --disable-introspection"
>> I think introspection is only used to generate the documentation, =
which I don't care about.
>=20
> That's fair, but we would appreciate if you can get down to the bottom =
of the issue - and submit an up to date networkmanager with =
introspection support to meta-oe. YP needs not just users, but active =
contributors; it's in your own interest too.
>=20

=E2=80=9CIn your own interest=E2=80=9D meaning if it was already updated =
in meta-oe, we might have noticed this failure already in one of the =
=E2=80=9CState of the Bitbake World=E2=80=9D reports and tried to fix it =
already.

We really need this to be a community effort.


> Alex
> --=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky



Return-Path: <kevin.tian@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 14E434C80B6B
	for <poky@yoctoproject.org>; Mon, 22 Nov 2010 23:33:30 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 22 Nov 2010 21:33:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,240,1288594800"; d="scan'208";a="629416897"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga002.fm.intel.com with ESMTP; 22 Nov 2010 21:33:28 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 23 Nov 2010 13:33:26 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 23 Nov 2010 13:33:26 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Tue, 23 Nov 2010 13:33:25 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Mark Hatle <mark.hatle@windriver.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Tue, 23 Nov 2010 13:33:22 +0800
Thread-Topic: [poky] Another staging question
Thread-Index: AcuAI3JdmddDSm8SQty0tXStaLiUsgKrEYBg
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D3A61A0A5@shsmsx502.ccr.corp.intel.com>
References: <4CD94ADD.2090607@mlbassoc.com> <4CD96997.60802@windriver.com>
In-Reply-To: <4CD96997.60802@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: Another staging question
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
X-List-Received-Date: Tue, 23 Nov 2010 05:33:30 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Mark Hatle
>Sent: Tuesday, November 09, 2010 11:33 PM
>
>On 11/9/10 7:21 AM, Gary Thomas wrote:
>> I've found another peculiarity with the new staging scheme(*).
>> I have two target platforms, which for all intents and purposes
>> are identical - both are Motorola MPC83xx (e300 core).  The only
>> reason for two target machines is the kernel, plus platform specifics.
>>
>> I built totally from scratch (no SSTATE_MIRRORS) for target machine A.
>> I then tested the staging by building in a new tree, again for machine A=
.
>> This worked great - the build used mostly the staged packages.  About
>> the only things that were rebuilt were the target specific packages.
>>
>> When I tried it for machine B, again in a totally empty directory, using
>> the 'sstate-cache' directory of the first build as SSTATE_MIRRORS, all o=
f
>> the toolchain was rebuilt (GCC  and friends), but there was no need, the
>> staged version should have been used.
>>
>> Is this expected?
>> What could I do to fix it?
>
>This tells me that the checksumming code found something that it believed
>changed the system behavior.  Likely a machine type or CFLAG or similar.
>
>RP -- is there a way to determine "what changed [and why]" without re-runn=
ing
>the build?  We found this invaluable when debugging the WR build system's
>checksumming, configuration files and packaging recipes.
>

Just saw this from bottom of my mailbox. "bitbake name -S" will record chec=
ksum
for the name and also all the tasks it depends on under tmp/stamps. And the=
n you
can use "bitbake-diffsig" to check the detail.=20

Thanks
Kevin


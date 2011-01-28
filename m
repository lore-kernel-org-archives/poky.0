Return-Path: <kevin.tian@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 48F304C81260
	for <poky@lists.pokylinux.org>; Fri, 28 Jan 2011 01:49:37 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 27 Jan 2011 23:49:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,391,1291622400"; d="scan'208";a="652037133"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga002.fm.intel.com with ESMTP; 27 Jan 2011 23:49:17 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 28 Jan 2011 15:49:11 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Fri, 28 Jan 2011 15:49:10 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>, Gary Thomas <gary@mlbassoc.com>,
	Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Fri, 28 Jan 2011 15:49:09 +0800
Thread-Topic: [poky] What's taking so long??
Thread-Index: Acu6XBBMh9SrOoj0SLWEBckxzKxgEAEXJBzAAAGy6QA=
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504DB5E05998@shsmsx502.ccr.corp.intel.com>
References: <4D3850B3.2030100@mlbassoc.com>
	<1295619024.14388.30678.camel@rex>	<4D399769.1050803@mlbassoc.com>
	<1295626657.14388.31197.camel@rex>	<4D39F115.90909@mlbassoc.com>
	<4D3B1779.50504@mlbassoc.com>
	<D5AB6E638E5A3E4B8F4406B113A5A19A31D8EFC0@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <D5AB6E638E5A3E4B8F4406B113A5A19A31D8EFC0@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: What's taking so long??
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
X-List-Received-Date: Fri, 28 Jan 2011 07:49:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> From: Xu, Dongxiao
> Sent: Friday, January 28, 2011 3:42 PM
>=20
> This is a bottle neck for those cases which have a loop of "bb.note", lik=
e Gary
> found in the package bbclass for kernel recipes.
>=20
> But for normal "bb.note", it may not benefit a lot. So this logging issue=
 may be
> not a key point to the current long building time.
>=20
> But anyhow, I am scheduling a test for this patch to see whether it helps=
 for our
> common build result, like poky-image-minimal, etc.
>=20
> Comments and thoughts on it?
>=20

Another issue found in the test, which we're not sure whether we did it cor=
rectly, that
bb.debug is never printed out to the console even with -DDD. Dongxiao check=
ed the
server side, that no record is passed from the child process regarding to d=
ebug info.

Is there any change to activate the debug message or is it a real issue?

Thanks
Kevin


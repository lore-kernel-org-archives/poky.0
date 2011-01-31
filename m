Return-Path: <kevin.tian@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1FE814C8018D
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 02:03:42 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 31 Jan 2011 00:03:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,403,1291622400"; d="scan'208";a="652766823"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga002.fm.intel.com with ESMTP; 31 Jan 2011 00:03:41 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 31 Jan 2011 16:03:38 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Mon, 31 Jan 2011 16:03:37 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Mon, 31 Jan 2011 16:03:36 +0800
Thread-Topic: summary about recent do_populate_sdk failures
Thread-Index: AcvBFwaiDJD1F+KhR7CoJJGWi+F6cAAADosQAAFvXkA=
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504E6294E38D@shsmsx502.ccr.corp.intel.com>
References: <625BA99ED14B2D499DC4E29D8138F1504E6294E376@shsmsx502.ccr.corp.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504E6294E379@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504E6294E379@shsmsx502.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: summary about recent do_populate_sdk failures
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
X-List-Received-Date: Mon, 31 Jan 2011 08:03:42 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> From: Tian, Kevin
> Sent: Monday, January 31, 2011 3:21 PM
>=20
> > From: Tian, Kevin
> > Sent: Monday, January 31, 2011 3:18 PM
> >
> > One possible option is to sort the INHERIT list, which ensures we alway=
s
> parse
> > Inherited class files in same order if no content change. We'll test wh=
ether
> this
> > works,
> > and also hear your comments.
>=20
> This doesn't help, since the order really matters to decide which type ro=
otfs will
> Use... :-/
>=20

We come up another try at:

http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/commit/?h=3Dtk/tmp

regarding to the fact that one bbclass is only parsed once even when it's i=
nherited
by multiple files. If original reason to include the 2nd class name is to a=
void possible
name confliction, this then won't happen.

Not sure whether this will break things. The test is ongoing and at least t=
he parse
phase doesn't report errors.

Thanks
Kevin


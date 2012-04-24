Return-Path: <lianhao.lu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66C7BE01206
	for <poky@yoctoproject.org>; Mon, 23 Apr 2012 18:55:56 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 23 Apr 2012 18:55:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="92328903"
Received: from azsmsx601.amr.corp.intel.com ([10.2.121.193])
	by AZSMGA002.ch.intel.com with ESMTP; 23 Apr 2012 18:55:55 -0700
Received: from shsmsx102.ccr.corp.intel.com (10.239.4.154) by
	azsmsx601.amr.corp.intel.com (10.2.121.193) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 23 Apr 2012 18:55:55 -0700
Received: from shsmsx101.ccr.corp.intel.com ([169.254.1.213]) by
	SHSMSX102.ccr.corp.intel.com ([169.254.2.253]) with mapi id
	14.01.0355.002; Tue, 24 Apr 2012 09:55:53 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: Peter Tornel <petertornel@yahoo.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Thread-Topic: [poky] Determining dependencies by looking under work or tmp?
Thread-Index: AQHNIbhMJ+GRpvXAx06h4EEZCbFiuZapMxTw
Date: Tue, 24 Apr 2012 01:55:52 +0000
Message-ID: <857BE142E5399E46B20FD45B9DB8A7BC0FD71ED9@SHSMSX101.ccr.corp.intel.com>
References: <1335230346.58869.YahooMailNeo@web122202.mail.ne1.yahoo.com>
In-Reply-To: <1335230346.58869.YahooMailNeo@web122202.mail.ne1.yahoo.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Subject: Re: Determining dependencies by looking under work or tmp?
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
X-List-Received-Date: Tue, 24 Apr 2012 01:55:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Peter Tornel wrote on 2012-04-24:
> Hello Group,
>=20
> I'm wondering why some packages were built in my work directory even thou=
gh I didn't specify them in my recipes and they didn't show up
> in my rootfs.  For example, I find strace under work, but I don't find it=
 in my rootfs.  There are some others I'm wondering about too.
>=20
> Is there evidence left in work or somewhere under tmp for a particular pa=
ckage that shows why it was built or what dependency it filled?

Please try "bitbake -g"

-Lianhao



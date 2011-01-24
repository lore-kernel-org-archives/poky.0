Return-Path: <jiajun.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 741AB4C811AB
	for <poky@yoctoproject.org>; Sun, 23 Jan 2011 20:06:58 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 23 Jan 2011 18:06:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,367,1291622400"; d="scan'208";a="378852238"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by azsmga001.ch.intel.com with ESMTP; 23 Jan 2011 18:06:48 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 24 Jan 2011 10:05:32 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 24 Jan 2011 10:05:32 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Mon, 24 Jan 2011 10:05:31 +0800
From: "Xu, Jiajun" <jiajun.xu@intel.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Date: Mon, 24 Jan 2011 10:05:27 +0800
Thread-Topic: Which build for weekly test?
Thread-Index: Acu7ayu2Z5G4y2ZgS6q/FUG4hW3geg==
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A31C9FF84@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-cr-puzzleid: {76394CF7-31F8-45D2-B153-47321B02479D}
x-cr-hashedpuzzle: Avaw CNRy C28J DKOE DyC8 D7K5 Fmly GZvA Gpwu HVuM HlME
	JGOW JrPU JuX7 Khkg
	K8L4; 1; cABvAGsAeQBAAHkAbwBjAHQAbwBwAHIAbwBqAGUAYwB0AC4AbwByAGcA;
	Sosha1_v1; 7; {76394CF7-31F8-45D2-B153-47321B02479D};
	agBpAGEAagB1AG4ALgB4AHUAQABpAG4AdABlAGwALgBjAG8AbQA=; Mon,
	24 Jan 2011 02:05:27 GMT;
	VwBoAGkAYwBoACAAYgB1AGkAbABkACAAZgBvAHIAIAB3AGUAZQBrAGwAeQAgAHQAZQBzAHQAPwA=
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>, "Wold,
	Saul" <saul.wold@intel.com>
Subject: Which build for weekly test?
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
X-List-Received-Date: Mon, 24 Jan 2011 02:06:58 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Beth,
I found there has been a nightly build running in progress but qemuarm show=
ed failed already. I rolled back to 20110121 build, http://autobuilder.poky=
linux.org/nightly/20110121-1/ but found the gitinfo showed the commit is Oc=
t 22th. Is it correct and OK to use the build for weekly testing?

Best Regards,
Jiajun



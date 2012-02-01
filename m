Return-Path: <bryan.odonoghue@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86A4AE00594
	for <poky@yoctoproject.org>; Wed,  1 Feb 2012 07:31:48 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 01 Feb 2012 07:31:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="112856156"
Received: from irsmsx602.ger.corp.intel.com ([163.33.3.242])
	by fmsmga001.fm.intel.com with ESMTP; 01 Feb 2012 07:31:47 -0800
Received: from irsmsx152.ger.corp.intel.com (163.33.192.66) by
	irsmsx602.ger.corp.intel.com (163.33.3.242) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 1 Feb 2012 15:31:23 +0000
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.194]) by
	IRSMSX152.ger.corp.intel.com ([169.254.6.46]) with mapi id
	14.01.0355.002; Wed, 1 Feb 2012 15:31:22 +0000
From: "O'donoghue, Bryan" <bryan.odonoghue@intel.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Thread-Topic: [poky] Simple recipe for local kernel/git development
Thread-Index: AQHM4Ofinsi/1jQEqkeQ1RNUYEVsS5YoJKzggAAC5ACAAACScIAAAtIAgAAAPcA=
Date: Wed, 1 Feb 2012 15:31:22 +0000
Message-ID: <B80010913FB1F346A630B7F2E18A60C0078A3A@IRSMSX102.ger.corp.intel.com>
References: <B80010913FB1F346A630B7F2E18A60C007897E@IRSMSX102.ger.corp.intel.com>
	<CADkTA4Mo_wE883Ceg1SBRxJ-ctV5ieb71vRhyVt4kjKfXTjYbg@mail.gmail.com>
	<B80010913FB1F346A630B7F2E18A60C00789E7@IRSMSX102.ger.corp.intel.com>
	<CADkTA4Oeb78DP==N7MD98L5Pc7vWPt4ccsHiOVbhN7dyzNkZMw@mail.gmail.com>
	<B80010913FB1F346A630B7F2E18A60C0078A17@IRSMSX102.ger.corp.intel.com>
	<CADkTA4MLgXCH5HGCDxUx+sfSdph5bnL19+p5+9Cn-cBdkQXeyA@mail.gmail.com>
In-Reply-To: <CADkTA4MLgXCH5HGCDxUx+sfSdph5bnL19+p5+9Cn-cBdkQXeyA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-cr-hashedpuzzle: AhVX BZpO DHZt Ex0a FG6I FHCB Gj/C H+4I I95N JaH3 Jpgx
	KSGI M6A6 O+Db QGJa Q0mq; 2;
	YgByAHUAYwBlAC4AYQBzAGgAZgBpAGUAbABkAEAAZwBtAGEAaQBsAC4AYwBvAG0AOwBwAG8AawB5AEAAeQBvAGMAdABvAHAAcgBvAGoAZQBjAHQALgBvAHIAZwA=;
	Sosha1_v1; 7; {7F9128A2-E184-49A8-B538-D01DD7AB6B1A};
	YgByAHkAYQBuAC4AbwBkAG8AbgBvAGcAaAB1AGUAQABpAG4AdABlAGwALgBjAG8AbQA=;
	Wed, 01 Feb 2012 15:31:19 GMT;
	UgBFADoAIABbAHAAbwBrAHkAXQAgAFMAaQBtAHAAbABlACAAcgBlAGMAaQBwAGUAIABmAG8AcgAgAGwAbwBjAGEAbAAgAGsAZQByAG4AZQBsAC8AZwBpAHQAIABkAGUAdgBlAGwAbwBwAG0AZQBuAHQA
x-cr-puzzleid: {7F9128A2-E184-49A8-B538-D01DD7AB6B1A}
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Simple recipe for local kernel/git development
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
X-List-Received-Date: Wed, 01 Feb 2012 15:31:48 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> > All I need to do is to build the korg snapshot from a local git repo
> and apply a defconfig (it sounds simple when you type it like that)
>=20
> Easily supported. I'll follow up once my fetches have completed here
> and I see that the
> recipe builds properly.

Appreciated !

-------------------------------------------------------------
Intel Ireland Limited (Branch)
Collinstown Industrial Park, Leixlip, County Kildare, Ireland
Registered Number: E902934

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.



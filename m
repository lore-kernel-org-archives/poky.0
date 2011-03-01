Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3B5CE4C800A4
	for <poky@yoctoproject.org>; Tue,  1 Mar 2011 04:33:12 -0600 (CST)
Received: by wwi18 with SMTP id 18so5524294wwi.11
	for <poky@yoctoproject.org>; Tue, 01 Mar 2011 02:33:10 -0800 (PST)
Received: by 10.227.2.84 with SMTP id 20mr1555506wbi.156.1298975590622;
	Tue, 01 Mar 2011 02:33:10 -0800 (PST)
Received: from [172.20.0.255] (ip545070eb.adsl-surfen.hetnet.nl
	[84.80.112.235])
	by mx.google.com with ESMTPS id r57sm2392103wes.25.2011.03.01.02.33.09
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 01 Mar 2011 02:33:09 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <201103011023.58911.paul.eggleton@linux.intel.com>
Date: Tue, 1 Mar 2011 11:33:08 +0100
Message-Id: <34ADCD70-E17B-459F-88E7-D959B0DB4737@dominion.thruhere.net>
References: <cover.1298961777.git.xiaofeng.yan@windriver.com>
	<201103011023.58911.paul.eggleton@linux.intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Mailer: Apple Mail (2.1082)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/2] Add qt3 to poky
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
X-List-Received-Date: Tue, 01 Mar 2011 10:33:13 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 1 mrt 2011, om 11:23 heeft Paul Eggleton het volgende geschreven:

> On Tuesday 01 March 2011 07:12:09 Xiaofeng Yan wrote:
>> From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
>>=20
>>  Packages qt3 from "OE" is needed by LSB Test Suite. So I add it to =
Poky.
>=20
> If we're adding this solely for LSB compliance, do we need the =
"embedded"=20
> portions of Qt3 (i.e. qt3e.bbclass)? AFAICT the LSB documentation =
doesn't=20
> mention it explicitly and if we don't add it it's one less thing we =
have to=20
> support (I'm convinced it's not widely used in any case).

And since there was never a qtopia for qt3 I highly doubt anyone is =
using qt3/e.

regards,

Koen=


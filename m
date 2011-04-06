Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f42.google.com (mail-ww0-f42.google.com [74.125.82.42])
	by mx1.pokylinux.org (Postfix) with ESMTP id 480F14C80A46
	for <poky@yoctoproject.org>; Wed,  6 Apr 2011 02:23:14 -0500 (CDT)
Received: by wwk4 with SMTP id 4so3934231wwk.5
	for <poky@yoctoproject.org>; Wed, 06 Apr 2011 00:23:13 -0700 (PDT)
Received: by 10.216.145.135 with SMTP id p7mr6270234wej.38.1302074593025;
	Wed, 06 Apr 2011 00:23:13 -0700 (PDT)
Received: from [172.20.0.255] (ip545070eb.adsl-surfen.hetnet.nl
	[84.80.112.235])
	by mx.google.com with ESMTPS id h39sm103821wes.29.2011.04.06.00.23.11
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 06 Apr 2011 00:23:12 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1084)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4D9C015F.20403@windriver.com>
Date: Wed, 6 Apr 2011 09:23:11 +0200
Message-Id: <97E4C404-D23C-46F7-9ED8-B1B5AF1E43CD@dominion.thruhere.net>
References: <cover.1300874241.git.kai.kang@windriver.com>
	<4D9A0A8B.1000003@intel.com> <4D9C015F.20403@windriver.com>
To: Kang Kai <Kai.Kang@windriver.com>
X-Mailer: Apple Mail (2.1084)
Cc: poky@yoctoproject.org, Saul Wold <saul.wold@intel.com>
Subject: Re: [PATCH 0/1] libjpeg-turbo: add libjpeg-turbo for LSB lib test
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
X-List-Received-Date: Wed, 06 Apr 2011 07:23:14 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


Op 6 apr 2011, om 07:59 heeft Kang Kai het volgende geschreven:

> On 2011=E5=B9=B404=E6=9C=8805=E6=97=A5 02:14, Saul Wold wrote:
>> On 03/23/2011 06:43 PM, Kang Kai wrote:
>>> From: Kang Kai<kai.kang@windriver.com>
>>>=20
>>> LSB 4.1 library test will check libjpeg.so.62, and
>>> libjpeg-turbo provide it.
>>>=20
>=20
> Hi Saul,
>>=20
>> We already have a libjpeg recipe, what is wrong with that version?
> Current libjpeg doesn't provide libjpeg.so.62, and I search Fedora and =
find libjpeg.so.62 provided by libjpeg-turbo, so added it.
>=20
> Maybe the direct way to provide libjpeg.so.62 is make it link to =
libjpeg.so.8.0.2.
> With your permit I will add a patch to jpeg_8b instead of add =
libjpeg-turbo. How about this solution?

Or you can add back the jpeg 6b recipe. The jpeg group didn't make a =
release for years and then released 7 and 8 in quick succession.

regards,

Koen=


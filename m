Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2112E4C80050
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 02:03:50 -0600 (CST)
Received: by wwb31 with SMTP id 31so18488711wwb.11
	for <poky@yoctoproject.org>; Wed, 05 Jan 2011 00:03:49 -0800 (PST)
Received: by 10.216.157.142 with SMTP id o14mr26049508wek.37.1294214629680;
	Wed, 05 Jan 2011 00:03:49 -0800 (PST)
Received: from [172.20.1.5] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id
	n18sm10999108wee.16.2011.01.05.00.03.47
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Wed, 05 Jan 2011 00:03:47 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4D23D88F.9080205@mlbassoc.com>
Date: Wed, 5 Jan 2011 09:03:46 +0100
Message-Id: <B63841C0-E8AA-4FDF-BE25-6D068DE889D2@dominion.thruhere.net>
References: <cover.1293457442.git.ke.yu@intel.com>
	<20110105023055.GG20780@kyu3-hedt> <4D23D88F.9080205@mlbassoc.com>
To: poky@yoctoproject.org
X-Mailer: Apple Mail (2.1082)
Subject: Re: [PATCH 0/8] RFC: break fetcher src rev deadlock
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
X-List-Received-Date: Wed, 05 Jan 2011 08:03:51 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 5 jan 2011, om 03:33 heeft Gary Thomas het volgende geschreven:

> On 01/04/2011 07:30 PM, Yu Ke wrote:
>> On Dec 27, 21:57, Yu Ke wrote:
>>>     Current fetcher has annoying "SRCREVINACTION" deadlock,
>>>     which occurs when SRCREV=3D${AUTOREV}=3D@bb.fetch.get_srcrev():
>>>     get_srcrev()->setup_localpath()->srcrev_internal_helper()
>>>     ->evaluate SRCREV->get_srcrev()
>>>=20
>>>     Current fetcher resolve the deadlock by introducing a
>>>     "SRCREVINACTION" condition check. Althoguh it works, it is
>>>     indeed not clean.
>>>=20
>>>     This patch use Richard's idea to break the deadlock: break
>>>     the dependency among SRCREV and get_srcrev(), i.e. assign
>>>     a specific keyword "AUTOINC" to AUTOREV. when Fetcher meet
>>>     this keyword, it will check and set the latest revision to
>>>     urldata.revision. get_srcrev later can use the urldata.revision
>>>     for value evaluation(SRCPV etc). In this case, SRCREV no longer
>>>     depends on get_srcrev, and there is not deadlock anymore.
>>>=20
>>>     In implementation side, several things are done:
>>>     a) set the revision in FetchData:__init__, so that
>>>        urldata.revision is ready when get_srcrev() need it
>>>     b) init fetch method specific data in Fetch:supports, so that
>>>        Fetch.latest_revision() can be conducted when FetchData:
>>>        __init__ need it to achieve a)
>>>     c) some recpies still use ${SRCREV} in PV, which is not corect
>>>        logically, and will cause error in current implementation.
>>>        so replace the SRCREV with SRCPV for those recpies
>>>=20
>>> 	in test side, some basic tests are conducted:
>>>     - fetch the source of world packages from scratch (empty DL_DIR)
>>>     - bitbake poky-image-sato for qemux86 from sratch (empty DL_DIR)
>>>=20
>>>      more testing is ongoing, this RFC is just for early patch =
review
>>>      and comments are warmly welcome.
>>=20
>> The following tests are done, all passed:
>>=20
>> - fetch source for world with DISTRO =3D "poky-bleeding", all passed =
except
>>   two broken recpies whose SRC_URI are obsolate, two bugs 623,624 are
>>   filed for this.
>> - bitbake poky-image-sdk for qemux86 with empty DL_DIR
>> - bitbake poky-image-sdk for qemuppc with empty DL_DIR
>> - bitbake poky-image-sdk for qemumips with empty DL_DIR
>=20
> Does this address the problem I reported recently with PREMIRRORS not
> working when pointed to a local (file:///) repository?   See the
> discussion starting 2010-12-22 14:51 GMT with subject 'Write-protect =
$DL_DIR'


=46rom what I can see, PREMIRRORS don't work *at all*=


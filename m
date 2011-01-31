Return-Path: <dexuan.cui@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id C6BC34C811CA;
	Mon, 31 Jan 2011 00:44:56 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 30 Jan 2011 22:44:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,403,1291622400"; d="scan'208";a="652748053"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga002.fm.intel.com with ESMTP; 30 Jan 2011 22:44:50 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 31 Jan 2011 14:43:43 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Mon, 31 Jan 2011 14:43:42 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: 'Saul Wold' <sgw@linux.intel.com>, Yocto Project Discussion
	<yocto@yoctoproject.org>, "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Mon, 31 Jan 2011 14:43:40 +0800
Thread-Topic: [yocto] M3 Package Update List
Thread-Index: Acukxjooru4MdVoBSgS8rAS3g15fegcSUnog
Message-ID: <1865303E0DED764181A9D882DEF65FB685EBCB6C42@shsmsx502.ccr.corp.intel.com>
References: <4D16E018.90502@linux.intel.com>
In-Reply-To: <4D16E018.90502@linux.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: Re: [yocto] M3 Package Update List
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
X-List-Received-Date: Mon, 31 Jan 2011 06:44:57 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Saul Wold wrote:
> Folks,
>=20
> Please find attached the list of M3 Recipe Updates, our goal for 1.0
> M3 release is to complete the update process we started in 0.9 and
> 1.0 M2. There are about 150 recipes in this list, some people may
> have more and if there is a need to request help, please let me know.
> If you plan on helping, please let the current owner know that you
> will be updating a recipe.
>=20
> Unless I hear otherwise, I will work to update the "None" maintained
> list, but I believe some of these are owned by people and the distro
> tracking information needs to be updated.
>=20
> Thanks again to the team for the hard work during 0.9 and M2, we will
> always have updates to do, but they will get easier with our gained
> experience and expertise.
>=20
> Happy Holidays and Happy New Year to all.

Hi Saul,
Here is the update for recipes in the list with me as the owner:

There are 18 recipes in total:=20
1) I have upgraded 14 ones:
renderproto
inputproto
libdmx
lttng-viewer
liburcu
libxxf86misc
compositeproto
resourceproto
xproto
gnome-doc-utils
scrnsaverproto
lttng-ust
librsvg
pixman: upgraded from 0.20.0 to 0.21.2 and later downgraded to 0.20.2 since=
 0.21.x is development release.

2) I decided to not upgrade these 2 ones and upgraded RECIPE_NO_UPDATE_REAS=
ON:
libunique: Do not upgrade to version: 2.91.4 because it requires gtk+ >=3D =
2.90.0 and the stable version of gtk+ used by poky is 2.2x.x
liberation-fonts:  Do not upgrade to version: 1.06.0.20100721 because befor=
e doing that, we need adding new native packages like libungif_4.1.3, libsp=
iro and fontforge first

3) These 2 ones doesn't need upgrade at present:
lttng-control: acutally not newer release is available. The script detectin=
g new release thought 0.88-09242010 are different from 0.88.  Mei Lei has f=
ixed that.
tcf-agent: as Lianhao said, the upstream is re-orging the code, so we can o=
nly wait for now. Previously the script detecting new release simply printe=
d a useless svn number "998".

Thanks,
-- Dexuan=


Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2AD774C80FAD
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 13:17:14 -0600 (CST)
Received: by eyz10 with SMTP id 10so682946eyz.35
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 11:17:14 -0800 (PST)
Received: by 10.213.29.148 with SMTP id q20mr1545888ebc.73.1295464633173;
	Wed, 19 Jan 2011 11:17:13 -0800 (PST)
Received: from [172.20.1.5] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id r5sm1653042eeh.21.2011.01.19.11.17.09
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Wed, 19 Jan 2011 11:17:10 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4D372D06.3090703@intel.com>
Date: Wed, 19 Jan 2011 20:17:08 +0100
Message-Id: <F90DC8C0-875D-44D7-8908-63AF72504679@dominion.thruhere.net>
References: <cover.1295410231.git.scott.a.garman@intel.com>
	<d57e678ab0ed9d20ebb08a5935e3d8d7bdbcfed5.1295410231.git.scott.a.garman@intel.com>
	<21D8C9BF-2F1A-479C-AF91-D7BE4ED87D44@dominion.thruhere.net>
	<4D372D06.3090703@intel.com>
To: Scott Garman <scott.a.garman@intel.com>
X-Mailer: Apple Mail (2.1082)
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 5/9] insane.bbclass: skip checks on .la installed status
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
X-List-Received-Date: Wed, 19 Jan 2011 19:17:15 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 19 jan 2011, om 19:27 heeft Scott Garman het volgende geschreven:

> On 01/18/2011 11:19 PM, Koen Kooi wrote:
>> Op 19 jan 2011, om 05:19 heeft Scott Garman het volgende geschreven:
>>=20
>>> Enabling libtool sysroot support triggers these errors but they
>>> are a valid change in behavior.
>>=20
>> Based on the RPATH discussion off-list, should we add a check for =
RPATH pointing to staging as well? I know RPs patches fix it, but it =
would be nice to catch if it starts happening again.
>=20
> By staging I assume you're referring to the sysroot dir? If so, we do =
have that QA check in insane.bbclass already (see =
package_qa_check_rpath), and I have been relying on it to detect the =
problems I was reporting. This patch doesn't alter or remove that.

And indeed it does have that already, time to 'port' that to OE :)

>=20
> If I'm misunderstanding, feel free to correct me.
>=20
> Scott
>=20
>>>=20
>>> Signed-off-by: Scott Garman<scott.a.garman@intel.com>
>>> ---
>>> meta/classes/insane.bbclass |    5 -----
>>> 1 files changed, 0 insertions(+), 5 deletions(-)
>>>=20
>>> diff --git a/meta/classes/insane.bbclass =
b/meta/classes/insane.bbclass
>>> index 3ab4c2c..6f06d85 100644
>>> --- a/meta/classes/insane.bbclass
>>> +++ b/meta/classes/insane.bbclass
>>> @@ -427,11 +427,6 @@ def package_qa_check_staged(path,d):
>>>             path =3D os.path.join(root,file)
>>>             if file.endswith(".la"):
>>>                 file_content =3D open(path).read()
>>> -                # Don't check installed status for native/cross =
packages
>>> -                if not bb.data.inherits_class("native", d) and not =
bb.data.inherits_class("cross", d):
>>> -                    if installed in file_content:
>>> -                        error_msg =3D "%s failed sanity test =
(installed) in path %s" % (file,root)
>>> -                        sane =3D package_qa_handle_error(5, =
error_msg, "staging", path, d)
>>>                 if workdir in file_content:
>>>                     error_msg =3D "%s failed sanity test (workdir) =
in path %s" % (file,root)
>>>                     sane =3D package_qa_handle_error(8, error_msg, =
"staging", path, d)
>>> --
>>> 1.7.1
>>>=20
>>> _______________________________________________
>>> poky mailing list
>>> poky@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/poky
>>=20
>=20
>=20
> --=20
> Scott Garman
> Embedded Linux Distro Engineer - Yocto Project



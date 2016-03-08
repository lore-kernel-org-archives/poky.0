Return-Path: <krzysztof.zawadzki@nokia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DBE5DE008C6; Tue,  8 Mar 2016 07:53:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [93.183.12.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from demumfd002.nsn-inter.net (demumfd002.nsn-inter.net
	[93.183.12.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9FFCE008C6
	for <poky@yoctoproject.org>; Tue,  8 Mar 2016 07:53:00 -0800 (PST)
Received: from demuprx016.emea.nsn-intra.net ([10.150.129.55])
	by demumfd002.nsn-inter.net (8.15.2/8.15.2) with ESMTPS id
	u28FqxkI009650
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=OK)
	for <poky@yoctoproject.org>; Tue, 8 Mar 2016 15:52:59 GMT
Received: from DEMUHTC004.nsn-intra.net ([10.159.42.35])
	by demuprx016.emea.nsn-intra.net (8.12.11.20060308/8.12.11) with ESMTP
	id u28FqwjU005947
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
	for <poky@yoctoproject.org>; Tue, 8 Mar 2016 16:52:59 +0100
Received: from DEMUMBX003.nsn-intra.net ([169.254.2.99]) by
	DEMUHTC004.nsn-intra.net ([10.159.42.35]) with mapi id 14.03.0279.002;
	Tue, 8 Mar 2016 16:52:58 +0100
From: "Zawadzki, Krzysztof (Nokia - PL/Wroclaw)" <krzysztof.zawadzki@nokia.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [PATCH] meta: toolchain-shar-relocate.sh: Fix for extracting
	SDK in
Thread-Index: AdF5UGB+vgqyLJABQL+MP2mlFdoy4wAAd3ZA
Date: Tue, 8 Mar 2016 15:52:58 +0000
Message-ID: <4655585E9D8F3143B62277AB38CCEC0C2FFEAE16@DEMUMBX003.nsn-intra.net>
References: <4655585E9D8F3143B62277AB38CCEC0C2FFEADFA@DEMUMBX003.nsn-intra.net>
In-Reply-To: <4655585E9D8F3143B62277AB38CCEC0C2FFEADFA@DEMUMBX003.nsn-intra.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.159.42.155]
MIME-Version: 1.0
X-purgate-type: clean
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: clean
X-purgate: This mail is considered clean (visit http://www.eleven.de for
	further information)
X-purgate-size: 1812
X-purgate-ID: 151667::1457452379-000079EB-5B824974/0/0
Subject: Re: [PATCH] meta: toolchain-shar-relocate.sh: Fix for extracting	SDK in
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 08 Mar 2016 15:53:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Please ignore this patch as it will work for one case. I just realized anot=
her scenario where script is run from full path.

Best regards,

Krzysztof Zawadzki

-----Original Message-----
From: poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org] =
On Behalf Of EXT Zawadzki, Krzysztof (Nokia - PL/Wroclaw)
Sent: Tuesday, March 08, 2016 4:41 PM
To: poky@yoctoproject.org
Subject: [poky] [PATCH] meta: toolchain-shar-relocate.sh: Fix for extractin=
g SDK in

If SDK will be extracted in the same folder as sdk shar script. The
shar_relocate will substitute SDK.sh script SDKPATH with extract
destination path.
After that operation no one will be able use this sdk script as paths in
it will be different.
To fix this we need to filter out sdk script and relocate_sdk scripts from
SDKPATH substitution

Signed-off-by: Krzysztof Zawadzki <krzysztof.zawadzki@nokia.com>

diff --git a/meta/files/toolchain-shar-relocate.sh b/meta/files/toolchain-s=
har-relocate.sh
index 4f34fb4..39319ba 100644
--- a/meta/files/toolchain-shar-relocate.sh
+++ b/meta/files/toolchain-shar-relocate.sh
@@ -47,7 +47,7 @@ for replace in "$target_sdk_dir -maxdepth 1" "$native_sys=
root"; do
 	$SUDO_EXEC find $replace -type f
 done | xargs -n100 file | grep ":.*\(ASCII\|script\|source\).*text" | \
     awk -F':' '{printf "\"%s\"\n", $1}' | \
-    grep -v "$target_sdk_dir/environment-setup-*" | \
+    grep -Ev "$target_sdk_dir/(environment-setup-*|relocate_sdk*|${0:2})" =
| \
     xargs -n100 $SUDO_EXEC sed -i \
         -e "s:$DEFAULT_INSTALL_DIR:$target_sdk_dir:g" \
         -e "s:^#! */usr/bin/perl.*:#! /usr/bin/env perl:g" \
--=20
_______________________________________________
poky mailing list
poky@yoctoproject.org
https://lists.yoctoproject.org/listinfo/poky


Return-Path: <krzysztof.zawadzki@nokia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45869E00833; Tue,  8 Mar 2016 11:53:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [93.183.12.32 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from demumfd001.nsn-inter.net (demumfd001.nsn-inter.net
	[93.183.12.32])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAE16E00720
	for <poky@yoctoproject.org>; Tue,  8 Mar 2016 11:53:35 -0800 (PST)
Received: from demuprx017.emea.nsn-intra.net ([10.150.129.56])
	by demumfd001.nsn-inter.net (8.15.2/8.15.2) with ESMTPS id
	u28JrT37006738
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=OK)
	for <poky@yoctoproject.org>; Tue, 8 Mar 2016 19:53:30 GMT
Received: from DEMUHTC003.nsn-intra.net ([10.159.42.34])
	by demuprx017.emea.nsn-intra.net (8.12.11.20060308/8.12.11) with ESMTP
	id u28JrT7P032750
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
	for <poky@yoctoproject.org>; Tue, 8 Mar 2016 20:53:29 +0100
Received: from DEMUMBX003.nsn-intra.net ([169.254.2.99]) by
	DEMUHTC003.nsn-intra.net ([10.159.42.34]) with mapi id 14.03.0279.002;
	Tue, 8 Mar 2016 20:53:29 +0100
From: "Zawadzki, Krzysztof (Nokia - PL/Wroclaw)" <krzysztof.zawadzki@nokia.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [PATCH V3] meta: toolchain-shar-relocate.sh: Fix for
	extracting SDK in the same directory as SDK script.
Thread-Index: AdF5dAj74rCM7mL7ThiSOoSFRpURbQ==
Date: Tue, 8 Mar 2016 19:53:28 +0000
Message-ID: <4655585E9D8F3143B62277AB38CCEC0C2FFEB156@DEMUMBX003.nsn-intra.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.159.42.107]
MIME-Version: 1.0
X-purgate-type: clean
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: clean
X-purgate: This mail is considered clean (visit http://www.eleven.de for
	further information)
X-purgate-size: 1295
X-purgate-ID: 151667::1457466810-0000304F-03251FCC/0/0
Subject: [PATCH V3] meta: toolchain-shar-relocate.sh: Fix for extracting SDK in the same directory as SDK script.
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
X-List-Received-Date: Tue, 08 Mar 2016 19:53:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

If SDK will be extracted in the same folder as sdk shar script.
The shar_relocate will substitute SDK.sh script SDKPATH with extract destin=
ation path.
After that operation no one will be able use this sdk script as paths in it=
 will be different.
To fix this we need to filter out sdk script and relocate_sdk scripts from =
 SDKPATH substitution

Signed-off-by: Krzysztof Zawadzki <krzysztof.zawadzki@nokia.com>
---
 meta/files/toolchain-shar-relocate.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta/files/toolchain-shar-relocate.sh b/meta/files/toolchain-s=
har-relocate.sh
index 4f34fb4..d4bcf0e 100644
--- a/meta/files/toolchain-shar-relocate.sh
+++ b/meta/files/toolchain-shar-relocate.sh
@@ -47,7 +47,7 @@ for replace in "$target_sdk_dir -maxdepth 1" "$native_sys=
root"; do
 	$SUDO_EXEC find $replace -type f
 done | xargs -n100 file | grep ":.*\(ASCII\|script\|source\).*text" | \
     awk -F':' '{printf "\"%s\"\n", $1}' | \
-    grep -v "$target_sdk_dir/environment-setup-*" | \
+    grep -Ev "$target_sdk_dir/(environment-setup-*|relocate_sdk*|${0##*/})=
" | \
     xargs -n100 $SUDO_EXEC sed -i \
         -e "s:$DEFAULT_INSTALL_DIR:$target_sdk_dir:g" \
         -e "s:^#! */usr/bin/perl.*:#! /usr/bin/env perl:g" \
-- =20


Return-Path: <tomasz.meresinski@comarch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07DC6E00C4B; Wed, 21 Sep 2016 05:46:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [217.74.69.18 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1542 seconds by postgrey-1.32 at yocto-www;
	Wed, 21 Sep 2016 05:46:12 PDT
Received: from odzwierny3.comarch.com (odzwierny3.comarch.com [217.74.69.18])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78D61E00C08
	for <poky@yoctoproject.org>; Wed, 21 Sep 2016 05:46:12 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	authenticated as tomasz.meresinski@comarch.com
	by odzwierny3.comarch.com with esmtpsa (TLSv1:AES128-SHA:128)(ComArch
	ESMTP) id 1bmgVn-0001Ie-Nx
	for poky@yoctoproject.org; Wed, 21 Sep 2016 14:20:27 +0200
To: poky@yoctoproject.org
From: Tomasz Meresinski <tomasz.meresinski@comarch.com>
Message-ID: <7b50926a-35bb-0fe3-394d-80dca52161a4@comarch.com>
Date: Wed, 21 Sep 2016 14:20:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.3.0
MIME-Version: 1.0
X-CA-Antivirus: Scanned by ComArch Antivirus on odzwierny3.comarch.com
X-CA-Is-Spam: No
Subject: GCC patch Reuse-fdebug-prefix-map-to-replace-ffile-prefix-map.patch
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
X-List-Received-Date: Wed, 21 Sep 2016 12:46:16 -0000
X-Groupsio-MsgNum: 10606
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
	micalg=sha-256; boundary="------------ms060109070900080906030804"

--------------ms060109070900080906030804
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi
I found some difficulties when compiling some of our internal=20
applications because of gcc patch called=20
"Reuse-fdebug-prefix-map-to-replace-ffile-prefix-map.patch"
As far as I can see it makes __FILE__ macro to point to Yocto source=20
file location not build system's.

Now let me describe that problem:
1) CMake script gets source directory (so it's build system path)
2) CMake calculates its length and adds it as a define to application=20
(call it LEN)
3) A simple way to get a filename from __FILE__ macro is to compute=20
__FILE__ + LEN
4) Crash

Is this patch really a big deal?

Tomasz Meresi=C5=84ski



--------------ms060109070900080906030804
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

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

--------------ms060109070900080906030804--

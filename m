Return-Path: <biannm@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6591BE00846; Mon, 15 Sep 2014 19:44:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE10BE0078A
	for <poky@yoctoproject.org>; Mon, 15 Sep 2014 19:44:15 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.04,532,1406563200"; d="scan'208";a="36002272"
Received: from localhost (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 16 Sep 2014 10:41:10 +0800
Received: from G08CNEXCHPEKD01.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id s8G2iGj7013970
	for <poky@yoctoproject.org>; Tue, 16 Sep 2014 10:44:16 +0800
Received: from G08CNEXMBPEKD02.g08.fujitsu.local ([10.167.33.84]) by
	G08CNEXCHPEKD01.g08.fujitsu.local ([10.167.33.80]) with mapi id
	14.03.0181.006; Tue, 16 Sep 2014 10:44:13 +0800
From: "Bian, Naimeng" <biannm@cn.fujitsu.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [Question]Remove $BUILDDIR from gcc -v
Thread-Index: Ac/RV/8hVVgRT6SeSlWxaMTJTGmdng==
Date: Tue, 16 Sep 2014 02:44:10 +0000
Message-ID: <30DC4EDFD798C94083F3E083754532CCCA4509@G08CNEXMBPEKD02.g08.fujitsu.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.167.226.31]
MIME-Version: 1.0
Subject: [Question]Remove $BUILDDIR from gcc -v
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
X-List-Received-Date: Tue, 16 Sep 2014 02:44:22 -0000
Content-Language: zh-CN
Content-Type: text/plain; charset="shift_jis"
Content-Transfer-Encoding: base64

SGksDQoNCkFueSBzdWdnZXN0aW9uIHRvIHJlbW92ZSB0aGUgIiRCVUlMRERJUiIgZnJvbSAiZ2Nj
IC12Ii4gIA0KTWF5YmUgdGhlIGJ1aWxkaW5nIG9wdGlvbiBzdWNoIGFzIC0td2l0aC1saWJ0b29s
LXN5c3Jvb3QgaXMgdW5uZWNlc3NhcnkgDQpmb3IgdG9vbGNoYWluLiBUaGFua3MgYSBtaWxsaW9u
IQ0KDQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KI2k1ODYtcG9reS1saW51eC1nY2MgLXYgDQqB
QFVzaW5nIGJ1aWx0LWluIHNwZWNzLg0KgUBDT0xMRUNUX0dDQz0vb3B0L3Bva3ktbHNiLzEuNC4y
L3N5c3Jvb3RzL3g4Nl82NC1wb2t5c2RrLWxpbnV4L3Vzci9iaW4vDQqBQGk1ODYtcG9reS1saW51
eC9pNTg2LXBva3ktbGludXgtZ2NjDQqBQENPTExFQ1RfTFRPX1dSQVBQRVI9L29wdC9wb2t5LWxz
Yi8xLjQuMi8uLi4NCoFAVGFyZ2V0OiBpNTg2LXBva3ktbGludXgNCoFAQ29uZmlndXJlZCB3aXRo
OiAkQlVJTERESVIvdG1wL3dvcmstc2hhcmVkL2djYy00LjcuMi1yMjAvZ2NjLTQuNy4yL2NvbmZp
Z3VyZSBcIA0KICAtLWJ1aWxkPXg4Nl82NC1saW51eCAtLWhvc3Q9eDg2XzY0LXBva3lzZGstbGlu
dXggLS10YXJnZXQ9aTU4Ni1wb2t5LWxpbnV4IFwNCiAgLS1wcmVmaXg9L29wdC9wb2t5LWxzYi8x
LjQueC8uLi4gXA0KICAtLWJpbmRpcj0vb3B0L3Bva3ktbHNiLzEuNC54Ly4uLiBcDQoNCiAgLi4u
IC4uLg0KDQogIC0td2l0aC1saWJ0b29sLXN5c3Jvb3Q9JEJVSUxERElSL3RtcC9zeXNyb290cy94
ODZfNjQtbmF0aXZlc2RrLXBva3lzZGstbGludXggXA0KICAtLXdpdGgtYnVpbGQtc3lzcm9vdD0k
QlVJTERESVIgdG1wL3N5c3Jvb3RzL3ViaW51eC1xZW11eDg2IFwNCiAgLS13aXRoLW1wZnI9JEJV
SUxERElSL3RtcC9zeXNyb290cy94ODZfNjQtbmF0aXZlc2RrLXBva3lzZGstbGludXggXA0KICAt
LXdpdGgtbXBjPSRCVUlMRERJUi90bXAvc3lzcm9vdHMveDg2XzY0LW5hdGl2ZXNkay1wb2t5c2Rr
LWxpbnV4IFwNCiAgLi4uIC4uLg0KLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCg0KUmVnYXJkcywN
CiBCaWFuDQo=


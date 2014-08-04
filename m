Return-Path: <biannm@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5275CE007DD; Mon,  4 Aug 2014 03:03:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 69 seconds by postgrey-1.32 at yocto-www;
	Mon, 04 Aug 2014 03:02:57 PDT
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2165FE007D3
	for <poky@yoctoproject.org>; Mon,  4 Aug 2014 03:02:56 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.04,260,1406563200"; d="scan'208";a="34145309"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 04 Aug 2014 17:58:56 +0800
Received: from G08CNEXCHPEKD03.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id s74A1hen004475
	for <poky@yoctoproject.org>; Mon, 4 Aug 2014 18:01:43 +0800
Received: from G08CNEXMBPEKD02.g08.fujitsu.local ([10.167.33.84]) by
	G08CNEXCHPEKD03.g08.fujitsu.local ([10.167.33.85]) with mapi id
	14.03.0181.006; Mon, 4 Aug 2014 18:01:46 +0800
From: "biannm@cn.fujitsu.com" <biannm@cn.fujitsu.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [poky][Question]Does poky rebuild source when only makefile
	was modified
Thread-Index: Ac+vyH89ONDV1fjPSfaLSPJT1TYY8A==
Date: Mon, 4 Aug 2014 10:01:48 +0000
Message-ID: <30DC4EDFD798C94083F3E083754532CCC9AAA9@G08CNEXMBPEKD02.g08.fujitsu.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.167.226.31]
MIME-Version: 1.0
Subject: [Question]Does poky rebuild source when only makefile was modified
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
X-List-Received-Date: Mon, 04 Aug 2014 10:03:00 -0000
Content-Language: zh-CN
Content-Type: text/plain; charset="shift_jis"
Content-Transfer-Encoding: base64

SGksDQoNCiBVc3VhbGx5LCBpZiBvbmx5IG1ha2VmaWxlIGlzIG1vZGlmaWVkLCAibWFrZSIgd2ls
bCBub3QgcmVidWlsZCBzb3VyY2UuDQogRG9lcyBwb2t5IHJlYnVpbGQgc291cmNlIGluIHRoZSBm
b2xsb3dpbmcgY2FzZS4NCg0KIDEuIGJ1aWxkIGEgcmVjaXBlDQogMi4gbW9kaWZ5IHRoZSBiYiBm
aWxlIG9mIHRoaXMgcmVjaXBlLCB3aGljaCB3aWxsIGNhdXNlIG9ubHkgbWFrZWZpbGUgdG8gYmUg
bW9kaWZpZWQuDQogICAgRXguIHNldCBhIG5ldyBwYXRoIHRvIGxpYmRpcg0KIDMuIHJlYnVpbGQg
dGhpcyByZWNpcGUgd2l0aG91dCBkb2luZyBjbGVhbnNzdGF0ZSBiZWZvcmUNCg0KDQpSZWdhcmRz
DQogQmlhbg0K


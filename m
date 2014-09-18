Return-Path: <biannm@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C19BE00857; Thu, 18 Sep 2014 02:46:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88245E007AA
	for <poky@yoctoproject.org>; Thu, 18 Sep 2014 02:46:48 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.04,546,1406563200"; d="scan'208";a="36126244"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 18 Sep 2014 17:43:45 +0800
Received: from G08CNEXCHPEKD02.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id s8I9koIt031011;
	Thu, 18 Sep 2014 17:46:50 +0800
Received: from G08CNEXMBPEKD02.g08.fujitsu.local ([10.167.33.84]) by
	G08CNEXCHPEKD02.g08.fujitsu.local ([10.167.33.83]) with mapi id
	14.03.0181.006; Thu, 18 Sep 2014 17:46:38 +0800
From: "Bian, Naimeng" <biannm@cn.fujitsu.com>
To: Khem Raj <raj.khem@gmail.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Thread-Topic: [poky] [Question]Remove $BUILDDIR from gcc -v
Thread-Index: Ac/RV/8hVVgRT6SeSlWxaMTJTGmdnv//x4cA//5S31CABNThgP//a7YA
Date: Thu, 18 Sep 2014 09:46:37 +0000
Message-ID: <30DC4EDFD798C94083F3E083754532CCCA5E8D@G08CNEXMBPEKD02.g08.fujitsu.local>
References: <30DC4EDFD798C94083F3E083754532CCCA4509@G08CNEXMBPEKD02.g08.fujitsu.local>
	<1410852082.14624.54.camel@ted>
	<30DC4EDFD798C94083F3E083754532CCCA4803@G08CNEXMBPEKD02.g08.fujitsu.local>
	<541A8A89.6030403@gmail.com>
In-Reply-To: <541A8A89.6030403@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.167.226.31]
MIME-Version: 1.0
Subject: Re: [Question]Remove $BUILDDIR from gcc -v
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
X-List-Received-Date: Thu, 18 Sep 2014 09:46:54 -0000
Content-Language: zh-CN
Content-Type: text/plain; charset="shift_jis"
Content-Transfer-Encoding: base64

PiA+IFJlbW92aW5nIHRoZXNlIG9wdGlvbnMgaXMgbm90IG15IHB1cnBvc2UsIGkganVzdCB3YW50
IHRvIGhpZGUgdGhlICRCVUlMRERJUg0KPiANCj4gd2hhdHMgdGhlcmUgaW4gQlVJTERESVIgdG8g
aGlkZSA/DQoNClRoYW5rcyBmb3IgeW91ciBhbnN3ZXIuDQoNCldlbGwsIG1heWJlIGl0J3MgYSBz
dHJhbmdlIGNhc2UsICBidXQgYW55IHN1Z2dlc3Rpb24gaXQncyBoZWxwZnVsIHRvIG1lLiBeX14N
CihJIGRvbid0IHRoaW5rIHRoZXJlIGFyZSBzb21lIGJ1Z3Mgb2YgdXBzdHJlYW0ncyBwb2t5KQ0K
DQpPZiBjb3Vyc2UsIHdlIGNhbiBzZXQgQlVJTERESVIgdG8gYSBzYWZlIHBhdGggc3VjaCBhcyAv
d29ya3NwYWNlLA0KYnV0IHNldHRpbmcgQlVJTERESVIgdG8gYSBzZWNyZXQgcGF0aCBjYXVzZWQg
YnkgYSBtaXNzIG9wZXJhdGlvbg0Kd2lsbCBtYWtlIGEgbGVha2FnZSBvZiBzZWNyZXQuDQoNClNv
LCBpcyB0aGVyZSBhIG1ldGhvZCB0byBjaGFuZ2UgQlVJTERESVIgdG8gYSByZWxhdGl2ZSBwYXRo
IG5vdCBhIGFic29sdXRlIHBhdGguDQpMb29rcyBsaWtlIGl0J3Mgbm90IGVhc3kuIF5fXg0KDQpS
ZWdhcmRzDQogQmlhbg0KDQo+IFttYWlsdG86cG9reS1ib3VuY2VzQHlvY3RvcHJvamVjdC5vcmdd
IE9uIEJlaGFsZiBPZiBLaGVtIFJhag0KPiBTZW50OiBUaHVyc2RheSwgU2VwdGVtYmVyIDE4LCAy
MDE0IDM6MzIgUE0NCj4gDQo+IC0tLS0tQkVHSU4gUEdQIFNJR05FRCBNRVNTQUdFLS0tLS0NCj4g
SGFzaDogU0hBMQ0KPiANCj4gDQo+IA0KPiBPbiA5LzE2LzE0IDY6MDQgUE0sIEJpYW4sIE5haW1l
bmcgd3JvdGU6DQo+ID4gUmVtb3ZpbmcgdGhlc2Ugb3B0aW9ucyBpcyBub3QgbXkgcHVycG9zZSwg
aSBqdXN0IHdhbnQgdG8gaGlkZSB0aGUgJEJVSUxERElSDQo+IA0KPiB3aGF0cyB0aGVyZSBpbiBC
VUlMRERJUiB0byBoaWRlID8NCj4gDQo+IC0gLS0NCj4gLSAtS2hlbQ0KPiAtLS0tLUJFR0lOIFBH
UCBTSUdOQVRVUkUtLS0tLQ0KPiBWZXJzaW9uOiBHbnVQRy9NYWNHUEcyIHYyLjAuMjIgKERhcndp
bikNCj4gQ29tbWVudDogR1BHVG9vbHMgLSBodHRwczovL2dwZ3Rvb2xzLm9yZw0KPiANCj4gaUVZ
RUFSRUNBQVlGQWxRYWlva0FDZ2tRdXdVelZaR2RNeFF1QndDZEh4VWJueFlsM2RtaXg4Mkp1L0ZG
U3B0OQ0KPiBIM2NBbjFkY3lVaWU5cSt4OFdIdDQvaDg3RitVdmU2Kw0KPiA9RlBaRg0KPiAtLS0t
LUVORCBQR1AgU0lHTkFUVVJFLS0tLS0NCj4gLS0NCj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18NCj4gcG9reSBtYWlsaW5nIGxpc3QNCj4gcG9reUB5b2N0
b3Byb2plY3Qub3JnDQo+IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9saXN0aW5mby9w
b2t5DQo=


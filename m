Return-Path: <biannm@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CBAB7E0084D; Tue, 16 Sep 2014 18:07:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 517FEE00786
	for <poky@yoctoproject.org>; Tue, 16 Sep 2014 18:07:57 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.04,537,1406563200"; d="scan'208";a="36052614"
Received: from localhost (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 17 Sep 2014 09:04:53 +0800
Received: from G08CNEXCHPEKD02.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id s8H17w27007024;
	Wed, 17 Sep 2014 09:07:59 +0800
Received: from G08CNEXMBPEKD02.g08.fujitsu.local ([10.167.33.84]) by
	G08CNEXCHPEKD02.g08.fujitsu.local ([10.167.33.83]) with mapi id
	14.03.0181.006; Wed, 17 Sep 2014 09:04:53 +0800
From: "Bian, Naimeng" <biannm@cn.fujitsu.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Thread-Topic: [poky] [Question]Remove $BUILDDIR from gcc -v
Thread-Index: Ac/RV/8hVVgRT6SeSlWxaMTJTGmdnv//x4cA//5S31A=
Date: Wed, 17 Sep 2014 01:04:52 +0000
Message-ID: <30DC4EDFD798C94083F3E083754532CCCA4803@G08CNEXMBPEKD02.g08.fujitsu.local>
References: <30DC4EDFD798C94083F3E083754532CCCA4509@G08CNEXMBPEKD02.g08.fujitsu.local>
	<1410852082.14624.54.camel@ted>
In-Reply-To: <1410852082.14624.54.camel@ted>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.167.226.31]
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
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
X-List-Received-Date: Wed, 17 Sep 2014 01:07:59 -0000
Content-Language: zh-CN
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIGZvciB5b3VyIGFuc3dlci4NCg0KUmVtb3ZpbmcgdGhlc2Ugb3B0aW9ucyBpcyBub3Qg
bXkgcHVycG9zZSwgaSBqdXN0IHdhbnQgdG8gaGlkZSB0aGUgJEJVSUxERElSDQpzdWNoIGxpa2Ug
Zm9sbG93aW5nIGluIG15IHNkay4NCg0KLSAtLXdpdGgtbXBmcj0kQlVJTERESVIvdG1wL3N5c3Jv
b3RzL3g4Nl82NC1uYXRpdmVzZGstcG9reXNkay1saW51eA0KKyAtLXdpdGgtbXBmcj0uLi8uLi8g
dG1wL3N5c3Jvb3RzL3g4Nl82NC1uYXRpdmVzZGstcG9reXNkay1saW51eA0KDQpSZWdhcmRzLA0K
IEJpYW4NCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUmljaGFyZCBQdXJk
aWUgW21haWx0bzpyaWNoYXJkLnB1cmRpZUBsaW51eGZvdW5kYXRpb24ub3JnXQ0KPiBTZW50OiBU
dWVzZGF5LCBTZXB0ZW1iZXIgMTYsIDIwMTQgMzoyMSBQTQ0KPiBUbzogQmlhbiwgTmFpbWVuZy/l
jZ4g5LmD54ybDQo+IENjOiBwb2t5QHlvY3RvcHJvamVjdC5vcmcNCj4gU3ViamVjdDogUmU6IFtw
b2t5XSBbUXVlc3Rpb25dUmVtb3ZlICRCVUlMRERJUiBmcm9tIGdjYyAtdg0KPiANCj4gT24gVHVl
LCAyMDE0LTA5LTE2IGF0IDAyOjQ0ICswMDAwLCBCaWFuLCBOYWltZW5nIHdyb3RlOg0KPiA+IEFu
eSBzdWdnZXN0aW9uIHRvIHJlbW92ZSB0aGUgIiRCVUlMRERJUiIgZnJvbSAiZ2NjIC12Ii4NCj4g
PiBNYXliZSB0aGUgYnVpbGRpbmcgb3B0aW9uIHN1Y2ggYXMgLS13aXRoLWxpYnRvb2wtc3lzcm9v
dCBpcw0KPiA+IHVubmVjZXNzYXJ5IGZvciB0b29sY2hhaW4uIFRoYW5rcyBhIG1pbGxpb24hDQo+
ID4NCj4gPg0KPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+ID4gLS0tLS0tLS0tLQ0KPiA+ICNpNTg2LXBva3kt
bGludXgtZ2NjIC12DQo+ID4g44CAVXNpbmcgYnVpbHQtaW4gc3BlY3MuDQo+ID4NCj4gPg0KPiBD
T0xMRUNUX0dDQz0vb3B0L3Bva3ktbHNiLzEuNC4yL3N5c3Jvb3RzL3g4Nl82NC1wb2t5c2RrLWxp
bnV4L3Vzci9iaW4vDQo+ID4g44CAaTU4Ni1wb2t5LWxpbnV4L2k1ODYtcG9reS1saW51eC1nY2MN
Cj4gPiDjgIBDT0xMRUNUX0xUT19XUkFQUEVSPS9vcHQvcG9reS1sc2IvMS40LjIvLi4uDQo+ID4g
44CAVGFyZ2V0OiBpNTg2LXBva3ktbGludXgNCj4gPiDjgIBDb25maWd1cmVkIHdpdGg6DQo+ICRC
VUlMRERJUi90bXAvd29yay1zaGFyZWQvZ2NjLTQuNy4yLXIyMC9nY2MtNC43LjIvY29uZmlndXJl
IFwNCj4gPiAgIC0tYnVpbGQ9eDg2XzY0LWxpbnV4IC0taG9zdD14ODZfNjQtcG9reXNkay1saW51
eA0KPiAtLXRhcmdldD1pNTg2LXBva3ktbGludXggXA0KPiA+ICAgLS1wcmVmaXg9L29wdC9wb2t5
LWxzYi8xLjQueC8uLi4gXA0KPiA+ICAgLS1iaW5kaXI9L29wdC9wb2t5LWxzYi8xLjQueC8uLi4g
XA0KPiA+DQo+ID4gICAuLi4gLi4uDQo+ID4NCj4gPg0KPiAtLXdpdGgtbGlidG9vbC1zeXNyb290
PSRCVUlMRERJUi90bXAvc3lzcm9vdHMveDg2XzY0LW5hdGl2ZXNkay1wb2t5c2RrDQo+IC1saW51
eCBcDQo+ID4gICAtLXdpdGgtbXBmcj0kQlVJTERESVIvdG1wL3N5c3Jvb3RzL3g4Nl82NC1uYXRp
dmVzZGstcG9reXNkay1saW51eCBcDQo+ID4gICAtLXdpdGgtbXBjPSRCVUlMRERJUi90bXAvc3lz
cm9vdHMveDg2XzY0LW5hdGl2ZXNkay1wb2t5c2RrLWxpbnV4IFwNCj4gPiAgIC4uLiAuLi4NCj4g
Pg0KPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tDQo+ID4gLS0tLS0tLS0tLQ0KPiANCj4gVGhlc2Ugb3B0aW9ucyBh
cmUgcmVxdWlyZWQuIFdoeSBkbyB5b3Ugd2FudCB0byByZW1vdmUgdGhlbT8NCj4gDQo+IENoZWVy
cywNCj4gDQo+IFJpY2hhcmQNCg0K


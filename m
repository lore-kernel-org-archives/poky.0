Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9DA2DE007A0; Tue, 12 Aug 2014 06:49:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [207.46.163.143 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 946 seconds by postgrey-1.32 at yocto-www;
	Tue, 12 Aug 2014 06:49:08 PDT
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(dns-bn1lp0143.outbound.protection.outlook.com [207.46.163.143])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C19E7E00799
	for <poky@yoctoproject.org>; Tue, 12 Aug 2014 06:49:08 -0700 (PDT)
Received: from BLUPR05MB037.namprd05.prod.outlook.com (10.255.210.145) by
	BLUPR05MB039.namprd05.prod.outlook.com (10.255.210.148) with Microsoft
	SMTP Server (TLS) id 15.0.1005.10; Tue, 12 Aug 2014 13:33:19 +0000
Received: from BLUPR05MB037.namprd05.prod.outlook.com ([169.254.15.72]) by
	BLUPR05MB037.namprd05.prod.outlook.com ([169.254.15.72]) with mapi id
	15.00.1005.008; Tue, 12 Aug 2014 13:33:20 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>, Martin Jansa
	<martin.jansa@gmail.com>
Thread-Topic: [poky] [PATCH] scripts/contrib/make_ipk_repo.sh: Add new
	image-specific package feed generator
Thread-Index: AQHPth+hSvvP4yF0r0yR/GVU1eBafZvM6RmAgAACZRA=
Date: Tue, 12 Aug 2014 13:33:19 +0000
Message-ID: <adca2793da574d5cbb56bdd1209f9e09@BLUPR05MB037.namprd05.prod.outlook.com>
References: <1407775650-27646-1-git-send-email-bevenson@melinkcorp.com>
	<20140812112228.GD14848@jama> <1407847261.22187.33.camel@ted>
In-Reply-To: <1407847261.22187.33.camel@ted>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 00606D25007D9400606E72
x-originating-ip: [98.100.91.242]
x-microsoft-antispam: BCL:0;PCL:0;RULEID:;UriScan:;
x-forefront-prvs: 0301360BF5
x-forefront-antispam-report: SFV:NSPM;
	SFS:(6009001)(51704005)(24454002)(199003)(377424004)(13464003)(377454003)(189002)(77982001)(79102001)(74662001)(76176999)(74502001)(50986999)(31966008)(85852003)(20776003)(19580405001)(83322001)(80022001)(66066001)(99396002)(54356999)(85306004)(105586002)(107046002)(81342001)(92566001)(106356001)(21056001)(46102001)(99286002)(76482001)(95666004)(4396001)(33646002)(76576001)(77096002)(106116001)(81542001)(19580395003)(86362001)(2656002)(87936001)(83072002)(74316001)(101416001)(24736002)(108616003);
	DIR:OUT; SFP:; SCL:1; SRVR:BLUPR05MB039;
	H:BLUPR05MB037.namprd05.prod.outlook.com; FPR:; MLV:sfv;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] scripts/contrib/make_ipk_repo.sh: Add new image-specific package feed generator
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
X-List-Received-Date: Tue, 12 Aug 2014 13:49:11 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

UmljaGFyZCBhbmQgTWFydGluLA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZy
b206IFJpY2hhcmQgUHVyZGllIFttYWlsdG86cmljaGFyZC5wdXJkaWVAbGludXhmb3VuZGF0aW9u
Lm9yZ10NCj4gU2VudDogVHVlc2RheSwgQXVndXN0IDEyLCAyMDE0IDg6NDEgQU0NCj4gVG86IE1h
cnRpbiBKYW5zYQ0KPiBDYzogQnJ5YW4gRXZlbnNvbjsgcG9reUB5b2N0b3Byb2plY3Qub3JnDQo+
IFN1YmplY3Q6IFJlOiBbcG9reV0gW1BBVENIXSBzY3JpcHRzL2NvbnRyaWIvbWFrZV9pcGtfcmVw
by5zaDogQWRkIG5ldw0KPiBpbWFnZS1zcGVjaWZpYyBwYWNrYWdlIGZlZWQgZ2VuZXJhdG9yDQo+
IA0KPiBPbiBUdWUsIDIwMTQtMDgtMTIgYXQgMTM6MjIgKzAyMDAsIE1hcnRpbiBKYW5zYSB3cm90
ZToNCj4gPiBPbiBNb24sIEF1ZyAxMSwgMjAxNCBhdCAxMjo0NzozMFBNIC0wNDAwLCBCcnlhbiBF
dmVuc29uIHdyb3RlOg0KPiA+ID4gQWRkaW5nIGEgbmV3IHNjcmlwdCB3aGljaCBnZW5lcmF0ZXMg
YSByZWR1Y2VkIHBhY2thZ2UgZmVlZA0KPiA+ID4gZGlyZWN0b3J5LiAgVGhlIHNjcmlwdCB1c2Vz
IHRoZSBsaXN0IG9mIGluc3RhbGxlZCBwYWNrYWdlcyBmb3IgYQ0KPiA+ID4gc3BlY2lmaWMgYnVp
bGQgaW1hZ2UgYW5kIGNyZWF0ZXMgYSBuZXcgcGFja2FnZSBmZWVkIGRpcmVjdG9yeSB3aXRoDQo+
ID4gPiBvbmx5IHRoZSBwYWNrYWdlcyByZWxldmFudCB0byB0aGF0IGltYWdlLiAgVGhpcyBpcyB1
c2VmdWwgZm9yDQo+ID4gPiBkaXN0cmlidXRpbmcgZmlybXdhcmUgdXBncmFkZXMuDQo+ID4gPg0K
PiA+ID4gQXQgdGhpcyB0aW1lIHRoZSBzY3JpcHQgb25seSB3b3JrcyBmb3Igb3BrZyByZXBvc2l0
b3JpZXMuICBGdXJ0aGVyDQo+ID4gPiBtb2RpZmljYXRpb25zIGFyZSBuZWVkZWQgZm9yIHRoZSBz
Y3JpcHQgdG8gd29yayB3aXRoIG90aGVyIHBhY2thZ2UNCj4gPiA+IG1hbmFnZW1lbnQgc3lzdGVt
cy4NCj4gPg0KPiA+IFRoaXMgYmVsb25ncyB0byBvZS1jb3JlIE1MDQo+IA0KPiBBZ3JlZWQuDQoN
CkZyb20gYnJvd3NpbmcgdGhlIHRoZSBvcGVuZW1iZWRkZWQgcmVwb3NpdG9yeSBhbmQgdGhlIHBv
a3kgcmVwb3NpdG9yeSwgSSdkIHRob3VnaHQgdGhlIHBva3kgbWFpbGluZyBsaXN0IHdhcyBtb3Jl
IGFwcHJvcHJpYXRlIG9uIHRoaXMgaXRlbS4gIEknbGwgcmUtc3VibWl0IHRvIHRoZSBvZS1jb3Jl
IG1haWxpbmcgbGlzdC4NCg0KPiANCj4gPiA+DQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBCcnlhbiBF
dmVuc29uIDxiZXZlbnNvbkBtZWxpbmtjb3JwLmNvbT4NCj4gPiA+IC0tLQ0KPiA+ID4gIHNjcmlw
dHMvY29udHJpYi9tYWtlX2lwa19yZXBvLnNoIHwgICA5Mw0KPiArKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKw0KPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCA5MyBpbnNlcnRpb25z
KCspDQo+ID4gPiAgY3JlYXRlIG1vZGUgMTAwNzU1IHNjcmlwdHMvY29udHJpYi9tYWtlX2lwa19y
ZXBvLnNoDQo+ID4gPg0KPiA+ID4gZGlmZiAtLWdpdCBhL3NjcmlwdHMvY29udHJpYi9tYWtlX2lw
a19yZXBvLnNoDQo+ID4gPiBiL3NjcmlwdHMvY29udHJpYi9tYWtlX2lwa19yZXBvLnNoDQo+ID4g
PiBuZXcgZmlsZSBtb2RlIDEwMDc1NQ0KPiA+ID4gaW5kZXggMDAwMDAwMC4uYjA0NTM1ZQ0KPiA+
ID4gLS0tIC9kZXYvbnVsbA0KPiA+ID4gKysrIGIvc2NyaXB0cy9jb250cmliL21ha2VfaXBrX3Jl
cG8uc2gNCj4gPiA+IEBAIC0wLDAgKzEsOTMgQEANCj4gPiA+ICsjIS9iaW4vYmFzaA0KPiA+ID4g
Kw0KPiA+ID4gKyMgQ3JlYXRlcyBhIHBhY2thZ2UgZmVlZCBkaXJlY3RvcnkgdGhhdCBvbmx5IGNv
bnRhaW5zIHRoZSBwYWNrYWdlcw0KPiA+ID4gK3RoYXQgd2VyZSAjIGluc3RhbGxlZCB3aXRoIHRo
ZSByZWZlcmVuY2VkIGltYWdlLiAgVGhpcyBzY3JpcHQNCj4gPiA+ICtkZXBlbmRzIG9uIGltYWdl
IGJ1aWxkICMgaGlzdG9yeSB0byBwcm9wZXJseSBvcGVyYXRlLiAgSW4geW91cg0KPiA+ID4gK2Nv
bmYvbG9jYWwuY29uZiwgYWRkIHRoZSBmb2xsb3dpbmcgdHdvICMgbGluZXM6DQo+ID4gPiArIyAg
IElOSEVSSVQgKz0gImJ1aWxkaGlzdG9yeSINCj4gPiA+ICsjICAgQlVJTERISVNUT1JZX0NPTU1J
VCA9ICIxIg0KPiA+ID4gKyMNCj4gPiA+ICsjIEF0IHRoaXMgdGltZSB0aGlzIHNjcmlwdCBpcyBv
bmx5IHNldHVwIHRvIGNyZWF0ZSBvcGtnIHBhY2thZ2UgZmVlZHMuDQo+ID4gPiArIyBGdXJ0aGVy
IHNjcmlwdCBtb2RpZmljYXRpb24gaXMgbmVlZGVkIGlmIHlvdSB1c2UgYSBkaWZmZXJlbnQNCj4g
PiA+ICtwYWNrYWdlICMgbWFuYWdtZW50IHN5c3RlbS4NCj4gPiA+ICsjDQo+ID4gPiArIyBUaGlz
IHNjcmlwdCBhc3N1bWVzIGl0IGlzIGJlaW5nIHJ1biBmcm9tIHlvdXIgaW1hZ2UgYnVpbGQNCj4g
PiA+ICtkaXJlY3RvcnkuICBTb21lICMgcGF0aHMgbWF5IG5lZWQgdG8gYmUgbW9kaWZpZWQgaWYg
aXQgaXMgcnVuIGZyb20gYQ0KPiBkaWZmZXJlbnQgZGlyZWN0b3J5Lg0KPiA+ID4gKyMNCj4gPiA+
ICsjIEFzc3VtZXMgdGhhdCB0aGUgcmVsZXZhbnQgaW1hZ2Ugd2FzIHJlY2VudGx5IGJ1aWx0LiAg
SWYgeW91IGhhdmUNCj4gPiA+ICtkb25lIGFueSAjIHBhY2thZ2UgYnVpbGRzIHNpbmNlIHRoZSBs
YXN0IGltYWdlIGJ1aWxkLCBpdCBpcw0KPiA+ID4gK3N1Z2dlc3RlZCB0aGF0IHlvdSByZS1idWls
ZCAjIHJlbGV2YW50IGltYWdlLg0KPiA+ID4gKyMNCj4gPiA+ICsjIFNjcmlwdCBpbnB1dCB2YXJp
YWJsZXM6DQo+ID4gPiArIyAkMSAtIFRoZSBpbWFnZSBuYW1lIChpLmUuICJjb3JlLWltYWdlLW1p
bmltYWwiKSAjICQyIC0gVGhlIHRhcmdldA0KPiA+ID4gK21hY2hpbmUgKGkuZS4gImJlYWdsZWJv
bmUiKSAjICQzIC0gVGhlIHRhcmdldCBhcmNoaXRlY3R1cmUgKGkuZS4NCj4gPiA+ICsiYXJtOTI2
ZWpzdGUiKSAjICQ0IC0gVGhlIHRhcmdldCBkaXJlY3RvcnkgKGkuZS4gImZlZWQiKSAjDQo+ID4g
PiArDQo+ID4gPiArIyBWYWxpZGF0ZSB0aGUgbnVtYmVyIG9mIGlucHV0IHZhcmlhYmxlcyBpZiBb
WyAiJCMiIC1uZSA0IF1dOyB0aGVuDQo+ID4gPiArICAgIGVjaG8gIlVuZXhwZWN0ZWQgbnVtYmVy
IG9mIGFyZ3VtZW50cyI7DQo+ID4gPiArICAgIGVjaG8gIlVzYWdlOiBtYWtlX2lwa19yZXBvLnNo
IElNQUdFX05BTUUgVEFSR0VUX01BQ0hJTkUNCj4gVEFSR0VUX0FSQ0ggVEFSR0VUX0RJUiI7DQo+
ID4gPiArICAgIGV4aXQgMTsNCj4gPiA+ICtmaQ0KPiA+ID4gKw0KPiA+ID4gKyMgU29tZSBwYWNr
YWdlcyBpbmV4cGxpY2FibHkgY29udGFpbiBhICIxOiIgaW4gdGhlIHBhY2thZ2UgbmFtZQ0KPiA+
ID4gK3RoYXQgZG9lcyBub3QgIyBiZWxvbmcgdGhlcmUuICBSZW1vdmUgdGhpcyB0ZXh0IGZyb20g
dGhlc2UgcGFja2FnZQ0KPiBuYW1lcy4NCj4gPiA+ICsNCj4gPiA+ICtzZWQgLWkgJ3MvMTovL2cn
DQo+ID4gPiArdG1wL2J1aWxkaGlzdG9yeS9pbWFnZXMvIiQyIi9lZ2xpYmMvIiQxIi9pbnN0YWxs
ZWQtcGFja2FnZXMudHh0DQo+ID4gPiArDQo+ID4gPiArIyBSZWFkIGluIHRoZSBsaXN0IG9mIHBh
Y2thZ2VzIHVzZWQgYnkgdGhlIGltYWdlLiAgVGhpcyBpbmNsdWRlcw0KPiA+ID4gK3RoZSAjIG1h
Y2hpbmUvYXJjaGl0ZWN0dXJlIGluZGVwZW5kZW50IHBhY2thZ2VzICgiYWxsIiksIHRoZQ0KPiA+
ID4gK2FyY2hpdGVjdHVyZSBzcGVjaWZpYyAjIHBhY2thZ2VzLCBhbmQgdGhlIG1hY2hpbmUgc3Bl
Y2lmaWMgcGFja2FnZXMuDQo+ID4gPiArQUxMX1BLR19MSVNUPSQoZ3JlcCAnX2FsbFwuaXBrJw0K
PiA+ID4gK3RtcC9idWlsZGhpc3RvcnkvaW1hZ2VzLyIkMiIvZWdsaWJjLyIkMSIvaW5zdGFsbGVk
LXBhY2thZ2VzLnR4dCkNCj4gPiA+ICtBUkNIX1BLR19MSVNUPSQoZ3JlcCAnXyciJDMiJ1wuaXBr
Jw0KPiA+ID4gK3RtcC9idWlsZGhpc3RvcnkvaW1hZ2VzLyIkMiIvZWdsaWJjLyIkMSIvaW5zdGFs
bGVkLXBhY2thZ2VzLnR4dCkNCj4gPiA+ICtNQUNISU5FX1BLR19MSVNUPSQoZ3JlcCAnXyciJDIi
J1wuaXBrJw0KPiA+ID4gK3RtcC9idWlsZGhpc3RvcnkvaW1hZ2VzLyIkMiIvZWdsaWJjLyIkMSIv
aW5zdGFsbGVkLXBhY2thZ2VzLnR4dCkNCj4gPiA+ICsNCj4gPiA+ICtlY2hvICJBTExfUEtHX0xJ
U1QgaXMgJEFMTF9QS0dfTElTVCI7IGVjaG8gIkFSQ0hfUEtHX0xJU1QgaXMNCj4gPiA+ICskQVJD
SF9QS0dfTElTVCI7IGVjaG8gIk1BQ0hJTkVfUEtHX0xJU1QgaXMNCj4gJE1BQ0hJTkVfUEtHX0xJ
U1QiOw0KPiA+ID4gKw0KPiA+ID4gKyMgQ3JlYXRlIHRoZSBuZXcgZGlyZWN0b3J5IGZvciB0aGUg
ZmVlZHMsIG1ha2luZyBzdXJlIHRoZXJlIGlzIG5vDQo+ID4gPiArcHJldmlvdXMgY29weSBybSAt
ciAiJDQiLyBybSAiJDQiLnppcCBta2RpciAtcCAiJDQiLw0KPiA+ID4gKw0KPiA+ID4gKyMgQ29w
eSBvdmVyIHRoZSAiYWxsIiBwYWNrYWdlcw0KPiA+ID4gK21rZGlyIC1wICIkNCIvYWxsLw0KPiA+
ID4gK2VjaG8gIkNvcHlpbmcgcGFja2FnZXMgdG8gJ2FsbCcgZGlyZWN0b3J5Ig0KPiA+ID4gK2Zv
ciBpIGluICRBTExfUEtHX0xJU1Q7IGRvDQo+ID4gPiArICAgIGNwIHRtcC9kZXBsb3kvaXBrL2Fs
bC8iJGkiICIkNCIvYWxsLyBkb25lDQo+ID4gPiArDQo+ID4gPiArIyBDb3B5IG92ZXIgdGhlIGFy
Y2hpdGVjdHVyZSBwYWNrYWdlcyBta2RpciAtcCAiJDQiLyQzLyBlY2hvDQo+ID4gPiArIkNvcHlp
bmcgcGFja2FnZXMgdG8gJyQzJyBkaXJlY3RvcnkiDQo+ID4gPiArZm9yIGkgaW4gJEFSQ0hfUEtH
X0xJU1Q7IGRvDQo+ID4gPiArICAgIGNwIHRtcC9kZXBsb3kvaXBrLyIkMyIvIiRpIiAiJDQiLyIk
MyIvIGRvbmUNCj4gPiA+ICsNCj4gPiA+ICsjIENvcHkgb3ZlciB0aGUgbWFjaGluZSBwYWNrYWdl
cw0KPiA+ID4gK21rZGlyIC1wICIkNCIvIiQyIi8NCj4gPiA+ICtlY2hvICJDb3B5aW5nIHBhY2th
Z2VzIHRvICckMicgZGlyZWN0b3J5Ig0KPiA+ID4gK2ZvciBpIGluICRNQUNISU5FX1BLR19MSVNU
OyBkbw0KPiA+ID4gKyAgICBjcCB0bXAvZGVwbG95L2lway8iJDIiLyIkaSIgIiQ0Ii8iJDIiLyBk
b25lDQo+ID4gPiArDQo+ID4gPiArIyBCdWlsZCB0aGUgcGFja2FnZSBpbmRleCBmaWxlcw0KPiA+
ID4gK2VjaG8gIkJ1aWxkaW5nIHBhY2thZ2UgaW5kZXggZmlsZXMiDQo+ID4gPiArdG91Y2ggIiQ0
Ii9QYWNrYWdlcw0KPiA+ID4gK2Zsb2NrICIkNCIvUGFja2FnZXMuZmxvY2sgLWMgInRtcC9zeXNy
b290cy9pNjg2LWxpbnV4L3Vzci9iaW4vb3BrZy0NCj4gbWFrZS1pbmRleCAtciAkNC9QYWNrYWdl
cyAtcCAkNC9QYWNrYWdlcyAtbSAkNC8iDQo+ID4gPiArdG91Y2ggIiQ0Ii9hbGwvUGFja2FnZXMN
Cj4gPiA+ICtmbG9jayAiJDQiL2FsbC9QYWNrYWdlcy5mbG9jayAtYyAidG1wL3N5c3Jvb3RzL2k2
ODYtbGludXgvdXNyL2Jpbi9vcGtnLQ0KPiBtYWtlLWluZGV4IC1yICQ0L2FsbC9QYWNrYWdlcyAt
cCAkNC9hbGwvUGFja2FnZXMgLW0gJDQvYWxsLyINCj4gPiA+ICt0b3VjaCAiJDQiLyIkMyIvUGFj
a2FnZXMNCj4gPiA+ICtmbG9jayAiJDQiLyIkMyIvUGFja2FnZXMuZmxvY2sgLWMgInRtcC9zeXNy
b290cy9pNjg2LQ0KPiBsaW51eC91c3IvYmluL29wa2ctbWFrZS1pbmRleCAtciAkNC8kMy9QYWNr
YWdlcyAtcCAkNC8kMy9QYWNrYWdlcyAtbQ0KPiAkNC8kMy8iDQo+ID4gPiArdG91Y2ggIiQ0Ii8i
JDIiL1BhY2thZ2VzDQo+ID4gPiArZmxvY2sgIiQ0Ii8iJDIiL1BhY2thZ2VzLmZsb2NrIC1jICJ0
bXAvc3lzcm9vdHMvaTY4Ni0NCj4gbGludXgvdXNyL2Jpbi9vcGtnLW1ha2UtaW5kZXggLXIgJDQv
JDIvUGFja2FnZXMgLXAgJDQvJDIvUGFja2FnZXMgLW0NCj4gJDQvJDIvIg0KPiANCj4gVGhpcyBp
cyBhbHNvIGhhcmRjb2RlZCB0byBiZSAzMiBiaXQgYnVpbGQgc3lzdGVtcyA6Ly4gVGhlcmUgYXJl
IGEgbnVtYmVyIG9mDQo+IGhhcmRjb2RlZCBhc3N1bXB0aW9ucyBpbiB0aGUgc2NyaXB0Lg0KDQpB
Z3JlZWQsIEkgbWFrZSBhIG51bWJlciBvZiBhc3N1bXB0aW9ucyBpbiB0aGUgc2NyaXB0IGFuZCBJ
IGxpc3QgdGhlIGFzc3VtcHRpb25zIHRoYXQgSSBrbmV3IEkgbWFkZS4gIEJ1dCwgaXTigJlzIGEg
c2NyaXB0IEkndmUgZm91bmQgdXNlZnVsIGZvciBteSBwdXJwb3NlcyBhbmQgd2FudGVkIHRvIHNo
YXJlIHdpdGggb3RoZXJzLiAgSWYgeW91IGZlZWwgdGhlcmUgaXMgcG90ZW50aWFsIGFuZCBpZiB5
b3UgaGF2ZSBzcGVjaWZpYyBzdWdnZXN0aW9ucyBvbiB3aGF0IHRvIGNoYW5nZSwgSSdsbCBtYWtl
IHRoZSBtb2RpZmljYXRpb25zIGJlZm9yZSByZXN1Ym1pdHRpbmcuDQoNClJlZ2FyZHMsDQpCcnlh
bg0KDQo+IA0KPiBDaGVlcnMsDQo+IA0KPiBSaWNoYXJkDQo+IA0KDQo=


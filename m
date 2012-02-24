Return-Path: <chang@altera.com>
Received: from DB3EHSOBE002.bigfish.com (db3ehsobe002.messaging.microsoft.com
	[213.199.154.140])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB238E0059A
	for <poky@yoctoproject.org>; Fri, 24 Feb 2012 06:29:11 -0800 (PST)
Received: from mail90-db3-R.bigfish.com (10.3.81.251) by
	DB3EHSOBE002.bigfish.com (10.3.84.22) with Microsoft SMTP Server id
	14.1.225.23; Fri, 24 Feb 2012 14:29:09 +0000
Received: from mail90-db3 (localhost [127.0.0.1])	by mail90-db3-R.bigfish.com
	(Postfix) with ESMTP id 5A9CC460266;
	Fri, 24 Feb 2012 14:29:09 +0000 (UTC)
X-SpamScore: -25
X-BigFish: VS-25(zzbb2dI217bL9371Ic89bh936eK542M13fcM1432N98dK853kzz1202hzz8275dhz2fh2a8h668h839h93fh)
X-Forefront-Antispam-Report: CIP:66.35.227.6; KIP:(null); UIP:(null); IPV:NLI;
	H:sj-smtp01.altera.com; RD:sj-smtp01.altera.com; EFVD:NLI
Received-SPF: pass (mail90-db3: domain of altera.com designates 66.35.227.6 as
	permitted sender) client-ip=66.35.227.6;
	envelope-from=chang@altera.com; helo=sj-smtp01.altera.com ;
	1.altera.com ; 
Received: from mail90-db3 (localhost.localdomain [127.0.0.1]) by mail90-db3
	(MessageSwitch) id 1330093747855049_12706;
	Fri, 24 Feb 2012 14:29:07 +0000 (UTC)
Received: from DB3EHSMHS011.bigfish.com (unknown [10.3.81.253])	by
	mail90-db3.bigfish.com (Postfix) with ESMTP id CC5164E004A;
	Fri, 24 Feb 2012 14:29:07 +0000 (UTC)
Received: from sj-smtp01.altera.com (66.35.227.6) by DB3EHSMHS011.bigfish.com
	(10.3.87.111) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Fri, 24 Feb 2012 14:29:06 +0000
Received: from sj-mail01.altera.com ([137.57.1.6])	by sj-smtp01.altera.com
	(8.13.7+Sun/8.13.7) with ESMTP id q1OEWWbM004682;
	Fri, 24 Feb 2012 06:32:32 -0800 (PST)
Received: from sj-ithc02.altera.priv.altera.com
	(sj-ithc02.altera.priv.altera.com [137.57.245.21])	by
	sj-mail01.altera.com
	(8.13.7+Sun/8.13.7) with ESMTP id q1OET3IO012141;
	Fri, 24 Feb 2012 06:29:03 -0800 (PST)
Received: from pg-ithc01.altera.priv.altera.com (137.57.105.42) by
	sj-ithc02.altera.priv.altera.com (137.57.245.21) with Microsoft SMTP
	Server (TLS) id 8.3.106.1; Fri, 24 Feb 2012 06:29:03 -0800
Received: from PG-ITMSG03.altera.priv.altera.com ([137.57.105.40]) by
	pg-ithc01.altera.priv.altera.com ([137.57.105.42]) with mapi;
	Fri, 24 Feb 2012 22:29:00 +0800
From: Chin Huat Ang <chang@altera.com>
To: 'Richard Purdie' <richard.purdie@linuxfoundation.org>, 'Khem Raj'
	<raj.khem@gmail.com>
Date: Fri, 24 Feb 2012 22:28:59 +0800
Thread-Topic: [poky] Using non-distro gcc
Thread-Index: Aczy3dCxFxs/iFazRSqxCJv0Pt9kXwAIbpDA
Message-ID: <0BB3B561D7068A4E89FD8E9ABFB538BEB0B9F945D3@PG-ITMSG03.altera.priv.altera.com>
References: <0BB3B561D7068A4E89FD8E9ABFB538BEB0B9F942C2@PG-ITMSG03.altera.priv.altera.com>
	<1329985869.32110.50.camel@ted>
	<20120224080118.GC2479@sakrah.homelinux.org>
	<1330078754.32006.3.camel@ted>
In-Reply-To: <1330078754.32006.3.camel@ted>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-OriginatorOrg: altera.com
Cc: "'poky@yoctoproject.org'" <poky@yoctoproject.org>
Subject: Re: Using non-distro gcc
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
X-List-Received-Date: Fri, 24 Feb 2012 14:29:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

UmljaGFyZCwNCg0KSSB0aGluayB5b3UncmUgcmlnaHQgYWJvdXQgdGhlIHRvb2xjaGFpbiB3YXNu
J3QgY29tcGlsZWQgd2l0aCAtV2wsLXJwYXRoLCBhcyByZXZlYWxlZCBieSAiY2hycGF0aCAtbCIu
DQoNClNldHRpbmcgTERfTElCUkFSWV9QQVRIIGluIG9yZGVyIHRvIHVzZSBhIHRvb2xjaGFpbiBl
c3NlbnRpYWxseSBtZWFucyBpdCdzIGJyb2tlbi4NCg0KKGFuZCBhcG9sb2dpZXMgZm9yIG5vbi1w
b2t5L29lIHNwZWNpZmljIHF1ZXN0aW9ucykNCg0KLS1DaGluIEh1YXQNCg0KLS0tLS1PcmlnaW5h
bCBNZXNzYWdlLS0tLS0NCkZyb206IFJpY2hhcmQgUHVyZGllIFttYWlsdG86cmljaGFyZC5wdXJk
aWVAbGludXhmb3VuZGF0aW9uLm9yZ10NClNlbnQ6IEZyaWRheSwgRmVicnVhcnkgMjQsIDIwMTIg
NjoxOSBQTQ0KVG86IEtoZW0gUmFqDQpDYzogQ2hpbiBIdWF0IEFuZzsgJ3Bva3lAeW9jdG9wcm9q
ZWN0Lm9yZycNClN1YmplY3Q6IFJlOiBbcG9reV0gVXNpbmcgbm9uLWRpc3RybyBnY2MNCg0KT24g
RnJpLCAyMDEyLTAyLTI0IGF0IDAwOjAxIC0wODAwLCBLaGVtIFJhaiB3cm90ZToNCj4gT24gKDIz
LzAyLzEyIDA4OjMxKSwgUmljaGFyZCBQdXJkaWUgd3JvdGU6DQo+ID4gT24gV2VkLCAyMDEyLTAy
LTIyIGF0IDE2OjAwICswODAwLCBDaGluIEh1YXQgQW5nIHdyb3RlOg0KPiA+ID4gTXkgQ2VudG9z
IDUuNuKAmXMgZ2NjIGlzIGEgYml0IG91dGRhdGVkIGFuZCBJ4oCZbSBzZWVpbmcgY29tcGlsZXIg
YnVncw0KPiA+ID4gd2hlbiBjb21waWxpbmcgZWxmdXRpbHMtbmF0aXZlLiBBcyBzdWNoIEnigJl2
ZSByb2xsZWQgbXkgb3duIGdjYyA0LjUuMw0KPiA+ID4gd2l0aCBNUEMvTVBGUi9HTVAgYWxsIGlu
c3RhbGxlZCB0byAvb3B0LCBteSBpbnRlbnRpb24gaXMgdG8gbWFrZSB0aGUNCj4gPiA+IG5ldyB0
b29sY2hhaW4gc2VsZi1jb250YWluZWQgYW5kIHJldXNhYmxlIG9uIG90aGVyIG1hY2hpbmVzL2Rp
c3Ryb3MuDQo+ID4gPg0KPiA+ID4gVGhlIHByb2JsZW0gaXMgdGhhdCwgaW4gb3JkZXIgdG8gdXNl
IHRoaXMgZ2NjIEkgd2lsbCBuZWVkIHRvIHNldA0KPiA+ID4gTERfTElCUkFSWV9QQVRIIHNvIHRo
YXQgaXQgY2FuIHBpY2tzIHVwIE1QQy9NUEZSL0dNUCBmcm9tIC9vcHQuDQo+ID4gPg0KPiA+ID4g
UG9reSBzZWVtcyB0byBhbHdheXMgYnVpbGQgd2l0aCBwcmlzdGluZSBlbnZpcm9ubWVudCAoaS5l
LiBubw0KPiA+ID4gTERfTElCUkFSWV9QQVRIKSwgc28gbXkgbmV3IHRvb2xjaGFpbiBpcyB1bnVz
YWJsZS4gVGhpcyBwcm9ibGVtIHdpbGwNCj4gPiA+IG5vdCBoYXBwZW4gb24gZGlzdHJvIGdjYyBh
cyBNUEMgZXQgYWwgYXJlIGFsd2F5cyBpbnN0YWxsZWQNCj4gPiA+IGluIC91c3IvbGliLg0KPiA+
ID4NCj4gPiA+IElzIHRoZXJlIGEgd2F5IHRvIHRlbGwgUG9reSB0byBzZXQgTERfTElCUkFSWV9Q
QVRIIHdoZW5ldmVyIGl0IHVzZXMNCj4gPiA+IHRoZSBub24tZGlzdHJvIHRvb2xjaGFpbj8gT3Ig
aXMgaXQgdGhlIHJpZ2h0IHRoaW5nIHRvIGRvIGF0IGFsbD8NCj4gPg0KPiA+IFlvdSBjYW4gc2V0
ICJleHBvcnQgTERfTElCUkFSWV9QQVRIPXh4eCIgaW4geW91ciBsb2NhbC5jb25mIGFuZCB0aGF0
DQo+ID4gd2lsbCBtYWtlIGJpdGJha2UgYWx3YXlzIHNldCB0aGUgdmFyaWFibGUuIEknbSBub3Qg
c3VyZSB5b3UgY2FuIGRvIGl0DQo+ID4gZm9yIGp1c3QgdGhlIHRhcmdldCBnY2MuDQo+ID4NCj4g
PiBBbm90aGVyIGFsdGVybmF0aXZlIHdvdWxkIGJlIHRvIHB1dCB3cmFwcGVyIHNjcmlwdHMgYXJv
dW5kIHlvdXINCj4gPiB0b29sY2hhaW4gYmluYXJpZXMgYW5kIGVuc3VyZSB0aGV5IGdldCBmb3Vu
ZCBpbiBQQVRIIGZpcnN0IGFuZCB0aGUNCj4gPiBzY3JpcHRzIHNldHVwIHRoZSBlbnZpcm9ubWVu
dCBjb3JyZWN0bHkuDQo+ID4gPg0KPiA+IEl0cyBjZXJ0YWlubHkgcG9zc2libGUgdG8gbWFrZSB0
aGlzIHdvcmsgYnV0IGl0IG1pZ2h0IHJlcXVpcmUgYSBsaXR0bGUNCj4gPiBiaXQgb2YgZXhwZXJp
bWVudGF0aW9uLiBJJ20gc3VycHJpc2VkIHlvdXIgdG9vbGNoYWluIGRvZXNuJ3Qgc2V0IHRoZQ0K
PiA+IFJQQVRIcyBvZiB0aGUgYmluYXJpZXMgY29ycmVjdGx5IHRvIGZpbmQgdGhlIGxpYnMgaXRz
IGxpbmtlZCB0by4NCj4NCj4gSSB0aGluayBpdCB3b3VsZCBiZSBzYWZlciB0byBwcm92aWRlIGdj
Yy1uYXRpdmUgZm9yIHN1Y2ggY2FzZXMNCg0KV2hpY2ggeW91IHdvdWxkIGNvbXBpbGUgd2l0aCB3
aGF0Pw0KDQpDaGVlcnMsDQoNClJpY2hhcmQNCg0KDQoNCg0KQ29uZmlkZW50aWFsaXR5IE5vdGlj
ZS4NClRoaXMgbWVzc2FnZSBtYXkgY29udGFpbiBpbmZvcm1hdGlvbiB0aGF0IGlzIGNvbmZpZGVu
dGlhbCBvciBvdGhlcndpc2UgcHJvdGVjdGVkIGZyb20gZGlzY2xvc3VyZS4gSWYgeW91IGFyZSBu
b3QgdGhlIGludGVuZGVkIHJlY2lwaWVudCwgeW91IGFyZSBoZXJlYnkgbm90aWZpZWQgdGhhdCBh
bnkgdXNlLCBkaXNjbG9zdXJlLCBkaXNzZW1pbmF0aW9uLCBkaXN0cmlidXRpb24sICBvciBjb3B5
aW5nICBvZiB0aGlzIG1lc3NhZ2UsIG9yIGFueSBhdHRhY2htZW50cywgaXMgc3RyaWN0bHkgcHJv
aGliaXRlZC4gIElmIHlvdSBoYXZlIHJlY2VpdmVkIHRoaXMgbWVzc2FnZSBpbiBlcnJvciwgcGxl
YXNlIGFkdmlzZSB0aGUgc2VuZGVyIGJ5IHJlcGx5IGUtbWFpbCwgYW5kIGRlbGV0ZSB0aGUgbWVz
c2FnZSBhbmQgYW55IGF0dGFjaG1lbnRzLiAgVGhhbmsgeW91Lg0K



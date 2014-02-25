Return-Path: <bevenson@melinkcorp.com>
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1lp0152.outbound.protection.outlook.com [207.46.163.152])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A0D9E0084D
	for <poky@yoctoproject.org>; Tue, 25 Feb 2014 08:28:42 -0800 (PST)
Received: from BLUPR05MB037.namprd05.prod.outlook.com (10.255.210.145) by
	BLUPR05MB257.namprd05.prod.outlook.com (10.141.22.15) with Microsoft
	SMTP Server (TLS) id 15.0.883.10; Tue, 25 Feb 2014 16:28:38 +0000
Received: from BLUPR05MB037.namprd05.prod.outlook.com ([169.254.15.92]) by
	BLUPR05MB037.namprd05.prod.outlook.com ([169.254.15.92]) with mapi id
	15.00.0883.010; Tue, 25 Feb 2014 16:28:38 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [poky] Setup for hot plugging Ethernet
Thread-Index: Ac8vORk8KK7YruPHTpW/QlQUMhOYyAACkNcAAMA14uA=
Date: Tue, 25 Feb 2014 16:28:38 +0000
Message-ID: <ba11cffc684b4f0588b819270e6539b2@BLUPR05MB037.namprd05.prod.outlook.com>
References: <54eef9b1596a474c8b0817db566f492d@BLUPR05MB037.namprd05.prod.outlook.com>
	<CAJTo0LZm5RVV2CNN7w9OyC0=Hk8vVrGL515p4H3sNN_r9iQ9zA@mail.gmail.com>
In-Reply-To: <CAJTo0LZm5RVV2CNN7w9OyC0=Hk8vVrGL515p4H3sNN_r9iQ9zA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 00C220DC0068CC00C22229
x-originating-ip: [98.100.91.242]
x-forefront-prvs: 01334458E5
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009001)(6009001)(199002)(24454002)(51704005)(189002)(13464003)(377454003)(164054003)(77096001)(94946001)(93136001)(47736001)(47976001)(2656002)(50986001)(80976001)(87936001)(49866001)(4396001)(76796001)(66066001)(69226001)(95416001)(74706001)(94316002)(65816001)(76576001)(74876001)(81342001)(54316002)(93516002)(87266001)(51856001)(54356001)(53806001)(63696002)(83322001)(19580395003)(76482001)(56816005)(90146001)(19580405001)(76786001)(46102001)(74662001)(47446002)(79102001)(74502001)(81816001)(59766001)(77982001)(92566001)(74316001)(85306002)(81542001)(85852003)(83072002)(33646001)(31966008)(80022001)(56776001)(74366001)(86362001)(81686001)(95666003)(24736002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BLUPR05MB257;
	H:BLUPR05MB037.namprd05.prod.outlook.com; CLIP:98.100.91.242;
	FPR:AC1DF6A5.4D25F5A.31509343.CAE0627C.20243; PTR:InfoNoRecords;
	A:1; MX:1; LANG:en; 
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Setup for hot plugging Ethernet
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
X-List-Received-Date: Tue, 25 Feb 2014 16:28:43 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Um9zcywNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBCdXJ0b24sIFJv
c3MgW21haWx0bzpyb3NzLmJ1cnRvbkBpbnRlbC5jb21dDQo+IFNlbnQ6IEZyaWRheSwgRmVicnVh
cnkgMjEsIDIwMTQgMzoyOCBQTQ0KPiBUbzogQnJ5YW4gRXZlbnNvbg0KPiBDYzogcG9reUB5b2N0
b3Byb2plY3Qub3JnDQo+IFN1YmplY3Q6IFJlOiBbcG9reV0gU2V0dXAgZm9yIGhvdCBwbHVnZ2lu
ZyBFdGhlcm5ldA0KPiANCj4gT24gMjEgRmVicnVhcnkgMjAxNCAxOToxNCwgQnJ5YW4gRXZlbnNv
biA8YmV2ZW5zb25AbWVsaW5rY29ycC5jb20+DQo+IHdyb3RlOg0KPiA+IEkgYW0gb24gcG9reSBk
eWxhbi05LjAuMSBhbmQgSSBhbSB1c2luZyBhIGN1c3RvbSBpbWFnZSBiYXNlZCB1cG9uIGNvcmUt
DQo+IGltYWdlLW1pbmltYWwgKGNvcmUtaW1hZ2UtbWluaW1hbCB3aXRoIGEgZmV3IGFkZGVkIHBh
Y2thZ2VzKS4gIEknbSB1c2luZw0KPiBzeXN2aW5pdCBhbmQgaW5pdC1pZnVwZG93biBmb3IgbmV0
d29yayBpbnRpYWxpemF0aW9uLiAgV2l0aCB0aGlzIHNldHVwLA0KPiBuZXR3b3JraW5nIHdvcmtz
IGp1c3QgZmluZSBhcyBsb25nIGFzIHRoZSB3aXJlZCBFdGhlcm5ldCBpcyBwbHVnZ2VkIGluIHdo
ZW4NCj4gbXkgc3lzdGVtIGJvb3RzIHVwLiAgSG93ZXZlciwgaG90cGx1Z2dpbmcgdGhlIEV0aGVy
bmV0IGNhYmxlIGRvZXNuJ3QNCj4gd29yazsgaWYgdGhlIGNhYmxlIHdhc24ndCBwbHVnZ2VkIGlu
IG9uIGJvb3R1cCwgSSBuZWVkIHRvIHJlYm9vdCB0byBnZXQgIGENCj4gbmV0d29yayBjb25uZWN0
aW9uLiAgSSdtIGxvb2tpbmcgZm9yIGEgc2ltcGxlIHdheSB0byBmaXggdGhhdC4NCj4gDQo+IA0K
PiBJbnN0ZWFkIG9mIHVzaW5nIGluaXQtaWZ1cGRvd24sIGluc3RhbGwgY29ubm1hbi4gIFRoYXQg
d2lsbCBkbyBldGhlcm5ldA0KPiBob3RwbHVnIChhbmQgYSBsb3QgbW9yZSkgZm9yIHlvdS4NCg0K
SW4gbG9va2luZyB0aHJvdWdoIHRoZSBkb2N1bWVudGF0aW9uIGZvciBjb25ubWFuLCBhbGwgdGhl
IGV4YW1wbGVzIGFwcGVhciB0byBhc3N1bWUgc3lzdGVtZCBpcyB1c2VkIGZvciBpbml0LiAgSSBh
bSBwbGFubmluZyBpbiB0aGUgZnV0dXJlIHRvIG1vdmUgZnJvbSBzeXN2aW5pdCB0byBzeXN0ZW1k
LiAgSW4geW91ciBvcGluaW9uLCB3b3VsZCBpdCBiZSBiZXR0ZXIgdG8gZG8gdGhhdCBiZWZvcmUg
YXR0ZW1wdGluZyB0byB1c2UgY29ubm1hbiwgb3IgaXMgY29ubm1hbiBzZXR1cCByZWxhdGl2ZWx5
IGVhc3kgdW5kZXIgc3lzdmluaXQ/DQoNClRoYW5rcywNCkJyeWFuDQo+IA0KPiBSb3NzDQo=


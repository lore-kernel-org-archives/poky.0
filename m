Return-Path: <Teemu.Keskinarkaus@Maximatecc.com>
Received: from mail1.bemta7.messagelabs.com (mail1.bemta7.messagelabs.com
	[216.82.254.103])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50106E0141B
	for <poky@yoctoproject.org>; Thu, 20 Jun 2013 00:45:37 -0700 (PDT)
Received: from [216.82.254.211:56138] by server-7.bemta-7.messagelabs.com id
	4C/27-09450-F13B2C15; Thu, 20 Jun 2013 07:45:35 +0000
X-Env-Sender: Teemu.Keskinarkaus@Maximatecc.com
X-Msg-Ref: server-7.tower-201.messagelabs.com!1371714335!12849349!1
X-Originating-IP: [207.250.73.122]
X-StarScan-Received: 
X-StarScan-Version: 6.9.6; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 1838 invoked from network); 20 Jun 2013 07:45:35 -0000
Received: from unknown (HELO ammail.actuant.com) (207.250.73.122)
	by server-7.tower-201.messagelabs.com with AES128-SHA encrypted SMTP;
	20 Jun 2013 07:45:35 -0000
Received: from AMDTCEX12.actuant.pri ([fe80::1ff:ff4d:9ac5:22e8]) by
	AMDTCEX11.actuant.pri ([fe80::f86b:7a40:d71b:bb92%21]) with mapi id
	14.02.0342.003; Thu, 20 Jun 2013 02:45:34 -0500
From: "Keskinarkaus, Teemu" <Teemu.Keskinarkaus@Maximatecc.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [poky] Creating library
Thread-Index: Ac5snwom99rGKKbESGy3P3MBnpMK9wAMQ7uAAAfCihD///2vgIAAKvnw
Date: Thu, 20 Jun 2013 07:45:34 +0000
Message-ID: <83DB4EC8FADD45428E3CC4E3664761FD015B2F31@AMDTCEX12.actuant.pri>
References: <83DB4EC8FADD45428E3CC4E3664761FD015B210C@AMDTCEX12.actuant.pri>
	<51C134AB.5030007@mlbassoc.com>
	<83DB4EC8FADD45428E3CC4E3664761FD015B23F8@AMDTCEX12.actuant.pri>
	<1371629261.20823.158.camel@ted>
In-Reply-To: <1371629261.20823.158.camel@ted>
Accept-Language: fi-FI, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.10.100]
x-ems-proccessed: 52bwn4SPvyFdxH+yW9O0UA==
x-ems-stamp: IODl4KQkw8U8DB91xoUbgg==
MIME-Version: 1.0
Subject: Re: Creating library
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
X-List-Received-Date: Thu, 20 Jun 2013 07:45:38 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

U29ycnkgZm9yIHRvcCBwb3N0LCBidXQgdGhpcyBvdXRsb29rIGlzIGhvcnJpYmxlLg0KDQpJdCBz
ZWVtZWQgdGhhdCB0aG9zZSBtaXNzaW5nIGxpYnJhcnkuMS4wLnNvLCBsaWJyYXJ5LjEuc28gZXRj
Li4gbGlua3Mgd2VyZSB0aGUga2V5LiBCeSBhZGRpbmcgdGhlbSB0aGUgbGlicmFyeS5kZWIgLSBw
YWNrYWdlIGdvdCBtYWRlIGNvcnJlY3RseSBhbmQgbGlicmFyeSBpbnN0YWxsZWQgdG8gaW1hZ2Ug
anVzdCBmaW5lLg0KDQpUaGFua3MhDQoNCi1UZWVtdQ0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2Ut
LS0tLQ0KRnJvbTogUmljaGFyZCBQdXJkaWUgW21haWx0bzpyaWNoYXJkLnB1cmRpZUBsaW51eGZv
dW5kYXRpb24ub3JnXQ0KU2VudDogMTkuIGtlc8Oka3V1dGEgMjAxMyAxMTowOA0KVG86IEtlc2tp
bmFya2F1cywgVGVlbXUNCkNjOiBwb2t5QHlvY3RvcHJvamVjdC5vcmcNClN1YmplY3Q6IFJlOiBb
cG9reV0gQ3JlYXRpbmcgbGlicmFyeQ0KDQpPbiBXZWQsIDIwMTMtMDYtMTkgYXQgMDU6NTYgKzAw
MDAsIEtlc2tpbmFya2F1cywgVGVlbXUgd3JvdGU6DQo+IFRoYXQgaGVscGVkIGEgbGl0dGxlLiBO
b3cgdGhlIGJ1aWxkIHByb2Nlc3MgZGlkbid0IGVuZCB3aXRoIGFuIGVycm9yLA0KPiBidXQgdGhl
IGltYWdlIGl0c2VsZiBkb2Vzbid0IGhhdmUgdGhlIGxpYnJhcnkuIEkgdGhpbmsgdGhlIGRlYi1w
YWNrYWdlDQo+IGlzIHVzZWQgdG8gaW5zdGFsbCBzdHVmZiB0byB0aGUgYWN0dWFsIGltYWdlIHRo
YXQgaXMgYmVpbmcgZ2VuZXJhdGVkDQo+IGFuZCBub3QgdGhlIGRpcmVjdG9yeSB0aGF0IGlzIHVu
ZGVyIGJ1aWxkLWRpcmVjdG9yeS4NCj4NCj4gU28sIHJlYWwgZml4IHdvdWxkIGJlIGZpZ3VyZSBv
dXQgc29tZWhvdyBob3cgdG8gZ2V0IHRoZSBsaWJyYXJ5LmRlYiB0bw0KPiBiZSBnZW5lcmF0ZWQg
cHJvcGVybHkgaW5zdGVhZCBqdXN0IHRob3NlIHRob3NlIGRldi9kYmctcGFja2FnZXMuDQo+DQo+
IEkgdHJpZWQgbG9va2luZyBmb3IgZXhhbXBsZSB1bmRlciBwb2t5LCBidXQgbWFqb3JpdHksIGlm
IG5vdCBhbGwsIG9mDQo+IHRoZW0gdXNlIGF1dG90b29scyBzbyB0aGV5IGFyZSBub3QgdGhhdCBt
dWNoIGhlbHAuDQoNCkl0IHNvdW5kcyBsaWtlIHlvdSBuZWVkIGEgRklMRVNfJHtQTn0gKz0gIi9w
bGFjZS9vZi9saWIvZmlsZXMiIHR5cGUgb2YgZXhwcmVzc2lvbiB0byBzaG93IHRoZSBzeXN0ZW0g
d2hpY2ggZmlsZXMgdG8gaW5zdGFsbCBpbnRvIHRoZSBtYWluIHBhY2thZ2UuDQoNCkknbSBndWVz
c2luZyBidXQgcGVyaGFwcyB0aGUgbGlicyB5b3UgZ2VuZXJhdGUgYXJlIHh4eHguc28gZmlsZXMg
YW5kIHRoaXMgaXMgY29uZnVzaW5nIHRoZSBzeXN0ZW0/IFVzdWFsbHkgbGlicyBhcmUgdmVyc2lv
bmVkIGFuZCB0aGUgeC5zbyBpcyBwbGFjZWQgaW50byB0aGUgLWRldiBwYWNrYWdlIHNvIHlvdSds
bCBoYXZlIHRvIGNoYW5nZSB0aGUgZGVmYXVsdCBGSUxFUyB2YXJpYWJsZXMgaWYgeW91IGRvIGhh
dmUgc29tZXRoaW5nIHdoaWNoIGlzIHVudmVyc2lvbmVkLg0KDQpNb3JlIGluZm9ybWF0aW9uIGFi
b3V0IHRoZSBuYW1lcyBvZiB0aGUgZmlsZXMgdGhhdCBhcmVuJ3QgZ2V0dGluZyBtYXRjaGVkIHdv
dWxkIG1ha2UgaXQgZWFzaWVyIHRvIGhlbHAgeW91LiBEaWQgdGhleSBnZXQgaW5zdGFsbGVkIGlu
dG8gdGhlIC1kZXYgcGFja2FnZT8NCg0KQ2hlZXJzLA0KDQpSaWNoYXJkDQoNCg0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18NCg0KQWN0dWFudCBDb3Jwb3JhdGlvbiBFbWFpbCBOb3Rp
Y2UNCg0KVGhpcyBtZXNzYWdlIGlzIGludGVuZGVkIG9ubHkgZm9yIHRoZSB1c2Ugb2YgdGhlIEFk
ZHJlc3NlZSBhbmQgbWF5IGNvbnRhaW4gaW5mb3JtYXRpb24gdGhhdCBpcyBQUklWSUxFR0VEIGFu
ZC9vciBDT05GSURFTlRJQUwuDQpUaGlzIGVtYWlsIGlzIGludGVuZGVkIG9ubHkgZm9yIHRoZSBw
ZXJzb25hbCBhbmQgY29uZmlkZW50aWFsIHVzZSBvZiB0aGUgcmVjaXBpZW50KHMpIG5hbWVkIGFi
b3ZlLiBJZiB0aGUgcmVhZGVyIG9mIHRoaXMgZW1haWwgaXMgbm90IGFuIGludGVuZGVkIHJlY2lw
aWVudCwgeW91IGhhdmUgcmVjZWl2ZWQgdGhpcyBlbWFpbCBpbiBlcnJvciBhbmQgYW55IHJldmll
dywgZGlzc2VtaW5hdGlvbiwgZGlzdHJpYnV0aW9uIG9yIGNvcHlpbmcgaXMgc3RyaWN0bHkgcHJv
aGliaXRlZC4NCklmIHlvdSBoYXZlIHJlY2VpdmVkIHRoaXMgZW1haWwgaW4gZXJyb3IsIHBsZWFz
ZSBub3RpZnkgdGhlIHNlbmRlciBpbW1lZGlhdGVseSBieSByZXR1cm4gbWFpbCBhbmQgcGVybWFu
ZW50bHkgZGVsZXRlIHRoZSBjb3B5IHlvdSByZWNlaXZlZC4NCg0KVGhhbmsgeW91Lg0K


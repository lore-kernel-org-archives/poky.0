Return-Path: <Jose.DiazdeGrenu@digi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6FB53E00D24; Tue,  2 Jan 2018 09:36:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.82.243.203 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.bemta8.messagelabs.com (mail1.bemta8.messagelabs.com
	[216.82.243.203])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88880E00D24
	for <poky@yoctoproject.org>; Tue,  2 Jan 2018 09:36:37 -0800 (PST)
Received: from [216.82.241.196] (using TLSv1.2 with cipher
	DHE-RSA-AES256-GCM-SHA384 (256 bits))
	by server-11.bemta-8.messagelabs.com id B0/4F-06017-423CB4A5;
	Tue, 02 Jan 2018 17:36:36 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrKKsWRWlGSWpSXmKPExsXi5LtOQFflsHe
	Uwac7PBb/H29js5j+bw27A5PHvJOBHu0n+tgCmKJYM/OS8isSWDNWbz3KXnCNp2LN+5WsDYwH
	eLoYuTiEBFYxSrzb/Yepi5ETyFnNKLF6QxlEYjGjxPrFW8ASbALmEtMOH2QBsUUEsiW6FuxhB
	rGFBUIlzkzZwQ4RD5NY0DUHzn76+DZYDYuAisSJ5WvYQGxeAV+JGXc+sUIs+M0kcf/yU7ChnA
	LOEmea28GKGAVkJVaeP80IYjMLiEvcejIf7AgJAQGJJXvOM0PYohIvH/9jhbAVJNo+3QOyOYD
	qNSXW79KHaFWUmNL9kB1ir6DEyZlPWCCeVJNomzOBeQKj6CwkG2YhdM9C0j0LSfcCRpZVjBrF
	qUVlqUW6hmZ6SUWZ6RkluYmZObqGBhZ6uanFxYnpqTmJScV6yfm5mxiBEVTPwMC4g3HCbvdDj
	JIcTEqivDmp3lFCfEn5KZUZicUZ8UWlOanFhxg1ODgEWi6ePMgkxZKXn5eqJMHrdQioTrAoNT
	21Ii0zBxjjMKUSHDxKIrxTDwKleYsLEnOLM9MhUqcYjTmeXJv3l4nj2czXDcxCYJOkxHlVQSY
	JgJRmlObBDYKlnkuMslLCvIwMDAxCPAWpRbmZJajyrxjFORiVhHn5QabwZOaVwO17BXQKE9Ap
	f857gpxSkoiQkmpgXHKmYuYl5p7lK3qazN6djHdQ8X72b/9NwweTteaERIQ2VN5fUvCUa9OWz
	6+u+B7aajlZeUagvfKFlGd5nEpsIic+1nsvSGi5Gj2P9/dcB0nrzWs27V/TKhoVnCwvmXru+5
	+GsBmxEedXfdPdZLFpgfJ3r8dLeWWnFe7qTZSvFO15byngEpfUr8RSnJFoqMVcVJwIAI2pziU
	4AwAA
X-Env-Sender: Jose.DiazdeGrenu@digi.com
X-Msg-Ref: server-16.tower-46.messagelabs.com!1514914595!87172209!1
X-Originating-IP: [66.77.174.16]
X-StarScan-Received: 
X-StarScan-Version: 9.4.45; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 21501 invoked from network); 2 Jan 2018 17:36:36 -0000
Received: from owa.digi.com (HELO MCL-VMS-XCH01.digi.com) (66.77.174.16)
	by server-16.tower-46.messagelabs.com with SMTP;
	2 Jan 2018 17:36:36 -0000
Received: from MTK-SMS-XCH04.digi.com (10.10.8.198) by MCL-VMS-XCH01.digi.com
	(10.5.8.49) with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Tue, 2 Jan 2018 11:36:33 -0600
Received: from DOR-VMS-XCH01.digi.com (10.49.8.98) by MTK-SMS-XCH04.digi.com
	(10.10.8.198) with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Tue, 2 Jan 2018 11:36:33 -0600
Received: from DOR-SMS-XCH01.digi.com ([fe80::894b:3bdc:74ae:6efc]) by
	DOR-VMS-XCH01.digi.com ([::1]) with mapi id 14.03.0361.001;
	Tue, 2 Jan 2018 18:36:31 +0100
From: "Diaz de Grenu, Jose" <Jose.DiazdeGrenu@digi.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [poky] Trying to use python3-pygobject-native to compile
	NetworkManager
Thread-Index: AdOAnHShmPTFPgPkTue0DcyRypmuSADHhkqAAAJ0I9D///FVgP//6GjQgAAh44D//6SpAA==
Date: Tue, 2 Jan 2018 17:36:30 +0000
Message-ID: <0B2EBCD48D33654381E736352034C70C01B40FAF@dor-sms-xch01.digi.com>
References: <0B2EBCD48D33654381E736352034C70C01B37B75@dor-sms-xch01.digi.com>
	<0d223fc9-7b17-4be9-9a60-8cb23375a877@linux.intel.com>
	<0B2EBCD48D33654381E736352034C70C01B3FF67@dor-sms-xch01.digi.com>
	<8bb5a376-ec5b-36ed-5b7a-12d7102879ef@linux.intel.com>
	<0B2EBCD48D33654381E736352034C70C01B40158@dor-sms-xch01.digi.com>
	<e33e41cc-fe8d-36e7-4204-0e690b9aa16c@linux.intel.com>
In-Reply-To: <e33e41cc-fe8d-36e7-4204-0e690b9aa16c@linux.intel.com>
Accept-Language: es-ES, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.101.2.179]
MIME-Version: 1.0
Subject: Re: Trying to use python3-pygobject-native to compile NetworkManager
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
X-List-Received-Date: Tue, 02 Jan 2018 17:36:38 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEFsZXhhbmRlciBLYW5hdmluIFttYWls
dG86YWxleGFuZGVyLmthbmF2aW5AbGludXguaW50ZWwuY29tXSANCg0KDQo+IEkgdGhpbmsgdGhh
dCdzIGNvcnJlY3QgLSB0aGUgb2xkZXIgdmVyc2lvbiBmcm9tIG1ldGEtb2UgZG9lcyBub3QgaGF2
ZSBhIGhhcmQgZmFpbHVyZSBpZiBweWdvYmplY3QgaXNuJ3Qgd29ya2luZy4gSSBjYW4ndCBoZWxw
IHlvdSB3aXRoIHRoZSBlcnJvciBpdHNlbGYgdGhhdCBweXRob24gaXMgcHJpbnRpbmc7IHlvdSBu
ZWVkIHRvIGRpZyBpbnRvIHRoZSBwb2ludCBpbiB0aGUgY29kZSB3aGVyZSBpdCBoYXBwZW5zIGFu
ZCB0YWtlIGl0IGZyb20gdGhlcmUuDQo+DQo+IEdlbmVyYWxseSwgY2FsbGluZyBob3N0IHB5dGhv
biB0byBlc3RhYmxpc2ggKHZpYSBtb2R1bGUgaW1wb3J0KSBpZiBweWdvYmplY3QgaXMgYXZhaWxh
YmxlIGZvciB0aGUgdGFyZ2V0IGlzIGluY29ycmVjdCwgeW91IGNhbiBzaW1wbHkgcGF0Y2ggY29u
ZmlndXJlLmFjIHRvIHJlbW92ZSB0aGUgY2hlY2suIFRoYXQgd291bGRuJ3QgaG93ZXZlciBmaXgg
dGhlIHVuZGVybHlpbmcgcHJvYmxlbSAodGhhdCBvZiBob3N0IHB5Z29iamVjdCBiZWluZyBicm9r
ZW4pLg0KPg0KPiBBbGV4DQoNCkkgZG9uJ3QgcmVhbGx5IGtub3cgaWYgdGhlIHByb2JsZW0gaXMg
dGhlbiB0aGUgY29uZmlndXJlLmFjIGZyb20gTmV0d29ya01hbmFnZXIsIG9yIHRoZSBweWdvYmpl
Y3QgcmVjaXBlIGluIHRoZSBwb2t5IGxheWVyLi4uDQoNCkkgd2FzIGFibGUgdG8gYnVpbGQgTmV0
d29ya01hbmFnZXIgYnkgYWRkaW5nOg0KDQpFWFRSQV9PRUNPTkZfYXBwZW5kID0gIiAtLWRpc2Fi
bGUtaW50cm9zcGVjdGlvbiINCg0KSSB0aGluayBpbnRyb3NwZWN0aW9uIGlzIG9ubHkgdXNlZCB0
byBnZW5lcmF0ZSB0aGUgZG9jdW1lbnRhdGlvbiwgd2hpY2ggSSBkb24ndCBjYXJlIGFib3V0Lg0K
DQpBbnl3YXlzIGl0IHdvdWxkIGJlIG5lYXQgaWYgdGhlIHJlY2lwZSB3b3VsZCBqdXN0IHdvcmsg
YXMgaXQgd2FzLiBJZiBJIGdldCBzb21lIHRpbWUgSSB3aWxsIHRyeSB0byB1bmRlcnN0YW5kIHdo
aWNoIGlzIHRoZSBwcm9ibGVtIGFuZCBtYXliZSBub3RpZnkgdGhlIE5ldHdvcmtNYW5hZ2VyIG1h
aWxpbmcgbGlzdCBpZiB0aGV5IHNob3VsZCBmaXggaXRzIGNvbmZpZ3VyZS5hYw0KDQpUaGFua3Mh
DQo=


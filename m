Return-Path: <Jose.DiazdeGrenu@digi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E71F8E00D91; Tue,  2 Jan 2018 04:55:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.82.251.17 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.bemta12.messagelabs.com (mail1.bemta12.messagelabs.com
	[216.82.251.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85D24E00CBE
	for <poky@yoctoproject.org>; Tue,  2 Jan 2018 04:55:37 -0800 (PST)
Received: from [216.82.249.147] (using TLSv1.2 with cipher
	DHE-RSA-AES256-GCM-SHA384 (256 bits))
	by server-17.bemta-12.messagelabs.com id C7/FE-10763-7418B4A5;
	Tue, 02 Jan 2018 12:55:35 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrDKsWRWlGSWpSXmKPExsXi5LtOQNe90Tv
	KoGm3tMX/x9vYLKb/W8PuwOQx72SgR/uJPrYApijWzLyk/IoE1oyXUzeyFaxlrdixZiNjA+MS
	1i5GLg4hgVWMEtfezYFyVjNK7Dy7mB3CWcwosXjTc8YuRk4ONgFziWmHD7KA2CIC2RJdC/Ywg
	9jCAqESZ6bsYIeIh0ks6JoDZbtJnJy+jg3EZhFQkdg9YwoTiM0r4CvxYuNtqAUNTBJ/brwDW8
	Ap4CzR9ms9mM0oICux8vxpMJtZQFzi1pP5YM0SAgISS/acZ4awRSVePv7HCmErSLR9ugdkcwD
	Va0qs36UP0aooMaX7ITvEXkGJkzOfgN0vJKAm0TZnAvMERtFZSDbMQuiehaR7FpLuBYwsqxg1
	ilOLylKLdE3M9JKKMtMzSnITM3N0DQ2N9HJTi4sT01NzEpOK9ZLzczcxAmOonoGBcQfj1YXRh
	xglOZiURHlzUr2jhPiS8lMqMxKLM+KLSnNSiw8xanBwCLRcPHmQSYolLz8vVUmC93kDUJ1gUW
	p6akVaZg4wymFKJTh4lER4D4GkeYsLEnOLM9MhUqcYLTluPLz+h4njybV5f5k4ns183cAsBDZ
	PSpy3EaRBAKQhozQPbhwsEV1ilJUS5mVkYGAQ4ilILcrNLEGVf8UozsGoJMx7AmQKT2ZeCdzW
	V0AHMQEd9Oe8J8hBJYkIKakGRtHlK4L0M50ynziE+PsETG30Ob/j9Ov1gXPKe1qzdga08UsHH
	cj1eVPQaL+g/IO6DceqUqfgnI6YHsUQmyJ1q4SAzlWbuDayH/6srrrR7dtHT7YTG7r3n/0l8/
	ec09bdl/8tP73pd6Xf2+Xv3dNW75nRxStTLnq4xuDdjsCErDWOX+6aTF1VpcRSnJFoqMVcVJw
	IAJyTfFY/AwAA
X-Env-Sender: Jose.DiazdeGrenu@digi.com
X-Msg-Ref: server-15.tower-29.messagelabs.com!1514897734!80807316!1
X-Originating-IP: [66.77.174.16]
X-StarScan-Received: 
X-StarScan-Version: 9.4.45; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 21755 invoked from network); 2 Jan 2018 12:55:35 -0000
Received: from owa.digi.com (HELO MCL-VMS-XCH01.digi.com) (66.77.174.16)
	by server-15.tower-29.messagelabs.com with SMTP;
	2 Jan 2018 12:55:35 -0000
Received: from MTK-SMS-XCH04.digi.com (10.10.8.198) by MCL-VMS-XCH01.digi.com
	(10.5.8.49) with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Tue, 2 Jan 2018 06:55:31 -0600
Received: from DOR-VMS-XCH01.digi.com (10.49.8.98) by MTK-SMS-XCH04.digi.com
	(10.10.8.198) with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Tue, 2 Jan 2018 06:55:31 -0600
Received: from DOR-SMS-XCH01.digi.com ([fe80::894b:3bdc:74ae:6efc]) by
	DOR-VMS-XCH01.digi.com ([::1]) with mapi id 14.03.0361.001;
	Tue, 2 Jan 2018 13:55:29 +0100
From: "Diaz de Grenu, Jose" <Jose.DiazdeGrenu@digi.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [poky] Trying to use python3-pygobject-native to compile
	NetworkManager
Thread-Index: AdOAnHShmPTFPgPkTue0DcyRypmuSADHhkqAAAJ0I9D///FVgP//6GjQ
Date: Tue, 2 Jan 2018 12:55:28 +0000
Message-ID: <0B2EBCD48D33654381E736352034C70C01B40158@dor-sms-xch01.digi.com>
References: <0B2EBCD48D33654381E736352034C70C01B37B75@dor-sms-xch01.digi.com>
	<0d223fc9-7b17-4be9-9a60-8cb23375a877@linux.intel.com>
	<0B2EBCD48D33654381E736352034C70C01B3FF67@dor-sms-xch01.digi.com>
	<8bb5a376-ec5b-36ed-5b7a-12d7102879ef@linux.intel.com>
In-Reply-To: <8bb5a376-ec5b-36ed-5b7a-12d7102879ef@linux.intel.com>
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
X-List-Received-Date: Tue, 02 Jan 2018 12:55:38 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEFsZXhhbmRlciBLYW5hdmluIFttYWls
dG86YWxleGFuZGVyLmthbmF2aW5AbGludXguaW50ZWwuY29tXSANCg0KPiBBbHNvLCB3aGVyZSBp
cyB0aGUgbmV0d29ya21hbmFnZXIgcmVjaXBlIGZyb20/IG1ldGEtb2UgaGFzIGl0cyBvd24gcmVj
aXBlIGZvciBpdCwgYW5kIGl0IGRvZXMgbm90IG1hdGNoIHdoYXQgeW91IHBvc3RlZCB0byBwYXN0
ZWJpbi4gDQoNCkl0IGlzIGEgY3VzdG9tIHJlY2lwZSwgYXMgSSBuZWVkIHRvIHVzZSBhIG5ld2Vy
IHZlcnNpb24gb2YgTmV0d29ya01hbmFnZXIuIFRoaXMgcmVjaXBlIHdhcyB3b3JraW5nIGZpbmUg
b24gWW9jdG8gMi4yLCBhbmQgSSBzdXNwZWN0IHRoYXQgdGhlIHByb2JsZW0gbWF5IGJlIGluIHRo
ZSBweXRob24zIHBhY2thZ2UsIG5vdCBpbiB0aGUgcmVjaXBlIGl0c2VsZi4NCg0KPiBDYW4geW91
IHRyeSB3aXRoIHRoZSBtZXRhLW9lIHZlcnNpb24/DQoNClRoYXQgb25lIHdvcmtzLg0K


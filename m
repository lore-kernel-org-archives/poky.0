Return-Path: <DFreitag@environics.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7DD6E00718; Wed,  5 Jul 2017 16:16:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from remote.environics.com (remote.environics.com [74.95.20.229])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9ECC3E00349
	for <poky@yoctoproject.org>; Wed,  5 Jul 2017 16:16:18 -0700 (PDT)
Received: from SATURN.env.local ([fe80::84be:b889:2f95:8bff]) by
	SATURN.env.local ([fe80::84be:b889:2f95:8bff%10]) with mapi id
	14.01.0438.000; Wed, 5 Jul 2017 19:16:17 -0400
From: David Freitag <DFreitag@environics.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [poky] [PATCH] meta: Add support for GTK+-3.0 static libraries
Thread-Index: AdL1xdwoiKMl1ecuTDmh/cBVcwLTRwAO0puAAAfQC5A=
Date: Wed, 5 Jul 2017 23:16:15 +0000
Message-ID: <A8809961EB141E4596386C258A901BD70299E8CD80@SATURN.env.local>
References: <A8809961EB141E4596386C258A901BD70299E8CD31@SATURN.env.local>
	<CAJTo0LaOadfQdP8H1cin-Hd9BMPW_h0-q=XJz4A=Pwpf5+2Qvw@mail.gmail.com>
In-Reply-To: <CAJTo0LaOadfQdP8H1cin-Hd9BMPW_h0-q=XJz4A=Pwpf5+2Qvw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.0.36]
x-tm-as-product-ver: SMEX-11.1.0.1278-8.100.1062-23176.005
x-tm-as-result: No--5.997500-5.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] meta: Add support for GTK+-3.0 static libraries
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
X-List-Received-Date: Wed, 05 Jul 2017 23:16:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiBHVEsrIGZvciBtYW55IHllYXJzIGhhcyBleHBsaWNpdGx5IGRpc2FibGVkIHN0YXRpYyBsaWJy
YXJpZXMsIHdoaWNoIGlzIHdoeSB5b3UgbmVlZCB0byBvdmVycmlkZSB0aGF0IGhlcmUuwqAgVGhh
dCBpcyBteSBmaXJzdCBoaW50IHRoYXQgdGhpcyBtYXkgbm90IGJlIHJpZ2h0Lg0KDQpJbnRlcmVz
dGluZy4gR2l2ZW4gdGhpcywgd291bGQgYSBwYXRjaCBvZiB0aGlzIG5hdHVyZSBldmVuIGJlIG1l
cmdlZCB1cHN0cmVhbT8gV291bGQgYSBkaXNhYmxlZC1ieS1kZWZhdWx0IFBBQ0tBR0VDT05GSUcg
YmUgd2VsY29tZT8NCg0KPiAqSWYqIHlvdSB3YW50IHRvIHN1cHBvcnQgYSBzdGF0aWMgYnVpbGQg
b2YgR1RLKyB0aGVuIHRoZXJlIGFyZSB3YXlzIHlvdSBjYW4gbWFrZSBpdCBzb3J0IG9mIHdvcmss
IGJ1dCB0aGlzIGlzIG5vdCBpdC4gIExvb2sgdXAgLS13aXRoLWluY2x1ZGVkLWltbW9kdWxlcywg
LS1kaXNhYmxlLW1vZHVsZXMsIGV0YyBpbiB0aGUgR1RLKyBkb2N1bWVudGF0aW9uLCBhbmQgcGFz
cyB0aG9zZS4gIFlvdSBzaG91bGQgZW5kIHVwIHdpdGggYSBzdGF0aWMgZ3RrKyB3aGljaCBjb250
YWlucyBhbGwgdGhlIGlucHV0IG1ldGhvZCBtb2R1bGVzIGJ1aWx0aW4sIGJ1dCBhcyBmYXIgYXMg
SSBrbm93IHByaW50aW5nIHdpbGwgc3RpbGwgYmUgYnJva2VuLg0KDQpBcyB0aGUgdGFyZ2V0IHN5
c3RlbSBpcyBhbiBlbWJlZGRlZCBkZXZpY2Ugd2l0aG91dCB0aGUgYWJpbGl0eSB0byBwcmludCBp
biB0aGUgZmlyc3QgcGxhY2UsIGxvc2luZyBzdXBwb3J0IGZvciBwcmludCBiYWNrZW5kcyBpcyBh
IG5vbi1pc3N1ZS4gU3VwcG9zaW5nIGEgcGF0Y2ggb2YgdGhpcyBuYXR1cmUgaXMgd2VsY29tZSB1
cHN0cmVhbSwgdGhlcmUgd291bGQgYmUgYSBiaXRiYWtlIHdhcm5pbmcgYWJvdXQgdGhpcyBsYWNr
IG9mIHN1cHBvcnQuDQo=


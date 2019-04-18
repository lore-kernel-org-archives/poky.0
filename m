Return-Path: <AMardegan@luxoft.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91B26E00D50; Wed, 17 Apr 2019 23:46:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [109.166.244.56 listed in list.dnswl.org]
X-Greylist: delayed 902 seconds by postgrey-1.32 at yocto-www;
	Wed, 17 Apr 2019 23:46:22 PDT
Received: from mx01.luxoft.com (mx01.luxoft.com [109.166.244.56])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F008DE00D4A
	for <poky@yoctoproject.org>; Wed, 17 Apr 2019 23:46:22 -0700 (PDT)
X-AuditID: ac1e1338-fe1ff7000001616c-da-5cb819b62017
Received: from ORO-EDGE-02.luxoft.com (oro-edge-02.luxoft.com [172.30.19.22])
	(using TLS with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by mx01.luxoft.com (Symantec Messaging Gateway) with SMTP id
	0A.FC.24940.6B918BC5; Thu, 18 Apr 2019 09:31:18 +0300 (EEST)
Received: from oro-exch-04.luxoft.com (172.25.192.34) by
	oro-edge-02.luxoft.com (172.30.19.22) with Microsoft SMTP Server (TLS)
	id 14.3.408.0; Thu, 18 Apr 2019 09:31:16 +0300
Received: from oro-exch-01.luxoft.com (172.25.192.30) by
	oro-exch-04.luxoft.com (172.25.192.34) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P521) id
	15.1.1466.3; Thu, 18 Apr 2019 09:31:17 +0300
Received: from oro-exch-01.luxoft.com ([fe80::1da3:c392:32fa:ad13]) by
	oro-exch-01.luxoft.com ([fe80::1da3:c392:32fa:ad13%13]) with mapi id
	15.01.1466.003; Thu, 18 Apr 2019 09:31:17 +0300
From: "Mardegan, Alberto" <AMardegan@luxoft.com>
To: Poky Project <poky@yoctoproject.org>
Thread-Topic: XML test runner, or how to override Poky's python code
Thread-Index: AQHU9bBURCEf4fJ5TEubqw46XduTNw==
Date: Thu, 18 Apr 2019 06:31:17 +0000
Message-ID: <8828ebbf-bc9d-3633-b8a7-8ccaa2101733@luxoft.com>
Accept-Language: it-IT, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.19.68]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrLLMWRmVeSWpSXmKPExsWyRk5YTHeb5I4Ygz83FCym/1vD7sDo0X6i
	jy2AMYrLJiU1J7MstUjfLoErY9vJmUwFu3grlra8ZW5g7OHtYuTkkBAwkZgx+RtzFyMXh5DA
	ZiaJOx+PMIEkhAQ2MUpsvsADkfjCKPFl/gIWCGc/o8Sb6bNYQKrYBAwk/u5eywpiiwhoSLR9
	+QtmCwvYS5xb+BIq7iLx48lWRghbT+LE9vPsXYwcHCwCqhIzJzmChHkFbCVmTHrABmIzCshK
	TNi9CKycWUBc4taT+UwQlwpILNlznhnCFpV4+fgfK4StINH5tBFsJLOApsT6XfoQrZYS996s
	YYOwFSWmdD9kh1glKHFy5hMWiB8VJZZ/m880gVFsFpJtsxAmzUIyaRaSSbOQTFrAyLqKUTS/
	KF+3ODdd18BYL6e0Ij+tRC85P3cTIySCLHYwnj6YcoiRiYNTqoGxXuQn/6+pNh9mXJeacoJR
	9OrqFeZ9Cl/5fumm1L5onHSfZb7INAaenykifK8rg6b4XBfv4rT03nwrVE8qOaBlwWepS9LB
	YtLeCwQ32ZV9WCixyil5o3b6Yv5n2UJ7c49kXNHKsLM0Sr622VwnKiDV+/KC19euasy4cayu
	0NhL+uiFCn4nzS4lluKMREMt5qLiRAAve6hDUAIAAA==
Subject: XML test runner, or how to override Poky's python code
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
X-List-Received-Date: Thu, 18 Apr 2019 06:46:24 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <66F3F9E5747A0840ABDF4DDF10CF3558@luxoft.com>
Content-Transfer-Encoding: base64

SGkgdGhlcmUhDQogIFNpbmNlIFlvY3RvICJ0aHVkIiwgdGhlIHRlc3Qgc3VpdGUgbm8gbG9uZ2Vy
IHN1cHBvcnRzIG91dHB1dHRpbmcgdGhlDQp0ZXN0IHJlcG9ydCBpbiBYTUwgZm9ybWF0Lg0KDQpX
aGlsZSBJJ20gbm90IGVzcGVjaWFsbHkgZm9uZCBvZiB0aGF0IGZvcm1hdCwgaXQgaGFkIG9uZSBm
ZWF0dXJlIHdoaWNoDQp3YXMgcXVpdGUgaW1wb3J0YW50IGZvciBvdXIgZnVydGhlciBwcm9jZXNz
aW5nIG9mIHRlc3QgcmVzdWx0czogdGhlDQpzdGRvdXQgZnJvbSB0aGUgdGVzdCB3YXMgY2FwdHVy
ZWQgYW5kIGluY2x1ZGVkIGluIHRoZSB0ZXN0IHJlcG9ydCAobm93DQp0aGUgSlNPTiB0ZXN0IHJl
cG9ydCBvbmx5IGNvbnRhaW5zIHRoZSBzdGRvdXQgYW5kIHN0ZGVyciBmb3IgdGhlIGZhaWxpbmcN
CnRlc3RzKS4NCg0KSXMgaXQgcG9zc2libGUgZnJvbSBhIGxheWVyIHRvIGFsdGVyIHRoZSBpbXBs
ZW1lbnRhdGlvbiBvZiB0aGUNCk9FVGVzdFJ1bm5lciwgc28gdGhhdCB0aGUgYml0YmFrZSB0ZXN0
aW1hZ2UgY29tbWFuZCB3b3VsZCBiZWhhdmUgdGhlIHdheQ0Kd2Ugd2FudCB0bz8NCg0KQ2lhbywN
CiAgQWxiZXJ0bw0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KDQpUaGlzIGUt
bWFpbCBhbmQgYW55IGF0dGFjaG1lbnQocykgYXJlIGludGVuZGVkIG9ubHkgZm9yIHRoZSByZWNp
cGllbnQocykgbmFtZWQgYWJvdmUgYW5kIG90aGVycyB3aG8gaGF2ZSBiZWVuIHNwZWNpZmljYWxs
eSBhdXRob3JpemVkIHRvIHJlY2VpdmUgdGhlbS4gVGhleSBtYXkgY29udGFpbiBjb25maWRlbnRp
YWwgaW5mb3JtYXRpb24uIElmIHlvdSBhcmUgbm90IHRoZSBpbnRlbmRlZCByZWNpcGllbnQsIHBs
ZWFzZSBkbyBub3QgcmVhZCB0aGlzIGVtYWlsIG9yIGl0cyBhdHRhY2htZW50KHMpLiBGdXJ0aGVy
bW9yZSwgeW91IGFyZSBoZXJlYnkgbm90aWZpZWQgdGhhdCBhbnkgZGlzc2VtaW5hdGlvbiwgZGlz
dHJpYnV0aW9uIG9yIGNvcHlpbmcgb2YgdGhpcyBlLW1haWwgYW5kIGFueSBhdHRhY2htZW50KHMp
IGlzIHN0cmljdGx5IHByb2hpYml0ZWQuIElmIHlvdSBoYXZlIHJlY2VpdmVkIHRoaXMgZS1tYWls
IGluIGVycm9yLCBwbGVhc2UgaW1tZWRpYXRlbHkgbm90aWZ5IHRoZSBzZW5kZXIgYnkgcmVwbHlp
bmcgdG8gdGhpcyBlLW1haWwgYW5kIHRoZW4gZGVsZXRlIHRoaXMgZS1tYWlsIGFuZCBhbnkgYXR0
YWNobWVudChzKSBvciBjb3BpZXMgdGhlcmVvZiBmcm9tIHlvdXIgc3lzdGVtLiBUaGFuayB5b3Uu
DQo=

